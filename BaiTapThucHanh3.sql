-- Cau1:
UPDATE tblEmployee
SET supervisorSSN = NULL
WHERE supervisorSSN = (SELECT empSSN FROM tblEmployee WHERE empName = N'Mai Duy An');

DELETE FROM tblEmployee
WHERE empName = N'Mai Duy An';


-- cau2:
DELETE FROM tblWorksOn
WHERE proNum IN (1, 2);

DELETE FROM tblProject
WHERE proNum IN (1, 2);