--- @class RumorMapNS
local ns = select(2, ...);

--- @class RumorMap_LocationInfo
--- @field areaPoiID number
--- @field pos0 number
--- @field pos1 number
--- @field continentID number
--- @field modifierTreeID number
--- @field name string
--- @field description string|nil
--- @field questID number|nil
--- @field prevQuestID number|nil


--- generated map of locations
--- @type RumorMap_LocationInfo[]
ns.locations = {
    { areaPoiID = 7962, pos0 = -2090.75000000000, pos1 = -1329.68994140620, continentID = 2601, modifierTreeID = 295155, name = "Wet Work: Death of a Salesman", description = "Collect Perplexing Contraband in the High Hollows.", questID = 81484 },
    { areaPoiID = 7963, pos0 = -1688.65002441410, pos1 = -926.66497802734, continentID = 2601, modifierTreeID = 295155, name = "Wet Work: Tithe to Kill", description = "Collect Sureki Tithes in the Umbral Bazaar and High Hollows.", questID = 81555 },
    { areaPoiID = 7964, pos0 = -2474.37011718750, pos1 = -1548.75000000000, continentID = 2601, modifierTreeID = 295155, name = "Wet Work: Step Into Their Parlor", description = "Collect Sureki Intelligence in the High Hollows.", questID = 81500 },
    { areaPoiID = 7965, pos0 = -1822.66003417970, pos1 = -821.45300292969, continentID = 2601, modifierTreeID = 299621, name = "Dropping Eaves: Spoils of War", description = "Eavesdrop in the Umbral Bazaar." },
    { areaPoiID = 7966, pos0 = -1647.86999511720, pos1 = -839.20599365234, continentID = 2601, modifierTreeID = 299617, name = "Dropping Eaves: Thieving Weave", description = "Eavesdrop in the Umbral Bazaar." },
    { areaPoiID = 7967, pos0 = -2296.37011718750, pos1 = -1547.81994628910, continentID = 2601, modifierTreeID = 299625, name = "Dropping Eaves: Saving the Past", description = "Eavesdrop in the High Hollows." },
    { areaPoiID = 7968, pos0 = -2071.86010742190, pos1 = -1480.19995117190, continentID = 2601, modifierTreeID = 295155, name = "Information Control: The Right Side of History", description = "Rewrite the Sureki Shadecaster in the Umbral Bazaar.", questID = 81473 },
    { areaPoiID = 7969, pos0 = -2150.37011718750, pos1 = -1086.82995605470, continentID = 2601, modifierTreeID = 295155, name = "Information Control: Ansurek's Truth", description = "Rewrite the Sureki Shadecaster in the Burrows.", questID = 81472 },
    { areaPoiID = 7970, pos0 = -2017.64001464840, pos1 = -860.87402343750, continentID = 2601, modifierTreeID = 295155, name = "Information Control: Ascended Intrigue", description = "Rewrite the Sureki Shadecaster in the Umbral Bazaar.", questID = 81499 },
    { areaPoiID = 7971, pos0 = -2800.38989257810, pos1 = -1126.20996093750, continentID = 2601, modifierTreeID = 295155, name = "Infiltration: Production Blocker", description = "Retrieve manifests from the Mutagen Caches in the Transformatory.", questID = 81483 },
    { areaPoiID = 7972, pos0 = -2268.35009765620, pos1 = -2092.39990234380, continentID = 2601, modifierTreeID = 295155, name = "Infiltration: Terror Made Manifest", description = "Retrieve the Maddening Manifest from the Maddening Deep.", questID = 81503 },
    { areaPoiID = 7973, pos0 = -806.34100341797, pos1 = -2618.10009765620, continentID = 2601, modifierTreeID = 295155, name = "Infiltration: Hidden Figures", description = "Retrieve Bundles of Coded Silks from Rak-Ahat.", questID = 81504 },
    { areaPoiID = 7974, pos0 = -2376.78002929690, pos1 = -736.17498779297, continentID = 2601, modifierTreeID = 295155, name = "Bounty: Balaxir the Bully", description = "Execute the sureki loyalist known as Balaxir the Bully in the Burrows.", questID = 81490 },
    { areaPoiID = 7975, pos0 = -2579.59008789060, pos1 = -759.81097412109, continentID = 2601, modifierTreeID = 295155, name = "Bounty: Chitinous Goliath", description = "Bring down the Chitinous Goliath in the Burrows.", questID = 81476 },
    { areaPoiID = 7976, pos0 = -2107.53002929690, pos1 = -177.46699523926, continentID = 2601, modifierTreeID = 295155, name = "Bounty: Zorikal the Patron", description = "Assassinate Zorikal the Patron in the Sacrifice Pits.", questID = 81489 },
    { areaPoiID = 7977, pos0 = 259.57101440430, pos1 = -1838.80004882810, continentID = 2601, modifierTreeID = 295155, name = "Relics of War: Rak-Zakaz", description = "Obtain Kaheti Warblades from Rak-Zakaz.", questID = 81494 },
    { areaPoiID = 7978, pos0 = -542.98602294922, pos1 = 584.99597167969, continentID = 2601, modifierTreeID = 295155, name = "Relics of War: The Ruptured Lake", description = "Retrieve Bloodied Insignias in around the Ruptured Lake.", questID = 81478 },
    { areaPoiID = 7979, pos0 = -1675.54003906250, pos1 = -1525.15002441410, continentID = 2601, modifierTreeID = 295155, name = "Relics of War: The Salien Gutter Conflict", description = "Collect Pristine Kobyss Spears around the Salien Gutters.", questID = 81493 },
    { areaPoiID = 7980, pos0 = -2215.21997070310, pos1 = -836.11499023438, continentID = 2601, modifierTreeID = 295155, name = "Armaments: Arbalests", description = "Sabotage the Unattended Arbalests in the Burrows.", questID = 81491 },
    { areaPoiID = 7981, pos0 = -997.03002929688, pos1 = -1351.02001953120, continentID = 2601, modifierTreeID = 295155, name = "Armaments: Smithing Tools", description = "Sabotage the Sureki Smithing Tools in the Silken Ward.", questID = 81492 },
    { areaPoiID = 7982, pos0 = -2112.05004882810, pos1 = -965.51898193359, continentID = 2601, modifierTreeID = 295155, name = "Armaments: Weaponry", description = "Destroy the crates of Queensguard Weaponry in the Burrows.", questID = 81477 },
    { areaPoiID = 7983, pos0 = -1860.96997070310, pos1 = -688.99298095703, continentID = 2601, modifierTreeID = 295155, name = "Breaking the Phalanx: Threadblades", description = "Slay Loyalist Threadblades in the Skeins and Umbral Bazaar.", questID = 81487 },
    { areaPoiID = 7984, pos0 = -2270.46997070310, pos1 = -371.16198730469, continentID = 2601, modifierTreeID = 295155, name = "Breaking the Phalanx: Schismatic Sages", description = "Slay the Schismatic Sages in the Skeins.", questID = 81488 },
    { areaPoiID = 7985, pos0 = -1935.16003417970, pos1 = -731.03698730469, continentID = 2601, modifierTreeID = 295155, name = "Breaking the Phalanx: Royal Appointees", description = "Slay Ansurek's Royal Apointees in the Skeins.", questID = 81475 },
    { areaPoiID = 7986, pos0 = -1449.38000488280, pos1 = -803.77600097656, continentID = 2601, modifierTreeID = 295155, name = "Wild Reagents: Twitching Gorge", description = "Obtain Writhing Antennae from the Twitching Gorge.", questID = 81498 },
    { areaPoiID = 7987, pos0 = -2205.65991210940, pos1 = -1889.05004882810, continentID = 2601, modifierTreeID = 295155, name = "Wild Reagents: Maddening Deep", description = "Retrieve Fetid Slime Sacs from the Maddening Deep.", questID = 81480 },
    { areaPoiID = 7988, pos0 = -1597.46997070310, pos1 = -1474.56005859380, continentID = 2601, modifierTreeID = 295155, name = "Wild Reagents: Salien Gutters", description = "Retrieve Swollen Kobyss Eyes from the Salien Gutters.", questID = 81497 },
    { areaPoiID = 7989, pos0 = -2084.89990234380, pos1 = -550.52099609375, continentID = 2601, modifierTreeID = 295155, name = "Testing Formulae: Malodorous Philter", description = "Test the Malodorous Philter in the Skeins.", questID = 81502 },
    { areaPoiID = 7990, pos0 = -2089.60009765620, pos1 = -1396.36999511720, continentID = 2601, modifierTreeID = 295155, name = "Testing Formulae: Gelatinous Unguent", description = "Test the Gelatinous Unguent in the High Hollows.", questID = 81482 },
    { areaPoiID = 7991, pos0 = -1771.15002441410, pos1 = -963.76702880859, continentID = 2601, modifierTreeID = 295155, name = "Testing Formulae: Roiling Elixir", description = "Test the Roiling Elixir in the Umbral Bazaar.", questID = 81501 },
    { areaPoiID = 7992, pos0 = -2231.23999023440, pos1 = -409.98800659180, continentID = 2601, modifierTreeID = 295155, name = "Sabotage: Venomancers", description = "Destroy Venomancy Flasks in the Skeins.", questID = 81505 },
    { areaPoiID = 7993, pos0 = -1766.26000976560, pos1 = -793.51300048828, continentID = 2601, modifierTreeID = 295155, name = "Sabotage: Alchemical Instruments", description = "Destroy Alchemical Instruments in the Umbral Bazaar.", questID = 81506 },
    { areaPoiID = 7994, pos0 = -2837.81005859380, pos1 = -1170.56994628910, continentID = 2601, modifierTreeID = 295155, name = "Sabotage: Transformatory Vessels", description = "Destroy Black Blood Vessels in the Transformatory.", questID = 81481 },
    { areaPoiID = 7995, pos0 = -1734.94995117190, pos1 = -1133.23999023440, continentID = 2601, modifierTreeID = 295155, name = "Requisitions: Brightblooms", description = "Forage Crystalline Brightblooms from the Umbral Bazaar.", questID = 81495 },
    { areaPoiID = 7996, pos0 = -2366.01000976560, pos1 = -781.47802734375, continentID = 2601, modifierTreeID = 295155, name = "Requisitions: Fangpetals", description = "Forage Fragrent Fangpetals from the Burrows.", questID = 81496 },
    { areaPoiID = 7997, pos0 = -1721.02001953120, pos1 = -802.53100585938, continentID = 2601, modifierTreeID = 295155, name = "Requisitions: Umbrashrooms", description = "Forage Luminescent Umbrashrooms from the Umbral Bazaar.", questID = 81479 },
    { areaPoiID = 8016, pos0 = -2194.76000976560, pos1 = -2282.86010742190, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 80688 },
    { areaPoiID = 8017, pos0 = -2226.80004882810, pos1 = -1654.20996093750, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 81467 },
    { areaPoiID = 8018, pos0 = -700.26000976563, pos1 = -2020.27001953120, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 81572 },
    { areaPoiID = 8019, pos0 = -385.56799316406, pos1 = 151.98300170898, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 82873 },
    { areaPoiID = 8020, pos0 = -353.83898925781, pos1 = -234.49699401856, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 82874 },
    { areaPoiID = 8021, pos0 = 1037.11999511720, pos1 = -1873.35998535160, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 82875 },
    { areaPoiID = 8022, pos0 = -110.12500000000, pos1 = -2901.09008789060, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 82876 },
    { areaPoiID = 8023, pos0 = -1462.10998535160, pos1 = -2777.26000976560, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 82877 },
    { areaPoiID = 8024, pos0 = -2455.73999023440, pos1 = -2741.14990234380, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 82878 },
    { areaPoiID = 8025, pos0 = -1184.16003417970, pos1 = -864.83197021484, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 82879 },
    { areaPoiID = 8026, pos0 = 219.24699401856, pos1 = -349.19799804688, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 82880 },
    { areaPoiID = 8027, pos0 = -1850.88000488280, pos1 = 139.56399536133, continentID = 2601, modifierTreeID = 284270, name = "Forgotten Memorial", description = "Acolytes of Anub'azal show remembrance by challenging each other to duels in front of these Memorials.", prevQuestID = 82881 },
    { areaPoiID = 8028, pos0 = -2622.21997070310, pos1 = -2039.77001953120, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 81567 },
    { areaPoiID = 8029, pos0 = -2463.43994140620, pos1 = -748.19396972656, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 81569 },
    { areaPoiID = 8030, pos0 = -1145.15002441410, pos1 = -2106.47998046880, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 82863 },
    { areaPoiID = 8031, pos0 = -1867.09997558590, pos1 = -2931.09008789060, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 82864 },
    { areaPoiID = 8032, pos0 = -1297.18005371090, pos1 = -3027.36010742190, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 82865 },
    { areaPoiID = 8033, pos0 = -439.06100463867, pos1 = -2384.41992187500, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 82866 },
    { areaPoiID = 8034, pos0 = -1146.53002929690, pos1 = -1055.47998046880, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 82867 },
    { areaPoiID = 8035, pos0 = -964.95001220703, pos1 = 218.71400451660, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 82868 },
    { areaPoiID = 8036, pos0 = 452.06799316406, pos1 = -1332.45996093750, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 82869 },
    { areaPoiID = 8037, pos0 = 635.11499023438, pos1 = -1965.55004882810, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 82870 },
    { areaPoiID = 8038, pos0 = -615.03100585938, pos1 = 609.30603027344, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 82871 },
    { areaPoiID = 8039, pos0 = -2356.13989257810, pos1 = -1244.93005371090, continentID = 2601, modifierTreeID = 284272, name = "Kaheti Excavation", description = "Executor Nizrek seeks lost artifacts to reignite the keheti's passion for their culture.", prevQuestID = 82872 },
    { areaPoiID = 8040, pos0 = -1604.56994628910, pos1 = -1318.36999511720, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 80559 },
    { areaPoiID = 8041, pos0 = -1952.83996582030, pos1 = -1024.13000488280, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 80579 },
    { areaPoiID = 8042, pos0 = -1008.69000244140, pos1 = -2254.66992187500, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 80580 },
    { areaPoiID = 8043, pos0 = 329.65798950195, pos1 = -537.66802978516, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 82854 },
    { areaPoiID = 8044, pos0 = -246.52799987793, pos1 = -2612.64990234380, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 82855 },
    { areaPoiID = 8045, pos0 = -899.68798828125, pos1 = -1200.64001464840, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 82856 },
    { areaPoiID = 8046, pos0 = -2491.72998046880, pos1 = -2063.71997070310, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 82857 },
    { areaPoiID = 8047, pos0 = -2757.12011718750, pos1 = -1360.78002929690, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 82858 },
    { areaPoiID = 8048, pos0 = -2251.46997070310, pos1 = -313.31900024414, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 82859 },
    { areaPoiID = 8049, pos0 = -416.93200683594, pos1 = 490.04998779297, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 82860 },
    { areaPoiID = 8051, pos0 = 1064.51000976560, pos1 = -1699.81005859380, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 82861 },
    { areaPoiID = 8052, pos0 = -2206.25000000000, pos1 = -1487.78002929690, continentID = 2601, modifierTreeID = 284274, name = "Weave-Rat Cache", description = "Widow Araknai's clever helpers have located parcels hidden away by sureki forces.", prevQuestID = 82862 },
    { areaPoiID = 8101, pos0 = -2247.73950195310, pos1 = -1443.09899902340, continentID = 2601, modifierTreeID = 294379, name = "Rumor Broker" },
    { areaPoiID = 8102, pos0 = -1801.57287597660, pos1 = -424.74652099609, continentID = 2601, modifierTreeID = 294379, name = "Rumor Broker" },
    { areaPoiID = 8103, pos0 = -2255.96533203120, pos1 = -630.69964599609, continentID = 2601, modifierTreeID = 294379, name = "Rumor Broker" },
    { areaPoiID = 8104, pos0 = -2165.17529296880, pos1 = -56.90104293823, continentID = 2601, modifierTreeID = 294379, name = "Rumor Broker" },
    { areaPoiID = 8105, pos0 = -2340.52954101560, pos1 = -353.51562500000, continentID = 2601, modifierTreeID = 294379, name = "Rumor Broker" },
    { areaPoiID = 8106, pos0 = -2218.93579101560, pos1 = -481.86978149414, continentID = 2601, modifierTreeID = 294379, name = "Rumor Broker" },
    { areaPoiID = 8107, pos0 = -2187.75708007810, pos1 = -715.42706298828, continentID = 2601, modifierTreeID = 294379, name = "Rumor Broker" },
    { areaPoiID = 8108, pos0 = -419.22222900391, pos1 = -2857.35595703120, continentID = 2601, modifierTreeID = 294389, name = "Rumor Broker" },
    { areaPoiID = 8109, pos0 = 442.42535400391, pos1 = -1754.27783203120, continentID = 2601, modifierTreeID = 294389, name = "Rumor Broker" },
    { areaPoiID = 8110, pos0 = -708.11633300781, pos1 = -34.52951431274, continentID = 2601, modifierTreeID = 294389, name = "Rumor Broker" },
    { areaPoiID = 8111, pos0 = -1368.34899902340, pos1 = -1275.52258300780, continentID = 2601, modifierTreeID = 294389, name = "Rumor Broker" },
    { areaPoiID = 8112, pos0 = -1902.57641601560, pos1 = -1945.87158203120, continentID = 2601, modifierTreeID = 294384, name = "Rumor Broker" },
    { areaPoiID = 8113, pos0 = -1147.97045898440, pos1 = -774.03302001953, continentID = 2601, modifierTreeID = 294384, name = "Rumor Broker" },
    { areaPoiID = 8114, pos0 = -1863.88891601560, pos1 = -1732.41845703120, continentID = 2601, modifierTreeID = 294384, name = "Rumor Broker" },
    { areaPoiID = 8115, pos0 = -2064.78125000000, pos1 = -2006.25354003910, continentID = 2601, modifierTreeID = 294384, name = "Rumor Broker" },
    { areaPoiID = 8116, pos0 = -1854.00524902340, pos1 = -1213.72229003910, continentID = 2601, modifierTreeID = 294384, name = "Rumor Broker" },
    { areaPoiID = 8117, pos0 = -2249.42700195310, pos1 = -777.83856201172, continentID = 2601, modifierTreeID = 294374, name = "Rumor Broker" },
    { areaPoiID = 8118, pos0 = -2829.68579101560, pos1 = -1231.19445800780, continentID = 2601, modifierTreeID = 294374, name = "Rumor Broker" },
    { areaPoiID = 8119, pos0 = -2292.38208007810, pos1 = -1551.71350097660, continentID = 2601, modifierTreeID = 294374, name = "Rumor Broker" },
    { areaPoiID = 8120, pos0 = -1859.21533203120, pos1 = -1003.80902099610, continentID = 2601, modifierTreeID = 294374, name = "Rumor Broker" },
    { areaPoiID = 8121, pos0 = -2341.82812500000, pos1 = -1595.14062500000, continentID = 2601, modifierTreeID = 294374, name = "Rumor Broker" },
    { areaPoiID = 8122, pos0 = -2250.45654296880, pos1 = -1330.90283203120, continentID = 2601, modifierTreeID = 294374, name = "Rumor Broker" },
    { areaPoiID = 8123, pos0 = -2187.42700195310, pos1 = -898.77429199219, continentID = 2601, modifierTreeID = 294374, name = "Rumor Broker" },
    { areaPoiID = 8124, pos0 = -2198.43408203120, pos1 = -1020.14410400390, continentID = 2601, modifierTreeID = 294369, name = "Rumor Broker" },
    { areaPoiID = 8125, pos0 = -2617.83325195310, pos1 = -892.03820800781, continentID = 2601, modifierTreeID = 294369, name = "Rumor Broker" },
    { areaPoiID = 8126, pos0 = -2261.67895507810, pos1 = -865.19097900391, continentID = 2601, modifierTreeID = 294369, name = "Rumor Broker" },
    { areaPoiID = 8127, pos0 = -2012.31250000000, pos1 = -1153.39062500000, continentID = 2601, modifierTreeID = 294369, name = "Rumor Broker" },
    { areaPoiID = 8128, pos0 = -2053.58520507810, pos1 = -1025.07287597660, continentID = 2601, modifierTreeID = 294369, name = "Rumor Broker" },
    { areaPoiID = 8129, pos0 = -2142.38549804690, pos1 = -875.23614501953, continentID = 2601, modifierTreeID = 294369, name = "Rumor Broker" },
    { areaPoiID = 8130, pos0 = -1985.95483398440, pos1 = -999.28643798828, continentID = 2601, modifierTreeID = 294364, name = "Rumor Broker" },
    { areaPoiID = 8131, pos0 = -1772.40795898440, pos1 = -1223.12158203120, continentID = 2601, modifierTreeID = 294364, name = "Rumor Broker" },
    { areaPoiID = 8132, pos0 = -1941.63891601560, pos1 = -1371.44787597660, continentID = 2601, modifierTreeID = 294364, name = "Rumor Broker" },
    { areaPoiID = 8133, pos0 = -1791.88891601560, pos1 = -678.96704101563, continentID = 2601, modifierTreeID = 294364, name = "Rumor Broker" },
    { areaPoiID = 8134, pos0 = -1587.81604003910, pos1 = -831.45489501953, continentID = 2601, modifierTreeID = 294364, name = "Rumor Broker" },
    { areaPoiID = 8135, pos0 = -1681.51220703120, pos1 = -991.87677001953, continentID = 2601, modifierTreeID = 294364, name = "Rumor Broker" },
    { areaPoiID = 8136, pos0 = -1699.58850097660, pos1 = -931.69616699219, continentID = 2601, modifierTreeID = 294364, name = "Rumor Broker" },
};

