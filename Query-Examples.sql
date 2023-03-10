use dbClinic
go

-------------Simple Select Query to show all the employees that are doctors in the Employee table-----------------------------------
Select	 EmployeeId, Employees.EmployeeNumber, Employees.FirstName, Employees.LastName 
From	 Employees, Doctors
Where	 Employees.EmployeeNumber = Doctors.EmployeeNumber

-------------Simple Select Query to show all the employees that are nurses in the Employee table-----------------------------------
Select	EmployeeId, Employees.EmployeeNumber, Employees.FirstName, Employees.LastName 
From	Employees, Nurses
Where	Employees.EmployeeNumber = Nurses.EmployeeNumber

--------------Count the number of employees in the Employees table------------------------------------------------------------------
Select	Count(EmployeeID) As NumberOfEmployees
From	Employees


--------------Count the number of doctors in the Employees table------------------------------------------------------------------
Select	Count(EmployeeID) As NumberOfDoctors
From	Employees, Doctors
Where	Employees.EmployeeNumber = Doctors.EmployeeNumber


