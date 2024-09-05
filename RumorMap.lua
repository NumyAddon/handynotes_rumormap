local addonName = ...;
--- @class RumorMapNS
local ns = select(2, ...);
local RumorMap = LibStub('AceAddon-3.0'):NewAddon(addonName);

local HandyNotes = LibStub('AceAddon-3.0'):GetAddon('HandyNotes', true);
if not HandyNotes then return; end

local HBD = LibStub('HereBeDragons-2.0');

RumorMap.debug = false;
--@debug@
RumorMap.debug = false;
_G.RumorMap = RumorMap;
--@end-debug@

local function debugPrint(...)
    if not RumorMap.debug then return; end
    print(...);
end

local mapID = 2255; -- Azj-Kahet
local alternateMapIDs = {
    [2255] = true, -- Azj-Kahet
    [2256] = true, -- Azj-Kahet Lower
}
local atlas = 'notoriety-32x32';
local atlasInfo = C_Texture.GetAtlasInfo(atlas);
local iconDefault = {
    icon = atlasInfo.file,
    tCoordLeft = atlasInfo.leftTexCoord,
    tCoordRight = atlasInfo.rightTexCoord,
    tCoordTop = atlasInfo.topTexCoord,
    tCoordBottom = atlasInfo.bottomTexCoord,
};

RumorMap.Pacts = {};
RumorMap.Pacts.QuestIDs = {
    General = 80671,
    Vizier = 80672,
    Weaver = 80670,
};
RumorMap.Pacts.TreasureNames = {
    ['Forgotten Memorial'] = 'General',
    ['Kaheti Excavation'] = 'Vizier',
    ['Weave-Rat Cache'] = 'Weaver',
};
RumorMap.Pacts.TreasureSpellIDs = {
    General = 463375,
    Vizier = 463387,
    Weaver = 463346,
};

local locations = ns.locations;
local questObjectives = ns.questObjectives;
local modifierTrees = ns.modifierTrees;
local modifierEnum = ns.modifierEnum;

--- @class RumorMap_Node
--- @field x number
--- @field y number
--- @field name string
--- @field description string|nil
--- @field areaPoiID number
--- @field questID number|nil
--- @field prevQuestID number|nil
--- @field modifierTreeID number

--- @type table<number, RumorMap_Node[]> # [uiMapID] = list of locations
RumorMap.nodes = {
    [2255] = {},
};
RumorMap.nodes[2256] = RumorMap.nodes[2255];

