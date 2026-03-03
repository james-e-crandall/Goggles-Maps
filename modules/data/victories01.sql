UPDATE AgeProgressions
SET MaxPoints_Abbreviated = (MaxPoints_Abbreviated + 10 * 1);

UPDATE AgeProgressions
SET MaxPoints_Standard = (MaxPoints_Standard + 10 * 1);

UPDATE AgeProgressions
SET MaxPoints_Long = (MaxPoints_Long + 10 * 1);

-- LEGACY_PATH_ANTIQUITY_SCIENCE
-- UPDATE AgeProgressionMilestones
-- SET RequiredPathPoints = AgeProgressionMilestones.RequiredPathPoints + apm.RequiredPathPoints * 1
-- FROM (SELECT RequiredPathPoints FROM AgeProgressionMilestones
-- WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE'
-- ) AS apm
-- WHERE AgeProgressionEventType != 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- AND LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

-- LEGACY_PATH_ANTIQUITY_CULTURE
-- UPDATE AgeProgressionMilestones
-- SET RequiredPathPoints = AgeProgressionMilestones.RequiredPathPoints + apm.RequiredPathPoints * 1
-- FROM (SELECT RequiredPathPoints FROM AgeProgressionMilestones
-- WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE'
-- ) AS apm
-- WHERE AgeProgressionEventType != 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- AND LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

-- LEGACY_PATH_ANTIQUITY_ECONOMIC
-- UPDATE AgeProgressionMilestones
-- SET RequiredPathPoints = AgeProgressionMilestones.RequiredPathPoints + apm.RequiredPathPoints * 1
-- FROM (SELECT RequiredPathPoints FROM AgeProgressionMilestones
-- WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC'
-- ) AS apm
-- WHERE AgeProgressionEventType != 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- AND LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

-- LEGACY_PATH_ANTIQUITY_MILITARY
-- UPDATE AgeProgressionMilestones
-- SET RequiredPathPoints = AgeProgressionMilestones.RequiredPathPoints + apm.RequiredPathPoints * 1
-- FROM (SELECT RequiredPathPoints FROM AgeProgressionMilestones
-- WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY'
-- ) AS apm
-- WHERE AgeProgressionEventType != 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- AND LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';


-- LEGACY_PATH_ANTIQUITY_SCIENCE
-- UPDATE AgeProgressionMilestones
-- SET RequiredPathPoints = (RequiredPathPoints + 1)
-- WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

-- LEGACY_PATH_ANTIQUITY_CULTURE
-- UPDATE AgeProgressionMilestones
-- SET RequiredPathPoints = (RequiredPathPoints + 1)
-- WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

-- LEGACY_PATH_ANTIQUITY_ECONOMIC
-- UPDATE AgeProgressionMilestones
-- SET RequiredPathPoints = (RequiredPathPoints + 1)
-- WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 5)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 5)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 5)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

--LEGACY_PATH_ANTIQUITY_MILITARY
-- UPDATE AgeProgressionMilestones
-- SET RequiredPathPoints = (RequiredPathPoints + 2)
-- WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

