UPDATE AgeProgressions
SET MaxPoints_Abbreviated = (MaxPoints_Abbreviated + 60);

UPDATE AgeProgressions
SET MaxPoints_Standard = (MaxPoints_Standard + 60);

UPDATE AgeProgressions
SET MaxPoints_Long = (MaxPoints_Long + 60);

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

