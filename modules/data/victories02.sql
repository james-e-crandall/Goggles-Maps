UPDATE AgeProgressions
SET MaxPoints_Abbreviated = (MaxPoints_Abbreviated + 20 * 2);

UPDATE AgeProgressions
SET MaxPoints_Standard = (MaxPoints_Standard + 20 * 2);

UPDATE AgeProgressions
SET MaxPoints_Long = (MaxPoints_Long + 20 * 2);

--3
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 0)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';
--3
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';
-- 6
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';
-- 10
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_SCIENCE';

-- LEGACY_PATH_ANTIQUITY_CULTURE
--2
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 0)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';
--2
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';
--4
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';
--7
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 3)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_CULTURE';

-- LEGACY_PATH_ANTIQUITY_ECONOMIC
--7
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 0)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';
--7
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 5)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';
--14
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 6)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';
--20
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 6)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_ECONOMIC';
--LEGACY_PATH_ANTIQUITY_MILITARY
--6
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 0)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';
--6
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 2)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_1a'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';
--9
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 4)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_2'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';
--12
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = (RequiredPathPoints + 4)
WHERE AgeProgressionEventType = 'AGE_PROGRESSION_PLAYER_MILESTONE_3'
and LegacyPathType='LEGACY_PATH_ANTIQUITY_MILITARY';
