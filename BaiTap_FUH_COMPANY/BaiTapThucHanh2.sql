UPDATE tblEmployee	
SET empSalary = empSalary * 1.15
WHERE empSalary < 10000;

UPDATE tblDepartment
SET depName = N'Phòng Quản Lý Nguồn Nhân Lực'
WHERE depNum = 7;

UPDATE tblEmployee
SET empAddress = N'Hà Nội'
WHERE empSSN IN (
	SELECT empSSN
	FROM tblWorksOn
	WHERE proNum = (
		SELECT proNum
		FROM tblProject
		WHERE proName = 'ProjectA'
	)
);

