SELECT numero, nome FROM banco;
SELECT banco_numero, numero, nome FROM agencia;
SElECT numero, nome FROM cliente;
SELECT id, nome FROM tipo_transacao;
------------------------------------------------------------------
SELECT count(1) FROM banco; --151
SELECT count(1) FROM agencia; --296
-----------------------------------------------------------------
--296
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;

SELECT banco.numero
FROM banco
JOIN agencia ON agencia.banco_numero = banco_numero
GROUP BY banco.numero;

SELECT count(distinct banco.numero)
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;
---------------------------------------------------------------------------------------
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
LEFT JOIN agencia ON agencia.banco_numero = banco.numero;
------------------------------------------------------------------------------
SELECT agencia.numero, agencia.nome, agencia.numero, agencia.nome
FROM agencia
RIGHT JOIN banco ON banco.numero = agencia.banco_numero;
--------------------------------------------------------------------------------
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
FULL JOIN agencia ON agencia.banco_numero = banco.numero;
----------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS teste_a (id serial primary key, valor varchar(10)); 
CREATE TABLE IF NOT EXISTS teste_b (id serial primary key, valor varchar(10)); 

INSERT INTO teste_a(valor) VALUES ('teste1');
INSERT INTO teste_a(valor) VALUES ('teste2');
INSERT INTO teste_a(valor) VALUES ('teste3');
INSERT INTO teste_a(valor) VALUES ('teste4');

INSERT INTO teste_b(valor) VALUES ('teste1');
INSERT INTO teste_b(valor) VALUES ('teste2');
INSERT INTO teste_b(valor) VALUES ('teste3');
INSERT INTO teste_b(valor) VALUES ('teste4');

SELECT tbla.valor, tblb.valor
FROM teste_a tbla
CROSS JOIN teste_b tblb;

DROP TABLE IF EXISTS teste_a;
DROP TABLE IF EXISTS teste_b;
