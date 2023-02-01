create table if not exists Departments (
	Dep_ID SERIAL primary key,
	Dep_Name VARCHAR(100) not null
);

create table if not exists Employees (
	Empl_ID SERIAL primary key,
	Empl_Name VARCHAR(100) not null,
	Dep_ID INTEGER not null references Departments(Dep_ID),
	Chief_ID INTEGER references Chiefs(Chief_ID) check (Chief_ID != Chiefs(Empl_ID))
);

create table if not exists Chiefs (
	Chief_ID SERIAL primary key,
	Empl_ID INTEGER not null references Employees(Empl_ID)
);