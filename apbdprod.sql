/****CINEMA*****/

/* 	Get all  cinemas	*/
CREATE PROCEDURE GetCinemas
AS
BEGIN
	SELECT Id, Name From Cinema;
END

/*	Get Cinema	*/
CREATE PROCEDURE GetCinemaById
(
	@CinemaId int
)
AS
BEGIN
	SELECT * FROM Cinema 
	WHERE Id = @CinemaId;
END

/*	Add New Cinema	*/
CREATE PROCEDURE CreateCinema
(
	@Name Varchar(max),
	@RegionId int,
	@Address Varchar(max),
	@TelephoneNo Varchar(20)
)
AS
BEGIN
	INSERT INTO Cinema(Name, RegionId, Address, TelephoneNo)
	VALUES(@Name, @RegionId, @Address, @TelephoneNo);
END

/*	Delete Cinema	*/
CREATE PROCEDURE DeleteCinema
(
	@CinemaId int
)
AS
BEGIN
	/*	Check if exists and then delete? */
	DELETE FROM Cinema
	WHERE Id = @CinemaId;
END

/*	Update Cinema	*/
CREATE PROCEDURE UpdateBasicCinemaData
(
	@CinemaId int,
	@Name varchar(max),
	@Address varchar(max),
	@TelephoneNo varchar(20)
)
AS
BEGIN
	UPDATE Cinema
	SET Name=@Name, Address=@Address, TelephoneNo = @TelephoneNo
	WHERE Id=@CinemaId;
END
/*	Get All Projections For cinemas*/

CREATE PROCEDURE GetAllProjectionsForCinema
(
	@CinemaId INT
)
AS
BEGIN
	SELECT DateTime, Length FROM Projection
	WHERE IdProjectionRoom IN (	SELECT IdProjectionRoom FROM IdProjectionRoom
								WHERE IdCinema = @CinemaId);
END

/*	Get All Employees For cinemas	*/
CREATE PROCEDURE GetAllEmployeesForCinema
(
	@CinemaId INT
)
AS
BEGIN
	SELECT Name, Surname, TelephoneNo, Email FROM Employee 
	WHERE Id IN(SELECT IdEmployee FROM Work
				WHERE IdCinema = @CinemaId);
END

/*	Get Manager For cinema	*/
CREATE PROCEDURE GetManagerForCinema
(
	@IdCinema INT
)
AS
BEGIN
	SELECT Name, Surname, TelephoneNo, Email FROM Employee
	WHERE Id IN (	SELECT IdManager FROM Cinema
					WHERE Id = @IdCinema);
END

/*	Update Manager For Cinema	*/
CREATE PROCEDURE UpdateManagerForCinema
(
	@IdManager INT,
	@IdCinema INT
)
AS
BEGIN
	UPDATE Cinema
	SET IdManager = @IdManager
	WHERE Id = @IdCinema;
END

/*	Get Projections Dates for Cinema	*/
CREATE PROCEDURE GetProjectionDatesForCinema
(
	@IdCinema INT
)
AS
BEGIN
	SELECT DateTime FROM Projections
	WHERE IdProjectionRoom IN (	SELECT IdProjectionRoom FROM IdProjectionRoom
								WHERE IdCinema = @IdCinema);
END

/*	Get All Projections for Given Day for Given Cinema	*/
CREATE PROCEDURE GetAllProjectionsForGivenDayForGivenCinema
(
	@DateTIme DateTime,
	@IdCinema INT
)
AS
BEGIN
	SELECT DateTime, Length FROM Projection
	WHERE IdProjectionRoom IN (	SELECT IdProjectionRoom FROM IdProjectionRoom
								WHERE IdCinema = @IdCinema)
	AND ((DateTime >= @DateTIme) AND (DateTime < dateadd(day, 1, @DateTime)));	
END

/*	Add Projections For Given Day For Given Cinema	*/
CREATE PROCEDURE InsertProcedureForGivenDayForGivenCinema


/*	Delete Projection	*/

/*	Update Projection	*/

/*	Assign Employee To Projection	*/




/****EMPLOYEE*****/

/*	Get All	*/

/*	Insert	*/

/*	Update	*/

/*	Delete	*/

/*	Assign to cinemas */

/*	Shwo upcoming schedule	*/
