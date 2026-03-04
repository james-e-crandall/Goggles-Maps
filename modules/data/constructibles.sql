CREATE TABLE TempWonders (
    ConstructibleType	TEXT
);

INSERT INTO TempWonders (ConstructibleType)
VALUES 
("WONDER_ASTRONOMICAL_DEVICE"),
("WONDER_CLIFF_FACE"),
("WONDER_GREAT_DOLMEN"),
("WONDER_MOUND"),
("WONDER_PASSAGE_GRAVE"),
("WONDER_STEP_PYRAMID"),
("WONDER_TELL"),
("WONDER_TERRACES"),
("WONDER_TROPAION"),
("WONDER_ZIGGURAT");

INSERT INTO Constructible_WarehouseYields (ConstructibleType, YieldChangeId)
SELECT TempWonders.ConstructibleType,  Constructible_WarehouseYields.YieldChangeId
FROM Constructible_WarehouseYields, TempWonders
WHERE Constructible_WarehouseYields.ConstructibleType="WONDER_PYRAMIDS";

INSERT INTO ConstructibleModifiers (ConstructibleType, ModifierId)
SELECT TempWonders.ConstructibleType,  ConstructibleModifiers.ModifierId
FROM ConstructibleModifiers, TempWonders
WHERE ConstructibleModifiers.ConstructibleType="WONDER_PYRAMIDS";

INSERT INTO Constructible_Advisories (ConstructibleType, AdvisoryClassType)
SELECT TempWonders.ConstructibleType,  Constructible_Advisories.AdvisoryClassType
FROM Constructible_Advisories, TempWonders
WHERE Constructible_Advisories.ConstructibleType="WONDER_PYRAMIDS";

Drop TABLE TempWonders;