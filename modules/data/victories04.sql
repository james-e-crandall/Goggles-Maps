UPDATE AgeProgressions
SET MaxPoints_Abbreviated = (MaxPoints_Abbreviated + 10 * 4);

UPDATE AgeProgressions
SET MaxPoints_Standard = (MaxPoints_Standard + 10 * 4);

UPDATE AgeProgressions
SET MaxPoints_Long = (MaxPoints_Long + 10 * 4);

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 5)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 5)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 10)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1b'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 10)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

-- LEGACY_PATH_ANTIQUITY_CULTURE
-- UPDATE AgeProgressionMilestones
-- SET RequiredPathPoints = (RequiredPathPoints + 1)
-- WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 5)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 5)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 10)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2b'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 10)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

-- LEGACY_PATH_ANTIQUITY_ECONOMIC
-- UPDATE AgeProgressionMilestones
-- SET RequiredPathPoints = (RequiredPathPoints + 1)
-- WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 8)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 8)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 16)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2b'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 16)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

--LEGACY_PATH_ANTIQUITY_MILITARY
-- UPDATE AgeProgressionMilestones
-- SET RequiredPathPoints = (RequiredPathPoints + 2)
-- WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
-- and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 6)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 6)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 12)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2b'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 12)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

