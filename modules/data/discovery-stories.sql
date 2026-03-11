CREATE TABLE TempNarrativeStories AS
SELECT *
FROM NarrativeStories
WHERE "Queue" LIKE '%NARRATIVE_GROUP_DISCOVER%';

CREATE TABLE FromNarrativeStoryType AS
SELECT ToNarrativeStoryType
FROM NarrativeStories
INNER JOIN NarrativeStory_Links 
ON NarrativeStories.NarrativeStoryType = NarrativeStory_Links.FromNarrativeStoryType
WHERE "Queue" LIKE '%NARRATIVE_GROUP_DISCOVER%';

INSERT INTO TempNarrativeStories
SELECT NarrativeStories.*
FROM NarrativeStories
INNER JOIN FromNarrativeStoryType 
ON NarrativeStories.NarrativeStoryType = FromNarrativeStoryType.ToNarrativeStoryType;

-- Types
INSERT INTO Types (Type, Kind)
SELECT TempNarrativeStories.NarrativeStoryType || "_1_JEC", "KIND_NARRATIVE_STORY"
FROM TempNarrativeStories;

-- INSERT INTO Types (Type, Kind)
-- SELECT TempNarrativeStories.NarrativeStoryType || "_2_JEC", "KIND_NARRATIVE_STORY"
-- FROM TempNarrativeStories;

-- NarrativeStoryOverrides
INSERT INTO NarrativeStoryOverrides (NarrativeStoryType, OverriddenStoryType)
SELECT TempNarrativeStories.NarrativeStoryType || "_1_JEC", "DISCOVERY_BASE"
FROM TempNarrativeStories
WHERE TempNarrativeStories.Queue LIKE '%NARRATIVE_GROUP_DISCOVER%';

-- INSERT INTO NarrativeStoryOverrides (NarrativeStoryType, OverriddenStoryType)
-- SELECT TempNarrativeStories.NarrativeStoryType || "_2_JEC", "DISCOVERY_BASE"
-- FROM TempNarrativeStories
-- WHERE TempNarrativeStories.Queue LIKE '%NARRATIVE_GROUP_DISCOVER%';

-- NarrativeStory_Links
INSERT INTO NarrativeStory_Links (FromNarrativeStoryType, ToNarrativeStoryType, Priority, Imperative, Name, Description)
SELECT TempNarrativeStories.NarrativeStoryType || "_1_JEC", NarrativeStory_Links.ToNarrativeStoryType || "_1_JEC", NarrativeStory_Links.Priority, NarrativeStory_Links.Imperative, NarrativeStory_Links.Name, NarrativeStory_Links.Description
FROM TempNarrativeStories
INNER JOIN NarrativeStory_Links 
ON TempNarrativeStories.NarrativeStoryType = NarrativeStory_Links.FromNarrativeStoryType
WHERE TempNarrativeStories.Queue LIKE '%NARRATIVE_GROUP_DISCOVER%';

-- INSERT INTO NarrativeStory_Links (FromNarrativeStoryType, ToNarrativeStoryType, Priority, Imperative, Name, Description)
-- SELECT TempNarrativeStories.NarrativeStoryType || "_2_JEC", NarrativeStory_Links.ToNarrativeStoryType || "_2_JEC", NarrativeStory_Links.Priority, NarrativeStory_Links.Imperative, NarrativeStory_Links.Name, NarrativeStory_Links.Description
-- FROM TempNarrativeStories
-- INNER JOIN NarrativeStory_Links 
-- ON TempNarrativeStories.NarrativeStoryType = NarrativeStory_Links.FromNarrativeStoryType
-- WHERE TempNarrativeStories.Queue LIKE '%NARRATIVE_GROUP_DISCOVER%';

--NarrativeRewards
INSERT INTO NarrativeRewards (NarrativeRewardType, ModifierID)
SELECT NarrativeRewards.NarrativeRewardType || "_1_JEC", NarrativeRewards.ModifierID
FROM NarrativeRewards
INNER JOIN NarrativeStory_Rewards  
ON NarrativeRewards.NarrativeRewardType = NarrativeStory_Rewards.NarrativeRewardType
INNER JOIN TempNarrativeStories 
ON NarrativeStory_Rewards.NarrativeStoryType = TempNarrativeStories.NarrativeStoryType
WHERE NarrativeStory_Rewards.NarrativeRewardType!="DISCOVERY_BASE_REWARD"
GROUP BY NarrativeRewards.NarrativeRewardType, NarrativeRewards.ModifierID;

-- INSERT INTO NarrativeRewards (NarrativeRewardType, ModifierID)
-- SELECT NarrativeRewards.NarrativeRewardType || "_2_JEC", NarrativeRewards.ModifierID
-- FROM NarrativeRewards
-- INNER JOIN NarrativeStory_Rewards  
-- ON NarrativeRewards.NarrativeRewardType = NarrativeStory_Rewards.NarrativeRewardType
-- INNER JOIN TempNarrativeStories 
-- ON NarrativeStory_Rewards.NarrativeStoryType = TempNarrativeStories.NarrativeStoryType
-- WHERE NarrativeStory_Rewards.NarrativeRewardType!="DISCOVERY_BASE_REWARD"
-- GROUP BY NarrativeRewards.NarrativeRewardType, NarrativeRewards.ModifierID;

