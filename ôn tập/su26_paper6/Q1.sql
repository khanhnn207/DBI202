create table Patients (
	patientID int primary key,
	firstName nvarchar(50),
	surName nvarchar(50)
);

create table PatientsEmail (
	patientID int,
	email nvarchar(20),
	primary key (patientID, email),
	foreign key (patientID) references Patients(patientID)
);

create table Departments (
	departmentID int primary key,
	name nvarchar(100)
);

create table Doctors (
	SSN nvarchar(20) primary key,
	Specialty nvarchar(60),
	fullName nvarchar(100),
	departmentID int,
	foreign key (departmentID) references Departments(departmentID)
);

create table Appointments (
	patientID int,
	SSN nvarchar(20),
	appointmentTime datetime,
	status nvarchar(50),
	primary key (patientID, SSN, appointmentTime),
	foreign key (patientID) references Patients(patientID),
	foreign key (SSN) references Doctors(SSN)
);