ns.modifierEnum = {
    Type = { -- 73=ModifierTree, 84=PlayerOnQuest, 110=PlayerHasCompletedQuest, 112=PlayerHasCompletedQuestObjective
        None = 0,
        ModifierTree = 73,
        PlayerOnQuest = 84,
        PlayerHasCompletedQuest = 110,
        PlayerHasCompletedQuestObjective = 112,
    },
    Operator = {-- 2=singleTrue, 3=singleFalse, 4=all, 8=some
        SingleTrue = 2,
        SingleFalse = 3,
        All = 4,
        Some = 8,
    },
};

--- manually created map of quest objectives, see https://wago.tools/db2/QuestObjective
--- @type table<number, { questID: number, objectiveIndex: number }> # [questObjectiveID] = objectiveInfo; objectiveIndex = orderIndex+1
ns.questObjectives = {
    [451053] = { questID = 81470, objectiveIndex = 1 },
    [448273] = { questID = 80573, objectiveIndex = 1 },
    [448281] = { questID = 81471, objectiveIndex = 1 },
};

--- generated map of modifier trees
--- @type table<number, { parent: number|nil, children: number[]|nil, operator: number, type: number, asset: number }> # [modifierTreeID] = modifierTreeInfo
ns.modifierTrees = {
    [284270] = { children = {}, operator = 8, type = 0, asset = 0 },
    [284271] = { parent = 284270, operator = 2, type = 110, asset = 80545 },
    [284272] = { children = {}, operator = 8, type = 0, asset = 0 },
    [284273] = { parent = 284272, operator = 2, type = 110, asset = 80546 },
    [284274] = { children = {}, operator = 8, type = 0, asset = 0 },
    [284275] = { parent = 284274, operator = 2, type = 110, asset = 80544 },
    [294364] = { children = {}, operator = 4, type = 0, asset = 0 },
    [294365] = { parent = 294364, operator = 3, type = 110, asset = 82640 },
    [294368] = { parent = 294364, operator = 2, type = 110, asset = 82641 },
    [294369] = { children = {}, operator = 4, type = 0, asset = 0 },
    [294370] = { parent = 294369, operator = 3, type = 110, asset = 82644 },
    [294372] = { parent = 294369, operator = 2, type = 110, asset = 82645 },
    [294374] = { children = {}, operator = 4, type = 0, asset = 0 },
    [294375] = { parent = 294374, operator = 3, type = 110, asset = 82581 },
    [294378] = { parent = 294374, operator = 2, type = 110, asset = 82643 },
    [294379] = { children = {}, operator = 4, type = 0, asset = 0 },
    [294380] = { parent = 294379, operator = 3, type = 110, asset = 82642 },
    [294382] = { parent = 294379, operator = 2, type = 110, asset = 82616 },
    [294384] = { children = {}, operator = 4, type = 0, asset = 0 },
    [294385] = { parent = 294384, operator = 3, type = 110, asset = 82648 },
    [294388] = { parent = 294384, operator = 2, type = 110, asset = 82649 },
    [294389] = { children = {}, operator = 4, type = 0, asset = 0 },
    [294390] = { parent = 294389, operator = 3, type = 110, asset = 82646 },
    [294393] = { parent = 294389, operator = 2, type = 110, asset = 82647 },
    [295155] = { children = {}, operator = 8, type = 0, asset = 0 },
    [295156] = { parent = 295155, operator = 2, type = 110, asset = 80544 },
    [295157] = { parent = 295155, operator = 2, type = 110, asset = 80546 },
    [295158] = { parent = 295155, operator = 2, type = 110, asset = 80545 },
    [295559] = { parent = 284270, operator = 2, type = 84, asset = 80671 },
    [295580] = { parent = 284274, operator = 2, type = 84, asset = 80670 },
    [295581] = { parent = 284272, operator = 2, type = 84, asset = 80672 },
    [295591] = { parent = 295155, operator = 2, type = 84, asset = 80670 },
    [295592] = { parent = 295155, operator = 2, type = 84, asset = 80671 },
    [295593] = { parent = 295155, operator = 2, type = 84, asset = 80672 },
    [297381] = { parent = 294364, operator = 2, type = 73, asset = 295155 },
    [297383] = { parent = 294369, operator = 2, type = 73, asset = 295155 },
    [297385] = { parent = 294374, operator = 2, type = 73, asset = 295155 },
    [297387] = { parent = 294384, operator = 2, type = 73, asset = 295155 },
    [297389] = { parent = 294389, operator = 2, type = 73, asset = 295155 },
    [297391] = { parent = 294379, operator = 2, type = 73, asset = 295155 },
    [299617] = { children = {}, operator = 4, type = 0, asset = 0 },
    [299618] = { parent = 299617, operator = 2, type = 73, asset = 295155 },
    [299619] = { parent = 299617, operator = 2, type = 84, asset = 81470 },
    [299620] = { parent = 299617, operator = 3, type = 112, asset = 451053 },
    [299621] = { children = {}, operator = 4, type = 0, asset = 0 },
    [299622] = { parent = 299621, operator = 2, type = 73, asset = 295155 },
    [299623] = { parent = 299621, operator = 2, type = 84, asset = 80573 },
    [299624] = { parent = 299621, operator = 3, type = 112, asset = 448273 },
    [299625] = { children = {}, operator = 4, type = 0, asset = 0 },
    [299626] = { parent = 299625, operator = 2, type = 73, asset = 295155 },
    [299627] = { parent = 299625, operator = 2, type = 84, asset = 81471 },
    [299628] = { parent = 299625, operator = 3, type = 112, asset = 448281 },
};

for id, tree in pairs(ns.modifierTrees) do
    if tree.parent then
        local parent = ns.modifierTrees[tree.parent];
        if not parent.children then
            parent.children = {};
        end
        table.insert(parent.children, id);
    end
end
