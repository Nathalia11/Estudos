SELECT numero,nome,ATIVO FROM banco ORDER BY numero;
-----------------------------------------------
UPDATE banco SET ativo = FALSE WHERE numero = 0;

-----------------------
BEGIN;
UPDATE banco SET ativo = TRUE WHERE numero = 0;
SELECT numero, nome, ativo FROM banco WHERE numero = 0;
ROLLBACK;

BEGIN;
UPDATE banco SET ativo = TRUE WHERE numero = 0;
COMMIT;
-----------------------------------------------------------

BEGIN;
UPDATE conta SET valor=valor -100.00
WHERE nome = 'Alice'
SAVEPOINT my_savepoint
UPDATE conta SET valor = valor +100.00 WHERE nome = "Bob"
------------OPS...não é Bob e sim para Wally!-----------
ROLLBACK TO my_savepoint;
UPDATE conta SET  valor = valor +100.00 WHERE nome = 'Wally';
COMMIT;
