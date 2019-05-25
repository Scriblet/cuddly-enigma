SELECT * FROM treino;

SELECT * FROM associado;

SELECT * FROM tecnico_endereco;

SELECT * FROM tecnico_telefone;

SELECT nome
AS 'Nome do Tecnico' 
FROM tecnico;

SELECT nome, email
FROM associado
WHERE sexo = 'M';

SELECT nome, sobrenome
FROM associado
WHERE cpf > 10 OR sexo = 'M';

SELECT estado, cidade
FROM tecnico_endereco
WHERE NOT numero > 1000;

SELECT nome, sobrenome, sexo, email, data_de_associacao AS 'Data'
FROM associado
WHERE cpf BETWEEN 10 AND 30;

SELECT sobrenome, data_de_associacao
FROM associado
WHERE nome LIKE 'J%';

SELECT nome, data_de_associacao
FROM associado
WHERE sobrenome IN ('Silva');

SELECT nome
FROM associado
WHERE data_nascimento IS NULL;

SELECT email AS 'Email de Contato', nome, sexo
FROM associado
ORDER BY nome ASC; 

SELECT count(*) AS 'Associados por Cidade', cidade, bairro
FROM associado_endereco
GROUP BY cidade;

SELECT associado.nome, times.nome
FROM associado
INNER JOIN times
ON associado.times_id = times.cod_time;