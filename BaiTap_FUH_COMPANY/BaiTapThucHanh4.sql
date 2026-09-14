-- Cau1
SELECT empName, empSex, empBirthdate
FROM tblEmployee
WHERE empSex = 'F';

-- Cau2
SELECT *
FROM tblEmployee
ORDER bY empSalary DESC, empName ASC;

-- Cau3
SELECT d.depName, e.empName
From tblEmployee e JOIN tblDepartment d ON e.depNum = d.depNum

-- Cau4
SELECT depNum, COUNT(*) AS Total_employees
FROM tblEmployee
GROUP BY depNum;

-- Cau5 (khong hieu lam)
SELECT * 
FROM tblDepartment
WHERE depNum NOT IN (
    SELECT depNum 
    FROM tblEmployee 
    WHERE depNum IS NOT NULL
);
