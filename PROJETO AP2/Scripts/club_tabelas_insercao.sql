INSERT INTO times
(cod_time, nome, camp_id)
VALUES
(0, "Dark Wolves", 1),
(0, "Elves of the Forest", 2);


INSERT INTO associado 
(cpf, nome, sobrenome, data_nascimento, sexo, email, data_de_associacao, times_id)
VALUES
('89456423412', 'Jose', 'Silva', CURRENT_DATE, 'M', 'josesilva@email.com', CURRENT_TIMESTAMP, 1),
('98412415041', 'Maria', 'Alves', CURRENT_DATE, 'F', 'andresilva@email.com', CURRENT_TIMESTAMP, 2);

INSERT INTO associado_endereco 
(id, cep, estado, cidade, bairro, rua, numero)
VALUES
(2, '55000000', 'PE', 'Recife', 'Guarrarapes', 'Madre alguma coisa', 25),
(1, '55000000', 'PE', 'Caruaru', 'Cedro', 'Cinquenta', 35);

INSERT INTO associado_matricula_treino 
(id, codigo_turma, data_matricula)
VALUES
(1, 22, CURRENT_DATE),
(2, 23, CURRENT_DATE);

INSERT INTO associado_telefone 
(id, telefone)
VALUES
(2, '819224913'),
(1, '819242151');

INSERT INTO associados_part_camp 
(id, codigo_camp)
VALUES
(2, 3),
(1, 4);

INSERT INTO campeonato
(cod_camp, edicao, data_camp)
VALUES
(0, 1, CURRENT_DATE),
(0, 2, CURRENT_DATE);

INSERT INTO escala
(horas)
VALUES
(CURRENT_TIME),
(CURRENT_TIME);

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
(nome, qtd_pessoas)
VALUES
('Futsal', 10),
('Volei', 12);

INSERT INTO tecnico
(registro, nome, sobrenome, epecializacao)
VALUES
(1, 'Gonzales', 'Esperanto', 'Volei'),
(2, 'Maria', 'Azevedo', 'Futsal');

INSERT INTO tecnico_endereco 
(registro_tecnico_end, cep, estado, cidade, bairro, rua, numero)
VALUES
(1, '55029314', 'PE', 'Recife', 'Guarrarapes', 'Cinquenta e Dois', 764),
(2, '89584253', 'PE', 'Caruaru', 'Rendeiras', 'Noventa e Quatro', 984);

INSERT INTO tecnico_telefone 
(registro_tecnico_tel, telefone)
VALUES 
(1, '8192811515'),
(2, '8191251512');

INSERT INTO treino
(dia, turno, tecnico_id, esporte_id)
VALUES
(CURRENT_DATE, 'Tarde', 1, 2),
(CURRENT_DATE, 'Manha', 2, 1);
