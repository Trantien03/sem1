use test 

select * from Contact

CREATE PROC sp_UpdateContacts
(
	@id INT, 
	@name varchar(255),
	@company varchar(255),
	@email varchar(50),
	@phone INT
)
AS
BEGIN
	UPDATE Contact SET name = @name,
	                   company = @company, 
	                   email = @email,
					   phone = @phone
	WHERE ID = @id;

END