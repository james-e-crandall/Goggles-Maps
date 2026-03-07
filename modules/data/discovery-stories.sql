UPDATE NarrativeStories
SET AllowDuplicates = 1
WHERE "Queue" LIKE '%NARRATIVE_GROUP_DISCOVER%';

CREATE TABLE TempNarrativeStories AS
SELECT *
FROM NarrativeStories
WHERE "Queue" LIKE '%NARRATIVE_GROUP_DISCOVER%';

-- Types
INSERT INTO Types (Type, Kind)
SELECT TempNarrativeStories.NarrativeStoryType || "_1_JEC", "KIND_NARRATIVE_STORY"
FROM TempNarrativeStories;

INSERT INTO Types (Type, Kind)
SELECT TempNarrativeStories.NarrativeStoryType || "_2_JEC", "KIND_NARRATIVE_STORY"
FROM TempNarrativeStories;

-- NarrativeStoryOverrides
INSERT INTO NarrativeStoryOverrides (NarrativeStoryType, OverriddenStoryType)
SELECT TempNarrativeStories.NarrativeStoryType || "_1_JEC", "DISCOVERY_BASE"
FROM TempNarrativeStories;

INSERT INTO NarrativeStoryOverrides (NarrativeStoryType, OverriddenStoryType)
SELECT TempNarrativeStories.NarrativeStoryType || "_2_JEC", "DISCOVERY_BASE"
FROM TempNarrativeStories;

-- NarrativeStory_Links
INSERT INTO NarrativeStory_Links (FromNarrativeStoryType, ToNarrativeStoryType, Priority, Name, Description)
SELECT TempNarrativeStories.NarrativeStoryType || "_1_JEC", NarrativeStory_Links.ToNarrativeStoryType, NarrativeStory_Links.Priority, NarrativeStory_Links.Name, NarrativeStory_Links.Description
FROM TempNarrativeStories
INNER JOIN NarrativeStory_Links 
ON TempNarrativeStories.NarrativeStoryType = NarrativeStory_Links.FromNarrativeStoryType;

INSERT INTO NarrativeStory_Links (FromNarrativeStoryType, ToNarrativeStoryType, Priority, Name, Description)
SELECT TempNarrativeStories.NarrativeStoryType || "_2_JEC", NarrativeStory_Links.ToNarrativeStoryType, NarrativeStory_Links.Priority, NarrativeStory_Links.Name, NarrativeStory_Links.Description
FROM TempNarrativeStories
INNER JOIN NarrativeStory_Links 
ON TempNarrativeStories.NarrativeStoryType = NarrativeStory_Links.FromNarrativeStoryType;

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
TempNarrativeStories.Activation
FROM TempNarrativeStories;

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
Activation)
SELECT TempNarrativeStories.NarrativeStoryType || "_2_JEC", 
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
TempNarrativeStories.Activation
FROM TempNarrativeStories;

DROP TABLE TempNarrativeStories;








