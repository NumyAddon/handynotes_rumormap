SELECT
    CONCAT(
        '    { areaPoiID = ', apoi.ID,
        ', pos0 = ', apoi.Pos_0,
        ', pos1 = ', apoi.Pos_1,
        ', continentID = ', apoi.ContinentID,
        ', modifierTreeID = ', pc.ModifierTreeID,
        ', name = "', apoi.Name_lang, '"',
        IF(apoi.Description_lang IS NOT NULL, CONCAT(', description = "', apoi.Description_lang, '"'), ''),
        IF(pc.CurrQuestID_0 > 0, CONCAT(', questID = ', pc.CurrQuestID_0), ''),
        IF(pc.PrevQuestID_1 > 0, CONCAT(', prevQuestID = ', pc.PrevQuestID_1), ''),
        ' },'
    ) AS data
FROM AreaPOI apoi
LEFT JOIN PlayerCondition pc ON apoi.PlayerConditionID = pc.ID
WHERE
    apoi.UiTextureAtlasMemberID IN (27116) -- rumor icon
    AND apoi.ContinentID = 2601 -- Khaz Algar
    AND apoi.ID != 8053 -- Forging a Pact (hub icon)
#     AND pc.PrevQuestLogic = 0 -- non-0 require a treasure map to spawn, and then get added to your map anyway
ORDER BY apoi.ID
