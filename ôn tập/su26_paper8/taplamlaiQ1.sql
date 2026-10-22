create table Members (
	memberID int primary key,
	firstName nvarchar,
	lastName nvarchar
);

create table Membersphone (
	memberID int,
	phone nvarchar(20),
	primary key (memberID, phone),
	foreign key (memberID) references Members(memberID)
);

create table librarian (
	librarianID int primary key,
	name nvarchar(100),
);

create table Books (
	bookCode nvarchar(20),
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
	foreign key (memberID) references Members(memberID),
	foreign key (bookCode) references Books(bookCode),
	foreign key (librarianID) references librarian(librarianID)
);