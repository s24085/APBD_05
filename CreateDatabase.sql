IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Animals')
BEGIN
    CREATE DATABASE Animals;
END

USE Animals;

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Animals')
BEGIN
CREATE TABLE Animals (
                         IdAnimal INT PRIMARY KEY IDENTITY(1,1),
                         Name NVARCHAR(100) NOT NULL,
                         Description NVARCHAR(255),
                         Category NVARCHAR(100),
                         Area NVARCHAR(100)
);
END
