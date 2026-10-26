create table Universities (
	universityID int primary key,
	name nvarchar(200) not null,
	street nvarchar(50),
	city nvarchar(50)
);

create table Employees (
	empID int primary key,
	FullName nvarchar(60),
	gender nvarchar(10),
	universityID int not null,	
	foreign key (universityID) references Universities(universityID)
);

create table Employeesphone (
	empID int not null,
	phone nvarchar(20) not null,
	primary key (empID, phone),
	foreign key (empID) references Employees(empID)
);

create table Departments (
	depID int primary key,
	name nvarchar(100) not null
);

create table Professors (
	depID int not null,
	field nvarchar(100),
	empID int primary key,
	foreign key (depID) references Departments(depID),
	foreign key (empID) references Employees(empID)
);