-- ------------------------------
-- OPTION
-- ------------------------------

OPTION IMPORT;

-- ------------------------------
-- TABLE: company
-- ------------------------------

DEFINE TABLE company SCHEMALESS PERMISSIONS NONE;

-- ------------------------------
-- TABLE: person
-- ------------------------------

DEFINE TABLE person SCHEMALESS PERMISSIONS NONE;

-- ------------------------------
-- TRANSACTION
-- ------------------------------

BEGIN TRANSACTION;

-- ------------------------------
-- TABLE DATA: company
-- ------------------------------

UPDATE company:100 CONTENT { id: company:100, initialShares: 100, name: "carlton company" };
UPDATE company:102 CONTENT { id: company:102, initialShares: 1000, name: "jeffrey company", shareholders: [person:cyril, person:joyce] };
UPDATE company:108 CONTENT { id: company:108, initialShares: 102, name: "cheryl company", office: { address1: "123 some street", city: "big city", postcode: "new1 v2l" }, shareholders: ["cyril", "joyce"] };

-- ------------------------------
-- TABLE DATA: person
-- ------------------------------

UPDATE person:cyril CONTENT { firstName: "cyril", id: person:cyril, lastName: "joseph" };
UPDATE person:joyce CONTENT { firstName: "joyce", id: person:joyce, lastName: "dsouze" };

-- ------------------------------
-- TRANSACTION
-- ------------------------------

COMMIT TRANSACTION;

