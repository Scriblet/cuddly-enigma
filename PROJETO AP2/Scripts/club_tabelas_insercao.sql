INSERT INTO times
(cod_time, nome, camp_id)
VALUES
(1, "Dark Wolves",3),
(2, "Elves of the Forest", 4);

INSERT INTO associado -- NAO FUNCIONA
(cpf, nome, sobrenome, data_nascimento, sexo, email, data_de_associacao, times_id)
VALUES
(20, "Jose", "Silva", CURRENT_DATE, 'M', "josesilva@email.com", CURRENT_TIMESTAMP, 1),
(21, "Andre", "Alves", CURRENT_DATE, 'M', "andresilva@email.com", CURRENT_TIMESTAMP, 2);

INSERT INTO associado_endereco -- NAO FUNCIONA 
(end_cpf_associado, cep, estado, cidade, bairro, rua, numero)
VALUES
(20, 55020605, "PE", "Recife", "Guararapes", "Madre de Mignola", 25),
(21, 55020201, "PE", "Caruaru", "Cedro", "Cinquenta", 35);

INSERT INTO associado_matricula_treino -- NAO FUNCIONA
(cpf_associado_rel, codigo_turma, data_matricula)
VALUES
(1, 22, CURRENT_DATE),
(2, 23, CURRENT_DATE);

INSERT INTO associado_telefone -- NAO FUNCIONA
(cpf_associado, telefone)
VALUES
(20, 819224913),
(21, 819242151);

INSERT INTO associados_part_camp -- ASSOCIADOS QUE ESTAO EM UM CAMPEONATO - NAO FUNCIONA
(cpf_asso_camp, codigo_camp)
VALUES
(20, 3),
(21, 4);

INSERT INTO campeonato
(cod_camp, edicao, data_camp)
VALUES
(0, 1, CURRENT_DATE),
(0, 2, CURRENT_DATE);

INSERT INTO escala
(esc_cod, horas)
VALUES
(1, CURRENT_TIME),
(2, CURRENT_TIME);

INSERT INTO escala_dias_livres
(esc_cod_livres, dias_livres)
VALUES
(1, 3),
(2, 4);

INSERT INTO escala_dias_ocupados
(cod_esca, dias_ocup)
VALUES
(2, 4),
(1, 2);

INSERT INTO esporte
(esporte_cod, nome, qtd_pessoas)
VALUES
(1, "futsal", 10),
(2, "volei", 12);

INSERT INTO tecnico
(registro, nome, sobrenome, epecializacao)
VALUES
(1, "Gonzales", "Esperanto", "Volei"),
(2, "Maria", "Azevedo", "Futsal");

INSERT INTO tecnico_endereco -- NAO FUNCIONA
(registro_tecnico_end, cep, estado, cidade, bairro, rua, numero)
VALUES
(1, 55029314, "PE", "Recife", "Guarrarapes", "Cinquenta e Dois", 764),
(2, 89584253, "PE", "Caruaru", "Rendeiras", "Noventa e Quatro", 984);

INSERT INTO tecnico_telefone -- NAO FUNCIONA
(registro_tecnico_tel, telefone)
VALUES 
(1, 8192811515),
(2, 8191251512);

INSERT INTO treino
(codigo, dia, turno, tecnico_id, esporte_id)
VALUES
(1, CURRENT_DATE, "Tarde", 1, 2),
(2, CURRENT_DATE, "Manha", 2, 1);


