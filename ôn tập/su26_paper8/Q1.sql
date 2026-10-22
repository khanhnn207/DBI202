create table Members (
	memberID INT PRIMARY KEY,
	firstName nvarchar(50),
	lastName nvarchar(50)
);

create table Membersphone (
	memberID int,                --để hiển thị bảng
	phone nvarchar(20),          -- để hiển thị bảng
	primary key (memberID, phone),    -- điều kiện không trùng lặp cả memberID và phone)
	foreign key (memberID) references Members(memberID) -- so sánh memberID ở membersphone mới member, nếu giống thì cho phép nhậ dữ liệu
);

create table Librarian (
	librarianID int primary key,
	name nvarchar(100)
);	

create table Books (
	bookCode nvarchar(20) primary key,
	title nvarchar(100),
	author nvarchar(60)
);

create table Loans (
	memberID int,
	bookCode nvarchar(20),
	borrowDate date,
	returnDate date,
	librarianID int,
	primary key (memberID, bookCode, borrowDate),
	foreign key (memberID) references members(memberID),
	foreign key (bookCode) references Books(bookCode),
	foreign key (librarianID) references Librarian(librarianID),
);

select * from Loans