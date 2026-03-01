INSERT INTO Types (Type, Kind)
SELECT NarrativeStories.NarrativeStoryType || "_1_JEC", "KIND_NARRATIVE_STORY"
FROM NarrativeStories
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

INSERT INTO Types (Type, Kind)
SELECT NarrativeStories.NarrativeStoryType || "_2_JEC", "KIND_NARRATIVE_STORY"
FROM NarrativeStories
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
SELECT NarrativeStories.NarrativeStoryType || "_2_JEC", 
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






