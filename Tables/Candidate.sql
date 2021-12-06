USE AEC;

CREATE TABLE Candidate
(
    CandidateId INT IDENTITY(10001, 1) PRIMARY KEY,
    FirstName NVARCHAR(20) NOT NULL,
    LastName NVARCHAR(30) NOT NULL,
    SSN VARCHAR(11) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    Email VARCHAR(320) NOT NULL,
    HomeAddress NVARCHAR(100) NOT NULL,

    CONSTRAINT CHECK_Candidate_SSN CHECK(SSN LIKE '___-__-____'),
	CONSTRAINT CHECK_Candidate_PhoneNumber CHECK(PhoneNumber LIKE '+% %-%-%'),
    CONSTRAINT CHECK_Candidate_Email CHECK(Email LIKE '%@%.%')
);

GO;