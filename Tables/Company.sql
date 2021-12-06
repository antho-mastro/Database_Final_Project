USE AEC;

CREATE TABLE Company
(
	CompanyId INT IDENTITY(10001, 1) PRIMARY KEY,
    [Name] VARCHAR(15) NOT NULL,
    [Address] VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
	ContactName VARCHAR(45) NOT NULL,

	CONSTRAINT CHECK_Company_PhoneNumber CHECK (PhoneNumber LIKE '+% %-%-%')
);