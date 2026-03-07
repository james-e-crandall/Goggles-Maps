UPDATE NarrativeStories
SET AllowDuplicates = 1
WHERE "Queue" LIKE '%NARRATIVE_GROUP_DISCOVER%';


INSERT INTO Types (Type, Kind)
SELECT NarrativeStories.NarrativeStoryType || "_1_JEC", "KIND_NARRATIVE_STORY"
FROM NarrativeStories
WHERE "Queue" LIKE '%NARRATIVE_GROUP_DISCOVER%';

INSERT INTO NarrativeStoryOverrides (NarrativeStoryType, OverriddenStoryType)
SELECT NarrativeStories.NarrativeStoryType || "_1_JEC", "DISCOVERY_BASE"
FROM NarrativeStories
WHERE "Queue" LIKE '%NARRATIVE_GROUP_DISCOVER%';

INSERT INTO NarrativeStory_Links (FromNarrativeStoryType, ToNarrativeStoryType, Priority, Name, Description)
SELECT NarrativeStories.NarrativeStoryType || "_1_JEC", NarrativeStory_Links.ToNarrativeStoryType, NarrativeStory_Links.Priority, NarrativeStory_Links.Name, NarrativeStory_Links.Description
FROM NarrativeStories
INNER JOIN NarrativeStory_Links 
ON NarrativeStories.NarrativeStoryType = NarrativeStory_Links.FromNarrativeStoryType
WHERE "Queue" LIKE '%NARRATIVE_GROUP_DISCOVER%';

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
SELECT NarrativeStories.NarrativeStoryType || "_1_JEC", 
NarrativeStories.Name,
NarrativeStories.Description,
NarrativeStories.Completion,
NarrativeStories.StoryTitle,
NarrativeStories.Age,
NarrativeStories.RequirementSetId,
NarrativeStories.StartEveryone,
NarrativeStories.FirstOnly,
NarrativeStories.UIActivation,
NarrativeStories.Queue,
NarrativeStories.ForceChoice,
NarrativeStories.Activation
FROM NarrativeStories
WHERE "Queue" LIKE '%NARRATIVE_GROUP_DISCOVER%';