function RumorMap:OnInitialize()
    for _, pin in ipairs(locations) do
        local x, y = HBD:GetZoneCoordinatesFromWorld(pin.pos1, pin.pos0, mapID);
        if x and y then
            local coord = HandyNotes:getCoord(x, y);
            --- @type RumorMap_Node
            self.nodes[mapID][coord] = {
                name = pin.name,
                description = pin.description,
                areaPoiID = pin.areaPoiID,
                questID = pin.questID,
                prevQuestID = pin.prevQuestID,
                modifierTreeID = pin.modifierTreeID,
                x = x,
                y = y,
            };
        end
    end

    local defaults = {
        profile = {
            iconScale = 1.0,
            iconAlpha = 1.0,
            showTreasures = true,
            showRumors = true,
        },
    };
    self.db = LibStub('AceDB-3.0'):New('HandyNotes_RumorMapDB', defaults, true).profile;

    if (C_AddOns.IsAddOnLoaded('TomTom')) then
        self.isTomTomLoaded = true;
    end
    local increment = CreateCounter(1);
    local options = {
        type = 'group',
        name = 'Rumor Map',
        desc = 'Locations of Rumors and Pact treasures in Azj-Kahet',
        get = function(info) return self.db[info[#info]]; end,
        set = function(info, v) self.db[info[#info]] = v; self:Refresh(); end,
        args = {
            desc = {
                name = 'These settings control the look and feel of the icon.',
                type = 'description',
                order = increment(),
            },
            iconScale = {
                type = 'range',
                name = 'Icon Scale',
                desc = 'The scale of the icons',
                min = 0.25, max = 3, step = 0.01,
                order = increment(),
            },
            iconAlpha = {
                type = 'range',
                name = 'Icon Alpha',
                desc = 'The alpha transparency of the icons',
                min = 0, max = 1, step = 0.01,
                order = increment(),
            },
            showTreasures = {
                type = 'toggle',
                name = 'Show Pact treasures',
                desc = 'Show Pact treasures (requires Crony reputation with your current pact)',
                order = increment(),
            },
            showRumors = {
                type = 'toggle',
                name = 'Show Rumors',
                desc = 'Show Rumors',
                order = increment(),
            },
        },
    };
    HandyNotes:RegisterPluginDB(addonName, self, options);

    C_Timer.NewTicker(2, function()
        self:Refresh();
    end);
end

function RumorMap:GetActivePact()
    for pact, questID in pairs(self.Pacts.QuestIDs) do
        if self:ResolvePlayerOnQuest(questID) or self:ResolvePlayerHasCompletedQuest(questID) then
            return pact;
        end
    end

    return nil;
end

function RumorMap:ResolvePlayerOnQuest(questID, debug)
    if debug then debugPrint('PlayerOnQuest', questID, C_QuestLog.IsOnQuest(questID)); end
    return C_QuestLog.IsOnQuest(questID);
end

function RumorMap:ResolvePlayerHasCompletedQuest(questID, debug)
    if debug then debugPrint('PlayerHasCompletedQuest', questID, C_QuestLog.IsQuestFlaggedCompletedOnAccount(questID)); end
    return C_QuestLog.IsQuestFlaggedCompleted(questID);
end

function RumorMap:ResolvePlayerHasCompletedQuestObjective(objectiveID, debug)
    local objectiveInfo = questObjectives[objectiveID];
    if not objectiveInfo then error('Unknown quest objective ' .. objectiveID); end

    local questID = objectiveInfo.questID;
    local objectiveIndex = objectiveInfo.objectiveIndex;

    -- assumption that completing the quest, is acceptable for completing the quest objective
    if self:ResolvePlayerHasCompletedQuest(questID) then
        if debug then debugPrint('PlayerHasCompletedQuestObjective', questID, objectiveIndex, 'quest true'); end
        return true;
    end

    local displayComplete = false;
    local finished = select(3, GetQuestObjectiveInfo(questID, objectiveIndex, displayComplete));

    if debug then debugPrint('PlayerHasCompletedQuestObjective', questID, objectiveIndex, finished); end
    return finished;
end

function RumorMap:ResolveModifierTree(modifierTreeID, debug)
    local tree = modifierTrees[modifierTreeID];
    if not tree then error('Unknown modifier tree ' .. modifierTreeID); end

    local resolver;
    local type = tree.type;
    if type == modifierEnum.Type.ModifierTree or type == modifierEnum.Type.None then
        resolver = self.ResolveModifierTree;
    elseif type == modifierEnum.Type.PlayerOnQuest then
        resolver = self.ResolvePlayerOnQuest;
    elseif type == modifierEnum.Type.PlayerHasCompletedQuest then
        resolver = self.ResolvePlayerHasCompletedQuest;
    elseif type == modifierEnum.Type.PlayerHasCompletedQuestObjective then
        resolver = self.ResolvePlayerHasCompletedQuestObjective;
    end

    local operator = tree.operator;
    if operator == modifierEnum.Operator.SingleTrue then
        if type == modifierEnum.Type.PlayerHasCompletedQuest then
            if debug then debugPrint('SingleTrue', tree.asset, 'hardcoded true'); end
            -- this is likely to be the quest for treasure/rumor map
            return true;
        end
        if debug then debugPrint('SingleTrue', tree.asset, resolver(self, tree.asset, true)); end
        return resolver(self, tree.asset);
    elseif operator == modifierEnum.Operator.SingleFalse then
        if debug then debugPrint('SingleFalse', tree.asset, not resolver(self, tree.asset, true)); end
        return not resolver(self, tree.asset);
    elseif operator == modifierEnum.Operator.All then
        for _, childID in pairs(tree.children) do
            if debug then debugPrint('All', childID, resolver(self, childID, true)); end
            if not resolver(self, childID) then return false; end
        end
        if debug then debugPrint('All', 'done', true); end
        return true;
    elseif operator == modifierEnum.Operator.Some then
        for _, childID in pairs(tree.children) do
            if debug then debugPrint('Some', childID, resolver(self, childID, true)); end
            if resolver(self, childID) then return true; end
        end
        if debug then debugPrint('Some', 'done', false); end
        return false;
    end

    error('Unknown operator ' .. operator);
end

function RumorMap:ResolvePactTreasure(apoiName, debug)
    local pact = self.Pacts.TreasureNames[apoiName];
    if debug then debugPrint('ResolvePactTreasure', pact, apoiName); end
    if not pact then
        return self.db.showRumors;
    elseif not self.db.showTreasures then
        return false;
    end

    local activePact = self:GetActivePact();
    if pact ~= activePact then
        if debug then debugPrint('ResolvePactTreasure', pact, activePact, false); end
        return false;
    end
    local knowsPactTreasureTrait = IsPlayerSpell(self.Pacts.TreasureSpellIDs[pact]);
    if debug then debugPrint('ResolvePactTreasure', pact, activePact, knowsPactTreasureTrait); end

    return knowsPactTreasureTrait;
end

function RumorMap:CheckAreaPOIIsOnMap(areaPoiID)
    local info = C_AreaPoiInfo.GetAreaPOIInfo(mapID, areaPoiID);

    return not not info;
end

local superTrackedAreaPoiID;
local function iter(t, previousIndex)
    if not t then return nil; end
    local index, value = next(t, previousIndex);
    while index and value do
        --- @type RumorMap_Node
        local node = value;
        local shouldShow = not RumorMap:CheckAreaPOIIsOnMap(node.areaPoiID);
        shouldShow = shouldShow and RumorMap:ResolveModifierTree(node.modifierTreeID);
        shouldShow = shouldShow and (not node.prevQuestID or not RumorMap:ResolvePlayerHasCompletedQuest(node.prevQuestID));
        shouldShow = shouldShow and (not node.questID or not RumorMap:ResolvePlayerHasCompletedQuest(node.questID));
        shouldShow = shouldShow and (RumorMap:ResolvePactTreasure(node.name));

        if (shouldShow or RumorMap.debug) then
            local scaleModifier = superTrackedAreaPoiID == node.areaPoiID and 1.5 or 1.2;

            return index, nil, iconDefault, RumorMap.db.iconScale * scaleModifier, RumorMap.db.iconAlpha * 2;
        end
        index, value = next(t, index);
    end
end
function RumorMap:GetNodes2(uiMapId, isMinimapUpdate)
    if not alternateMapIDs[uiMapId] or isMinimapUpdate then return function() end end

    superTrackedAreaPoiID = nil;
    local type, id = C_SuperTrack.GetSuperTrackedMapPin();
    if type == Enum.SuperTrackingMapPinType.AreaPOI then
        superTrackedAreaPoiID = id;
    end
    return iter, self.nodes[uiMapId], nil
end

function RumorMap.OnClick(mapPin, button, down, mapFile, coord)
    if not down then return; end
    local node = RumorMap.nodes[mapFile][coord];
    if not node then return; end
    if IsAltKeyDown() and RumorMap.isTomTomLoaded then
        TomTom:AddWaypoint(mapFile, node.x, node.y, {
            title = node.name,
            from = addonName,
            persistent = nil,
            minimap = true,
            world = true,
        });
    elseif node.areaPoiID then
        local type, id = C_SuperTrack.GetSuperTrackedMapPin();
        if type == Enum.SuperTrackingMapPinType.AreaPOI and id == node.areaPoiID then
            C_SuperTrack.ClearSuperTrackedMapPin();
        else
            C_SuperTrack.SetSuperTrackedMapPin(Enum.SuperTrackingMapPinType.AreaPOI, node.areaPoiID);
        end
        RumorMap:Refresh();
    end
end

function RumorMap.OnEnter(mapPin, mapFile, coord)
    local node = RumorMap.nodes[mapFile][coord];
    if not node then return; end

    if ( mapPin:GetCenter() > UIParent:GetCenter() ) then
        GameTooltip:SetOwner(mapPin, 'ANCHOR_LEFT');
    else
        GameTooltip:SetOwner(mapPin, 'ANCHOR_RIGHT');
    end

    local text = node.name;
    GameTooltip:SetText(text);

    if node.description then
        GameTooltip:AddLine(node.description, 1, 1, 1, true);
    end
    GameTooltip:AddDoubleLine('AreaPoiID', node.areaPoiID, 1, 1, 1);
    if RumorMap.debug then
        debugPrint('---start---');
        local modifier = RumorMap:ResolveModifierTree(node.modifierTreeID, true);
        debugPrint('---end---');
        local prevquestID = (not node.prevQuestID or not RumorMap:ResolvePlayerHasCompletedQuest(node.prevQuestID));
        local questID = (not node.questID or not RumorMap:ResolvePlayerHasCompletedQuest(node.questID));
        local pactTreasure = RumorMap:ResolvePactTreasure(node.name, true);
        GameTooltip:AddDoubleLine('Modifier', modifier and 'true' or 'false', 1, 1, 1, 1, 1, 1);
        GameTooltip:AddDoubleLine('PrevQuestID', prevquestID and 'true' or 'false', 1, 1, 1, 1, 1, 1);
        GameTooltip:AddDoubleLine('QuestID', questID and 'true' or 'false', 1, 1, 1, 1, 1, 1);
        GameTooltip:AddDoubleLine('PactTreasure', pactTreasure and 'true' or 'false', 1, 1, 1, 1, 1, 1);
    end

    GameTooltip_AddInstructionLine(GameTooltip, 'Click to toggle SuperTrack');
    if RumorMap.isTomTomLoaded then
        GameTooltip_AddInstructionLine(GameTooltip, 'Alt-click to set TomTom waypoint');
    end
    GameTooltip:Show();
end

function RumorMap:OnLeave()
    GameTooltip:Hide()
end

function RumorMap:Refresh()
    HandyNotes:SendMessage('HandyNotes_NotifyUpdate', addonName);
end
