SELECT nome, numero FROM banco;
SELECT numero, nome, email FROM cliente;
SELECT banco_numero numero, nome FROM agencia;

SELECT * FROM information_schema.columns WHERE table_name = 'banco';
SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'banco';

--AVG
--COUNT (having)
--MAX
--MIN
--SUM

SELECT valor FROM cliente_transacoes;
SELECT AVG(valor) FROM cliente_transacoes

SELECT COUNT (numero)
FROM cliente

SELECT COUNT(numero), email
FROM cliente
WHERE email ILIKE '%gmail.com'
GROUP BY email;

SELECT MAX(numero) FROM cliente;

Select MIN (numero) FROM cliente;

SELECT MAX (valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id;

SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'cliente_transacoes'

SELECT COUNT(id), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
HAVING COUNT(id) > 150;

SELECT SUM (valor)
FROM cliente_transacoes;
