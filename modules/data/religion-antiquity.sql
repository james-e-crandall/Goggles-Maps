/*
DROP TRIGGER OnTypeInsert;
CREATE TRIGGER OnTypeInsert AFTER INSERT ON Types BEGIN UPDATE Types SET Hash = random() Where Type = New.Type; END;
*/

-- One Copy

INSERT INTO Types
(Type, Kind)
SELECT BeliefType || "_1", "KIND_BELIEF"
FROM Beliefs;

INSERT INTO Beliefs
("BeliefType", "BeliefClassType", "Description","Name")
SELECT BeliefType || "_1", BeliefClassType, Description, Name
FROM Beliefs;

INSERT INTO BeliefModifiers
(BeliefType, ModifierID)
SELECT BeliefType || "_1", ModifierID
FROM BeliefModifiers;

INSERT INTO Belief_Priorities
(BeliefType, ListType)
SELECT BeliefType || "_1", ListType
FROM Belief_Priorities;

-- Two Copy

INSERT INTO Types
(Type, Kind)
SELECT BeliefType || "_2", "KIND_BELIEF"
FROM Beliefs;

INSERT INTO Beliefs
("BeliefType", "BeliefClassType", "Description","Name")
SELECT BeliefType || "_2", BeliefClassType, Description, Name
FROM Beliefs;

INSERT INTO BeliefModifiers
(BeliefType, ModifierID)
SELECT BeliefType || "_2", ModifierID
FROM BeliefModifiers;

INSERT INTO Belief_Priorities
(BeliefType, ListType)
SELECT BeliefType || "_2", ListType
FROM Belief_Priorities;








