create database Joyas
use Joyas

-- Crear tabla principal de joyas
CREATE TABLE Joyas (
    ID INT PRIMARY KEY,
    Nombre_de_la_Joya VARCHAR(255),
    Tipo VARCHAR(50),
    Material VARCHAR(50),
    PrecioUSD DECIMAL(10, 2),
    Disponibilidad VARCHAR(50)
);
-- Crear tabla de proveedores
CREATE TABLE Proveedores (
    ID_Proveedor INT PRIMARY KEY,
    Nombre_del_Proveedor VARCHAR(255),
    Contacto VARCHAR(255),
    Telefono VARCHAR(20),
    Direccion VARCHAR(255)
);

-- Crear tabla de clientes
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nombre_del_Cliente VARCHAR(255),
    Email VARCHAR(255),
    Telefono VARCHAR(20),
    Direccion VARCHAR(255)
);

-- Crear tabla de ventas
CREATE TABLE Ventas (
    ID_Venta INT PRIMARY KEY,
    ID_Joya INT,
    ID_Cliente INT,
    Fecha DATE,
    Cantidad INT,
    Precio_Total DECIMAL(10, 2),
    FOREIGN KEY (ID_Joya) REFERENCES Joyas(ID),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);
BULK INSERT Joyas
FROM 'C:\Users\DELL\Documents\Proyecto1\Joyas11.csv'
WITH (
    DATAFILETYPE = 'char',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
	Select*from Joyas
	BULK INSERT Proveedores
FROM 'C:\Users\DELL\Documents\Proyecto1\proveedores.csv'
WITH (
    DATAFILETYPE = 'char',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
	Select*from Proveedores
BULK INSERT Clientes
FROM 'C:\Users\DELL\Documents\Proyecto1\clientes33.csv'
WITH (
    DATAFILETYPE = 'char',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
	Select*from Clientes
BULK INSERT Ventas
FROM 'C:\Users\DELL\Documents\Proyecto1\ventas44.csv'
WITH (
    DATAFILETYPE = 'char',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
	Select*from Ventas

--'C:\Users\DELL\Documents\Proyecto1\Joyas11.csv'
