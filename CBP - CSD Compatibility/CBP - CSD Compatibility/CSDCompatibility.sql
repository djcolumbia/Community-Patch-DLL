-- Policy Changes

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Patronage[ENDCOLOR] enhances the benefits of City-State friendship and Global Diplomacy.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Adopting Patronage grants:[ENDCOLOR] [NEWLINE] [ICON_BULLET] [ICON_INFLUENCE] Influence with City-States degrades 25% slower than normal. [NEWLINE] [ICON_BULLET] +5 [ICON_INFLUENCE] Influence resting point with City-States. [NEWLINE] [ICON_BULLET] Unlocks building the [COLOR_CYAN]Forbidden Palace[ENDCOLOR].[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Every Patronage policy unlocked grants:[ENDCOLOR] [NEWLINE] [ICON_BULLET] +3 [ICON_INFLUENCE] Influence resting point with City-States.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Adopting all policies in Patronage grants:[ENDCOLOR] [NEWLINE] [ICON_BULLET] +10 [ICON_INFLUENCE] Influence with all known City-States every time you expend a [ICON_GREAT_PEOPLE] Great Person. [NEWLINE] [ICON_BULLET] Allied City-States will occasionally gift you [ICON_GREAT_PEOPLE] Great People.[NEWLINE] [ICON_BULLET] +1 [ICON_CULTURE] Culture from every Specialist.[NEWLINE] [ICON_BULLET] Provides [COLOR_CYAN]1[ENDCOLOR] point (of [COLOR_CYAN]4[ENDCOLOR] required in total) towards unlocking access to Ideologies.[NEWLINE] [ICON_BULLET] Allows for the purchase of [ICON_DIPLOMAT] Great Diplomats with [ICON_PEACE] Faith starting in the Industrial Era.'
WHERE Tag = 'TXT_KEY_POLICY_BRANCH_PATRONAGE_HELP';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Scholasticism[ENDCOLOR][NEWLINE]Earn Great Diplomats 25% faster. All City-States which are [COLOR_POSITIVE_TEXT]Allies[ENDCOLOR] provide a [ICON_RESEARCH] Science bonus equal to 33% of what they produce for themselves.'
WHERE Tag = 'TXT_KEY_POLICY_SCHOLASTICISM_HELP';

UPDATE Policies
SET GreatDiplomatRateModifier = '25'
WHERE Type = 'POLICY_SCHOLASTICISM';
	
-- Building Costs

UPDATE Buildings
SET Cost = '150'
WHERE Type = 'BUILDING_COURT_SCRIBE';

UPDATE Buildings
SET Cost = '200'
WHERE Type = 'BUILDING_CHANCERY';

UPDATE Buildings
SET GoldMaintenance = '2'
WHERE Type = 'BUILDING_CHANCERY';

UPDATE Buildings
SET Cost = '450'
WHERE Type = 'BUILDING_WIRE_SERVICE';

UPDATE Buildings
SET GoldMaintenance = '4'
WHERE Type = 'BUILDING_WIRE_SERVICE';

UPDATE Buildings
SET PrereqTech = 'TECH_INDUSTRIALIZATION'
WHERE Type = 'BUILDING_WIRE_SERVICE';

-- Building Requirement - Printing Press

UPDATE Building_PrereqBuildingClasses
SET NumBuildingNeeded = '1'
WHERE BuildingType = 'BUILDING_PRINTING_PRESS';

-- Building Requirement - Foreign Office

UPDATE Building_PrereqBuildingClasses
SET NumBuildingNeeded = '1'
WHERE BuildingType = 'BUILDING_FOREIGN_OFFICE';

-- Building Requirement - Palace S&C

UPDATE Building_PrereqBuildingClasses
SET NumBuildingNeeded = '1'
WHERE BuildingType = 'BUILDING_PALACE_SCIENCE_CULTURE';

-- Building Requirement - Finance Center

UPDATE Building_PrereqBuildingClasses
SET NumBuildingNeeded = '1'
WHERE BuildingType = 'BUILDING_FINANCE_CENTER';

-- Building Requirement - Ehrenhalle

UPDATE Building_PrereqBuildingClasses
SET NumBuildingNeeded = '1'
WHERE BuildingType = 'BUILDING_EHRENHALLE';

-- Pop Requirement

UPDATE Buildings
SET NationalPopRequired = '20'
WHERE Type = 'BUILDING_COURT_SCRIBE';

-- Pop Requirement

UPDATE Buildings
SET NationalPopRequired = '40'
WHERE Type = 'BUILDING_PRINTING_PRESS';

-- Pop Requirement

UPDATE Buildings
SET NationalPopRequired = '60'
WHERE Type = 'BUILDING_FOREIGN_OFFICE';

-- Pop Requirement

UPDATE Buildings
SET NationalPopRequired = '70'
WHERE Type = 'BUILDING_PALACE_SCIENCE_CULTURE';

-- Pop Requirement

UPDATE Buildings
SET NationalPopRequired = '70'
WHERE Type = 'BUILDING_FINANCE_CENTER';

-- Pop Requirement

UPDATE Buildings
SET NationalPopRequired = '70'
WHERE Type = 'BUILDING_EHRENHALLE';

-- Pop Requirement

UPDATE Buildings
SET NumCityCostMod = '35'
WHERE Type = 'BUILDING_PRINTING_PRESS';

-- Pop Requirement

UPDATE Buildings
SET NumCityCostMod = '35'
WHERE Type = 'BUILDING_FOREIGN_OFFICE';

-- Pop Requirement

UPDATE Buildings
SET NumCityCostMod = '35'
WHERE Type = 'BUILDING_PALACE_SCIENCE_CULTURE';

-- Pop Requirement

UPDATE Buildings
SET NumCityCostMod = '35'
WHERE Type = 'BUILDING_FINANCE_CENTER';

-- Pop Requirement

UPDATE Buildings
SET NumCityCostMod = '35'
WHERE Type = 'BUILDING_EHRENHALLE';

-- TEXT CHANGES

UPDATE Language_en_US
SET Text = 'Requires a national population of at least 20 before it can be built. +1 [ICON_RES_PAPER] Paper. +10% [ICON_PRODUCTION] Production of Diplomatic Units. Can only be constructed in a Capital. [NEWLINE][NEWLINE] +10% of the [ICON_PRODUCTION] Production of the City is added to the current [ICON_PRODUCTION] Production amount every time the city gains a [ICON_CITIZEN] Citizen.'
WHERE Tag = 'TXT_KEY_BUILDING_COURT_SCRIBE_HELP';

UPDATE Language_en_US
SET Text = 'This National Wonder is unique, in that players may only build it in your capital, so long as you have a national population of 20. It gives a small production boost when building diplomatic units in the capital, and one [ICON_RES_PAPER] Paper resource. Build this building if you want to secure a city-state ally or two during the first few eras of the game. The additional [ICON_PRODUCTION] Production granted upon City growth makes it important to build this building early on to maximize the boost.'
WHERE Tag = 'TXT_KEY_BUILDING_COURT_SCRIBE_STRATEGY';

UPDATE Language_en_US
SET Text = 'This National Wonder cannot be built unless the city has a Public School and you have a national population of at least 70. Build this national wonder to receive additional Delegates in the World Congress based on the number of Research Agreements you currently have with other players. You will also receive a large boost to the Culture and Science output of the city where it is built.'
WHERE Tag = 'TXT_KEY_BUILDING_PALACE_SCIENCE_CULTURE_STRATEGY';

UPDATE Language_en_US
SET Text = 'Requires Order. +15% [ICON_CULTURE] Culture and [ICON_RESEARCH] Science in the city where it is built. +2 [ICON_RES_PAPER] Paper. Receive one vote for every [COLOR_POSITIVE_TEXT]Research Agreement[ENDCOLOR] you currently have with other players. [NEWLINE][NEWLINE]Must have built a Public School in the city. Requires a national population of at least 70 before it can be constructed. The cost goes up the more cities there are in the empire.'
WHERE Tag = 'TXT_KEY_BUILDING_PALACE_SCIENCE_CULTURE_HELP';

UPDATE Language_en_US
SET Text = 'This National Wonder cannot be built unless the city has a Military Academy and you have a national population of at least 70. Build this national wonder to receive additional Delegates in the World Congress based on the number of enemy Capitals you have conquered. You will also receive a large boost to the Tourism and Faith output of the city where it is built.'
WHERE Tag = 'TXT_KEY_BUILDING_EHRENHALLE_STRATEGY';

UPDATE Language_en_US
SET Text = 'Requires Autocracy. +15 [ICON_TOURISM] Tourism and +15 [ICON_PEACE] Faith in the city where it is built. +2 [ICON_RES_PAPER] Paper. Receive one vote for every [COLOR_POSITIVE_TEXT]enemy Capital[ENDCOLOR] you control. [NEWLINE][NEWLINE]Must have built a Military Academy in the city. Requires a national population of at least 70 before it can be constructed. The cost goes up the more cities there are in the empire.'
WHERE Tag = 'TXT_KEY_BUILDING_EHRENHALLE_HELP';

UPDATE Language_en_US
SET Text = 'This National Wonder cannot be built unless the city has a Stock Exchange and you have a national population of at least 70. Build this national wonder to receive additional Delegates in the World Congress based on the number of Declaration of Friendships you currently have with other players. You will also receive a large boost to the Food and Gold output of the city where it is built.'
WHERE Tag = 'TXT_KEY_BUILDING_FINANCE_CENTER_STRATEGY';

UPDATE Language_en_US
SET Text = 'Requires Freedom. +15% [ICON_FOOD] Food and [ICON_GOLD] Gold in the city where it is built. +2 [ICON_RES_PAPER] Paper. Receive one vote for every [COLOR_POSITIVE_TEXT]Declaration of Friendship[ENDCOLOR] you currently have with other players. [NEWLINE][NEWLINE]Must have built a Stock Exchange in the city. Requires a national population of at least 70 before it can be constructed. The cost goes up the more cities there are in the empire.'
WHERE Tag = 'TXT_KEY_BUILDING_FINANCE_CENTER_HELP';

UPDATE Language_en_US
SET Text = 'This National Wonder cannot be built unless the city has a Chancery and you have a national population of at least 40. Build it to receive a production speed increase for Diplomatic Units in the city where it is built, increased movement and influence for all your Diplomatic Units and the ability to allow your Diplomatic Units to ignore terrain penalties.'
WHERE Tag = 'TXT_KEY_BUILDING_PRINTING_PRESS_STRATEGY';

UPDATE Language_en_US
SET Text = '+2 [ICON_RES_PAPER] Paper. +20% [ICON_PRODUCTION] Production of Diplomatic Units. All Diplomatic Units receive the [COLOR_POSITIVE_TEXT]Literacy[ENDCOLOR] Promotion.[NEWLINE][NEWLINE]Must have built a Chancery in the City. Requires a national population of at least 40 before it can be constructed. The cost goes up the more cities there are in the empire.'
WHERE Tag = 'TXT_KEY_BUILDING_PRINTING_PRESS_HELP';

UPDATE Language_en_US
SET Text = 'This National Wonder cannot be built unless the city has a Wire Service and you have a national population of at least 60. Build it to receive a production speed increase for Diplomatic Units in the city where it is built, increased movement and influence for all your Diplomatic Units and the ability to send your Diplomatic Units through rival territory without an [COLOR_POSITIVE_TEXT]Open Borders[ENDCOLOR] agreement.'
WHERE Tag = 'TXT_KEY_BUILDING_FOREIGN_OFFICE_STRATEGY';

UPDATE Language_en_US
SET Text = '+2 [ICON_RES_PAPER] Paper. +20% [ICON_PRODUCTION] Production of Diplomatic Units. All Diplomatic Units receive the [COLOR_POSITIVE_TEXT]Diplomatic Immunity[ENDCOLOR] Promotion.[NEWLINE][NEWLINE]Must have built a Wire Service in the City. Requires a national population of at least 60 before it can be constructed. The cost goes up the more cities there are in the empire.'
WHERE Tag = 'TXT_KEY_BUILDING_FOREIGN_OFFICE_HELP';

-- Grand Temple Help Text

UPDATE Language_en_US
SET Text = 'Doubles religious pressure emanating from this City. [NEWLINE][NEWLINE]Must be built in a Holy City. Requires a National Population of at least 35. The cost goes up the more cities there are in the empire.'
WHERE Tag = 'TXT_KEY_BUILDING_GRAND_TEMPLE_HELP';

-- Religious Authority (CSD)

UPDATE Buildings
SET FaithToVotes = '0'
WHERE Type = 'BUILDING_GRAND_TEMPLE';

UPDATE Buildings
SET FaithToVotes = '6'
WHERE Type = 'BUILDING_MAUSOLEUM';

UPDATE Buildings
SET FaithToVotes = '6'
WHERE Type = 'BUILDING_HEAVENLY_THRONE';

UPDATE Buildings
SET FaithToVotes = '6'
WHERE Type = 'BUILDING_GREAT_ALTAR';

UPDATE Buildings
SET FaithToVotes = '6'
WHERE Type = 'BUILDING_RELIQUARY';

UPDATE Buildings
SET FaithToVotes = '6'
WHERE Type = 'BUILDING_DIVINE_COURT';

UPDATE Buildings
SET FaithToVotes = '6'
WHERE Type = 'BUILDING_SACRED_GARDEN';

UPDATE Buildings
SET FaithToVotes = '6'
WHERE Type = 'BUILDING_HOLY_COUNCIL';

UPDATE Buildings
SET FaithToVotes = '6'
WHERE Type = 'BUILDING_BASILICA';

UPDATE Buildings
SET FaithToVotes = '6'
WHERE Type = 'BUILDING_GRAND_OSSUARY';

-- Building Prereq Techs

UPDATE Buildings
SET PrereqTech = 'TECH_RADIO'
WHERE Type = 'BUILDING_FOREIGN_OFFICE';

-- Text for NW Religion

UPDATE Language_en_US
SET Text = 'Gain [ICON_PEACE] Faith when an owned unit is killed in battle. Bonus scales with Era. May only be constructed in a Holy City, and only if at least 20% of the global population follows your Religion. Reduces [ICON_HAPPINESS_3] Religious Division.[NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases city resistance to conversion by 20%. [NEWLINE][NEWLINE]Receive 1 additional Delegate in the World Congress for every 6 cities following your Religion.'
WHERE Tag = 'TXT_KEY_BUILDING_MAUSOLEUM_HELP';

UPDATE Language_en_US
SET Text = 'May only be constructed in a Holy City, and only if at least 20% of the global population follows your Religion. Reduces [ICON_HAPPINESS_3] Religious Division, and allows you to select a Reformation Belief. [NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases city resistance to conversion by 20%. [NEWLINE][NEWLINE]Receive 1 additional Delegate in the World Congress for every 6 cities following your Religion.'
WHERE Tag = 'TXT_KEY_BUILDING_RELIQUARY_HELP';

UPDATE Language_en_US
SET Text = '+15% Military Unit [ICON_PRODUCTION] Production. May only be constructed in a Holy City, and only if at least 20% of the global population follows your Religion. Reduces [ICON_HAPPINESS_3] Religious Division, and allows you to select a Reformation Belief. [NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases city resistance to conversion by 20%. [NEWLINE][NEWLINE]Receive 1 additional Delegate in the World Congress for every 6 cities following your Religion.'
WHERE Tag = 'TXT_KEY_BUILDING_GREAT_ALTAR_HELP';

UPDATE Language_en_US
SET Text = 'May only be constructed in a Holy City, and only if at least 20% of the global population follows your Religion. Reduces [ICON_HAPPINESS_3] Religious Division, and allows you to select a Reformation Belief. [NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases city resistance to conversion by 20%. [NEWLINE][NEWLINE]Receive 1 additional Delegate in the World Congress for every 6 cities following your Religion.'
WHERE Tag = 'TXT_KEY_BUILDING_HEAVENLY_THRONE_HELP';

UPDATE Language_en_US
SET Text = 'May only be constructed in a Holy City, and only if at least 20% of the global population follows your Religion. Reduces [ICON_HAPPINESS_3] Religious Division, and allows you to select a Reformation Belief. [NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases city resistance to conversion by 20%. [NEWLINE][NEWLINE]Receive 1 additional Delegate in the World Congress for every 6 cities following your Religion.'
WHERE Tag = 'TXT_KEY_BUILDING_DIVINE_COURT_HELP';

UPDATE Language_en_US
SET Text = 'May only be constructed in a Holy City, and only if at least 20% of the global population follows your Religion. Reduces [ICON_HAPPINESS_3] Religious Division, and allows you to select a Reformation Belief. [NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases city resistance to conversion by 20%. [NEWLINE][NEWLINE]Receive 1 additional Delegate in the World Congress for every 6 cities following your Religion.'
WHERE Tag = 'TXT_KEY_BUILDING_SACRED_GARDEN_HELP';

UPDATE Language_en_US
SET Text = 'May only be constructed in a Holy City, and only if at least 20% of the global population follows your Religion. Reduces [ICON_HAPPINESS_3] Religious Division, and allows you to select a Reformation Belief. [NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases city resistance to conversion by 20%. [NEWLINE][NEWLINE]Receive 1 additional Delegate in the World Congress for every 6 cities following your Religion.'
WHERE Tag = 'TXT_KEY_BUILDING_HOLY_COUNCIL_HELP';

UPDATE Language_en_US
SET Text = '+4 [ICON_GOLDEN_AGE] Golden Age points. May only be constructed in a Holy City, and only if at least 20% of the global population follows your Religion. Reduces [ICON_HAPPINESS_3] Religious Division, and allows you to select a Reformation Belief. [NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases city resistance to conversion by 20%. [NEWLINE][NEWLINE]Receive 1 additional Delegate in the World Congress for every 6 cities following your Religion.'
WHERE Tag = 'TXT_KEY_BUILDING_APOSTOLIC_PALACE_HELP';

UPDATE Language_en_US
SET Text = 'May only be constructed in a Holy City, and only if at least 20% of the global population follows your Religion. Reduces [ICON_HAPPINESS_3] Religious Division, and allows you to select a Reformation Belief. [NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases city resistance to conversion by 20%. [NEWLINE][NEWLINE]Receive 1 additional Delegate in the World Congress for every 6 cities following your Religion.'
WHERE Tag = 'TXT_KEY_BUILDING_GRAND_OSSUARY_HELP';

-- Sweden Trait 

INSERT INTO Trait_FreePromotionUnitCombats 
(TraitType, UnitCombatType, PromotionType)
SELECT 'TRAIT_DIPLOMACY_GREAT_PEOPLE', 'UNITCOMBAT_DIPLOMACY', 'PROMOTION_NOBEL_LAUREATE';

--Sweden Trait (Bonus Text)
UPDATE Language_en_US
SET Text = 'All Diplomatic Units start with the Nobel Laureate promotion, which grants +25% [ICON_INFLUENCE] Influence from Diplomatic Missions. When declaring friendship, Sweden and friend gain +10% Great Person generation.'
WHERE Tag = 'TXT_KEY_TRAIT_DIPLOMACY_GREAT_PEOPLE';

--Sweden Trait Change
UPDATE Traits
SET GreatPersonGiftInfluence = '0'
WHERE Type = 'TRAIT_DIPLOMACY_GREAT_PEOPLE';