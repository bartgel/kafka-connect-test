create database TestDB;
GO

use TestDB;
GO

CREATE schema targetschema;
GO

create login targetuser with password = 's3cr3ts.';
GO

CREATE USER targetuser for login targetuser;
GO

GRANT SELECT, UPDATE, ALTER, INSERT, DELETE ON SCHEMA :: targetschema TO targetuser;
GO

GRANT CREATE TABLE  TO targetuser;
GO

ALTER USER targetuser WITH DEFAULT_SCHEMA = targetschema;
GO