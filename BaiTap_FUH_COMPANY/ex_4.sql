SELECT empName AS 'Họ và tên', empSex AS 'Giới tính',
YEAR(GETDATE())-YEAR(empBirthdate) AS 'Tuổi'
FROM tblEmployee
WHERE (empSEX='F' AND YEAR(GETDATE())-YEAR(empBirthdate)<40)
OR (empSEX='M' AND YEAR(GETDATE())-YEAR(empBirthdate)<50)
