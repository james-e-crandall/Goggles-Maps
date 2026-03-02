-- UPDATE AgeProgressions
-- SET MaxPoints_Abbreviated = MaxPoints_Abbreviated * 2;

-- UPDATE AgeProgressions
-- SET MaxPoints_Standard = MaxPoints_Standard * 2;

-- UPDATE AgeProgressions
-- SET MaxPoints_Long = MaxPoints_Long * 2;

-- UPDATE RequirementArguments
-- SET Value = Value * 2;


-- AGE_PROGRESSION_PLAYER_MILESTONE_1
-- AGE_PROGRESSION_PLAYER_MILESTONE_2
-- AGE_PROGRESSION_PLAYER_MILESTONE_3


UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';

