create table Members (
	memberID int primary key,
	firstName nvarchar(50),
	lastName nvarchar(50)
);

create table Membersphone (
	memberID int,
	phone nvarchar(20),
	primary key (memberID, phone),
	foreign key (memberID) references Members(memberID)
);

create table Librarian (
	librarianID int primary key,
	name nvarchar(100)
);

create table Books (
	bookCode nvarchar(20) primary key,
	author nvarchar(60),
	title nvarchar(100)
);

create table Loans (
	memberID int,
	librarianID int,
	bookCode nvarchar(20),
	returnDate date,
	borrowDate date,
	primary key (memberID, bookCode, borrowDate),
	foreign key (memberID) references Members(memberID),
	foreign key (bookCode) references Books(bookCode),
	foreign key (librarianID) references Librarian(librarianID)
);