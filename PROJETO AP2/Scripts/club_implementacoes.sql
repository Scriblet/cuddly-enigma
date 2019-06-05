CREATE TRIGGER tr_nome_completo
BEFORE INSERT
ON associado
FOR EACH ROW
SET New.nome_completo = CONCAT( New.nome, ' ', New.sobrenome);