--NarrativeStory_Rewards
INSERT INTO NarrativeStory_Rewards (NarrativeStoryType, NarrativeRewardType, Activation, BonusEligible)
SELECT TempNarrativeStories.NarrativeStoryType || "_1_JEC", NarrativeStory_Rewards.NarrativeRewardType, NarrativeStory_Rewards.Activation, NarrativeStory_Rewards.BonusEligible
FROM NarrativeStory_Rewards
INNER JOIN TempNarrativeStories 
ON NarrativeStory_Rewards.NarrativeStoryType = TempNarrativeStories.NarrativeStoryType
WHERE NarrativeStory_Rewards.NarrativeRewardType="DISCOVERY_BASE_REWARD";

INSERT INTO NarrativeStory_Rewards (NarrativeStoryType, NarrativeRewardType, Activation, BonusEligible)
SELECT TempNarrativeStories.NarrativeStoryType || "_1_JEC", NarrativeStory_Rewards.NarrativeRewardType || "_1_JEC", NarrativeStory_Rewards.Activation, NarrativeStory_Rewards.BonusEligible
FROM NarrativeStory_Rewards
INNER JOIN TempNarrativeStories 
ON NarrativeStory_Rewards.NarrativeStoryType = TempNarrativeStories.NarrativeStoryType
WHERE NarrativeStory_Rewards.NarrativeRewardType!="DISCOVERY_BASE_REWARD";

-- INSERT INTO NarrativeStory_Rewards (NarrativeStoryType, NarrativeRewardType, Activation, BonusEligible)
-- SELECT TempNarrativeStories.NarrativeStoryType || "_2_JEC", NarrativeStory_Rewards.NarrativeRewardType, NarrativeStory_Rewards.Activation, NarrativeStory_Rewards.BonusEligible
-- FROM NarrativeStory_Rewards
-- INNER JOIN TempNarrativeStories 
-- ON NarrativeStory_Rewards.NarrativeStoryType = TempNarrativeStories.NarrativeStoryType
-- WHERE NarrativeStory_Rewards.NarrativeRewardType="DISCOVERY_BASE_REWARD";

-- INSERT INTO NarrativeStory_Rewards (NarrativeStoryType, NarrativeRewardType, Activation, BonusEligible)
-- SELECT TempNarrativeStories.NarrativeStoryType || "_2_JEC", NarrativeStory_Rewards.NarrativeRewardType || "_2_JEC", NarrativeStory_Rewards.Activation, NarrativeStory_Rewards.BonusEligible
-- FROM NarrativeStory_Rewards
-- INNER JOIN TempNarrativeStories 
-- ON NarrativeStory_Rewards.NarrativeStoryType = TempNarrativeStories.NarrativeStoryType
-- WHERE NarrativeStory_Rewards.NarrativeRewardType!="DISCOVERY_BASE_REWARD";



-- NarrativeStories
INSERT INTO NarrativeStories (NarrativeStoryType, 
Name,
Description,
Completion,
StoryTitle,
Age,
RequirementSetId,
StartEveryone,
FirstOnly,
UIActivation,
Queue,
ForceChoice,
Hidden,
Activation)
SELECT TempNarrativeStories.NarrativeStoryType || "_1_JEC", 
TempNarrativeStories.Name,
TempNarrativeStories.Description,
TempNarrativeStories.Completion,
TempNarrativeStories.StoryTitle,
TempNarrativeStories.Age,
TempNarrativeStories.RequirementSetId,
TempNarrativeStories.StartEveryone,
TempNarrativeStories.FirstOnly,
TempNarrativeStories.UIActivation,
TempNarrativeStories.Queue,
TempNarrativeStories.ForceChoice,
TempNarrativeStories.Hidden,
TempNarrativeStories.Activation
FROM TempNarrativeStories;

-- INSERT INTO NarrativeStories (NarrativeStoryType, 
-- Name,
-- Description,
-- Completion,
-- StoryTitle,
-- Age,
-- RequirementSetId,
-- StartEveryone,
-- FirstOnly,
-- UIActivation,
-- Queue,
-- ForceChoice,
-- Hidden,
-- Activation)
-- SELECT TempNarrativeStories.NarrativeStoryType || "_2_JEC", 
-- TempNarrativeStories.Name,
-- TempNarrativeStories.Description,
-- TempNarrativeStories.Completion,
-- TempNarrativeStories.StoryTitle,
-- TempNarrativeStories.Age,
-- TempNarrativeStories.RequirementSetId,
-- TempNarrativeStories.StartEveryone,
-- TempNarrativeStories.FirstOnly,
-- TempNarrativeStories.UIActivation,
-- TempNarrativeStories.Queue,
-- TempNarrativeStories.ForceChoice,
-- TempNarrativeStories.Hidden,
-- TempNarrativeStories.Activation
-- FROM TempNarrativeStories;

DROP TABLE TempNarrativeStories;
DROP TABLE FromNarrativeStoryType;









