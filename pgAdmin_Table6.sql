SELECT numero,nome,ativo
FROM banco;

CREATE OR REPLACE VIEW vw_bancos AS (
	SELECT numero, nome, ativo
	FROM banco
);

SELECT numero, nome, ativo
FROM vw_bancos;
---------------------------------------------------------------
CREATE OR REPLACE VIEW vw_banco_2 (banco_numero, banco_nome, banco_ativo) AS (
    SELECT numero,nome,ativo
	FROM banco
);
SELECT banco_numero,banco_nomee, banco_ativo
FROM vw_bancos_2;
-------------------------------------------
INSERT INTO vw_banco_2 (banco_numero, banco_nome,banco_ativo)
VALUES (51, 'Banco Boa Ideia',TRUE);

SELECT banco_numero, banco_nome, banco_ativo FROM vw_banco_2 WHERE banco_numero = 51;
--------------------------------------------------------------------
UPDATE vw_banco_2 SET banco_ativo = FALSE WHERE banco_numero = 51;
DELETE FROM vw_banco_2 WHERE banco_numero = 51 
---------------------------------------------------------------

CREATE OR REPLACE TEMPORARY VIEW vw_agencia AS (
SELECT nome FROM agencia
);
SELECT nome FROM vw_agencia;
------------APERTE F5 NA PAGINA E A VIEW SOME POR SER TEMPORARIA--------------------

CREATE OR REPLACE VIEW vw_banco_ativo AS (
SELECT numero, nome, ativo
	FROM banco
	WHERE ativo IS TRUE
	) WITH LOCAL CHECK OPTION;
	
INSERT INTO vw_banco_ativo(numero,nome,ativo) VALUES (51, 'Banco Boa Iseia', FALSE);
-----------------------------------------------------------------------------
