UPDATE AgeProgressions
SET MaxPoints_Abbreviated = (MaxPoints_Abbreviated + 100);

UPDATE AgeProgressions
SET MaxPoints_Standard = (MaxPoints_Standard + 100);

UPDATE AgeProgressions
SET MaxPoints_Long = (MaxPoints_Long + 100);


-- LEGACY_PATH_ANTIQUITY_SCIENCE
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';
-- LEGACY_PATH_ANTIQUITY_CULTURE
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';
-- LEGACY_PATH_ANTIQUITY_ECONOMIC
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 9)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 9)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 9)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';
-- LEGACY_PATH_ANTIQUITY_MILITARY
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 6)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 6)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 6)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

