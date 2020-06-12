------------------------------- USER e ROLES-----------------------------------
CREATE ROLE professores NOCREATEDB NOCREATEROLE INHERIT NOLOGIN NOBYPASSRLS CONNECTION LIMIT 10;
ALTER ROLE professores PASSWORD'123';
--------------------------------------------------------------
CREATE ROLE daniel LOGIN password '123';
DROP ROLE daniel;
------------------------------------------------------------------
CREATE ROLE daniel LOGIN PASSWORD '123' IN ROLE professores;
DROP ROLE daniel;
-------------------------------------------------------------------
CREATE ROLE daniel LOGIN PASSWORD '123' ROLE professores;

------------------------ GRANT--------------------------------------
DROP ROLE daniel;
CREATE TABLE teste1 (nome VARCHAR);
GRANT ALL ON TABLE teste1 TO professores;
CREATE ROLE daniel LOGIN PASSWORD '123';
DROP ROLE daniel;
CREATE ROLE daniel INHERIT LOGIN PASSWORD '123' IN ROLE professores;

REVOKE professores FROM daniel;



