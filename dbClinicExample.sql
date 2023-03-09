CREATE DATABASE dbClinic;

use dbClinic
go

CREATE TABLE Employees(
	EmployeeId		int  NOT NULL IDENTITY(1,1),
	EmployeeNumber		int NOT NULL PRIMARY KEY,
	FirstName		nvarchar(50) NOT NULL,
	LastName		nvarchar(50) NOT NULL,
);

CREATE TABLE EmployeeType(
	EmployeeTypeId		int  NOT NULL IDENTITY(1,1),
	EmployeeId		int  NOT NULL,
	Type			nvarchar(50) NOT NULL,
	EmployeeNumber		int foreign key references Employees (EmployeeNumber)
);	

CREATE TABLE Doctors(
	DoctorId		int  NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName		nvarchar(50) NOT NULL,
	LastName		nvarchar(50) NOT NULL,
	Role			nvarchar(50) NOT NULL,
	EmployeeNumber		int foreign key references Employees (EmployeeNumber)
);
CREATE TABLE Nurses(
	NurseId			int  NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName		nvarchar(50) NOT NULL,
	LastName		nvarchar(50) NOT NULL,
	EmployeeNumber		int foreign key references Employees (EmployeeNumber)
);

CREATE TABLE Administrators(
	AdminId			int  NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName		nvarchar(50) NOT NULL,
	LastName		nvarchar(50) NOT NULL,
	EmployeeNumber		int foreign key references Employees (EmployeeNumber)
);

CREATE TABLE DomesticWorker(
	DomesticId		int  NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName		nvarchar(50) NOT NULL,
	LastName		nvarchar(50) NOT NULL,
	EmployeeNumber		int foreign key references Employees (EmployeeNumber)
);

CREATE TABLE Patients(
	PatientId		int  NOT NULL IDENTITY(1,1),
	PatientNumber		int NOT NULL PRIMARY KEY,
	FirstName		char(128) NOT NULL,
	LastName		char(128) NOT NULL,
);

CREATE TABLE PatientFiles(
	FilesId			int  NOT NULL IDENTITY(1,1),
	FileNumber		int foreign key references Patients (PatientNumber),
	AssignedDoctor		int foreign key references Employees (EmployeeNumber),
	AssignedNurse		int foreign key references Employees (EmployeeNumber),
);
