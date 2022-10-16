create table Users(
	U_Id varchar(15) NOT NULL PRIMARY KEY,
	U_Name varchar(100),
	U_Birthday date
);

create table Contact (
	C_Id varchar(15) NOT NULL PRIMARY KEY,
	C_Adress varchar(100),
	C_Phone varchar(11),
	C_Mail varchar(100)
);

create table Account(
	A_Id varchar(15) NOT NULL PRIMARY KEY,
	A_Name varchar(100),
	A_Pass varchar(10),
	A_Role int,
	U_Id varchar(15) FOREIGN KEY REFERENCES Users(U_Id),
	C_Id varchar(15) FOREIGN KEY REFERENCES Contact(C_Id)
);

create table Type(
	T_Id varchar(15)  NOT NULL PRIMARY KEY,
	T_Name varchar(100)
);

create table Fish(
	F_Id varchar(15)  NOT NULL PRIMARY KEY,
	F_Name varchar(100),
	F_Level int,
	F_Sex int,
	F_Price float,
	T_Id varchar(15) FOREIGN KEY REFERENCES Type(T_Id)
);
create table Product(
	P_Id varchar(15)  NOT NULL PRIMARY KEY,
	P_Name varchar(100),
	P_Price float,
	P_Image varchar(250),
	T_Id varchar(15) FOREIGN KEY REFERENCES Type(T_Id)
);

create table Oder(
	O_Id varchar(15)  NOT NULL PRIMARY KEY,
	O_Name varchar(100),
	O_Time time,
	A_Id varchar(15) FOREIGN KEY REFERENCES Account(A_Id)
);

create table Oder_Line(
	OL_Id varchar(15)  NOT NULL PRIMARY KEY,
	OL_Time Time,
	OL_Status int,
	O_Id varchar(15) FOREIGN KEY REFERENCES Oder(O_Id),
	F_Id varchar(15) FOREIGN KEY REFERENCES Fish(F_Id),
	P_Id varchar(15) FOREIGN KEY REFERENCES Product(P_Id),
);