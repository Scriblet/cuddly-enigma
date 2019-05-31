CREATE DATABASE club_esportivo
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE UTF8_GENERAL_CI;

USE club_esportivo;

CREATE TABLE times(
    cod_time INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    camp_id INT NOT NULL,
    
    CONSTRAINT pk_times
    PRIMARY KEY(cod_time),
	
    CONSTRAINT fk_camp_times
    FOREIGN KEY(camp_id) 
    REFERENCES campeonato(cod_camp)
);

CREATE TABLE associado (
    id INT NOT NULL AUTO_INCREMENT	
    cpf VARCHAR(100) NOT NULL, -- TIPO STRING
    nome VARCHAR(15) NOT NULL,
    sobrenome VARCHAR(20) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo ENUM('M','F'),
    email VARCHAR(30),
    data_de_associacao TIMESTAMP,
    times_id INT NOT NULL,
    
    CONSTRAINT pk_cpf PRIMARY KEY(cpf),
    
    CONSTRAINT fk_times_asso
    FOREIGN KEY(times_id) 
    REFERENCES times(cod_time)
);
    
CREATE TABLE associado_telefone (
    cpf_associado VARCHAR(50) NULL, -- TIPO STRING
    telefone VARCHAR(30),
    
    CONSTRAINT pk_associado_telefone 
    PRIMARY KEY(cpf_associado, telefone),
    
    CONSTRAINT fk_associado_telefone 
    FOREIGN KEY(cpf_associado) 
    REFERENCES associado(cpf)
);

CREATE TABLE associado_endereco (
    end_cpf_associado VARCHAR(50) NOT NULL,
    cep VARCHAR(30),
    estado VARCHAR(50) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    rua VARCHAR(30) NOT NULL,
    numero SMALLINT NOT NULL,
    
    CONSTRAINT pk_end_associado
    PRIMARY KEY(end_cpf_associado),
    
    CONSTRAINT fk_end_associado
    FOREIGN KEY(end_cpf_associado) 
    REFERENCES associado(cpf)
    
);

CREATE TABLE tecnico (
    registro INT NOT NULL,
    nome VARCHAR(15),
    sobrenome VARCHAR(30),
    epecializacao VARCHAR(50) NOT NULL,
    
    CONSTRAINT pk_tec 
    PRIMARY KEY(registro)
);

CREATE TABLE tecnico_telefone (
    registro_tecnico_tel VARCHAR(30) NOT NULL,
    telefone VARCHAR(50),
    
    CONSTRAINT pk_tecnico_telefone 
    PRIMARY KEY(registro_tecnico_tel, telefone),
    
    CONSTRAINT fk_tecnico_telefone 
    FOREIGN KEY(registro_tecnico_tel) 
    REFERENCES tecnico(registro)
);

CREATE TABLE tecnico_endereco (
    registro_tecnico_end INT NOT NULL,
    cep VARCHAR(50),
    estado VARCHAR(50) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    rua VARCHAR(30) NOT NULL,
    numero SMALLINT NOT NULL,
    
    CONSTRAINT pk_end_tecnico
    PRIMARY KEY(registro_tecnico_end),
    
    CONSTRAINT fk_end_tecnico
    FOREIGN KEY(registro_tecnico_end) 
    REFERENCES tecnico(registro)
);

CREATE TABLE esporte(
    esporte_cod INT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    qtd_pessoas MEDIUMINT NOT NULL,
    
    CONSTRAINT pk_esp_id 
    PRIMARY KEY (esporte_cod)
    
);

CREATE TABLE treino (
	codigo INT AUTO_INCREMENT,
    dia DATE NOT NULL,
    turno VARCHAR(50),
    tecnico_id INT NOT NULL,
    esporte_id INT NOT NULL,
    
    CONSTRAINT pk_codigo_treino 
    PRIMARY KEY(codigo),
    
    CONSTRAINT fk_tecnico_id 
    FOREIGN KEY(tecnico_id) 
    REFERENCES tecnico(registro),
    
    CONSTRAINT fk_esporte_id 
    FOREIGN KEY(esporte_id) 
    REFERENCES esporte(esporte_cod)

);

CREATE TABLE associado_matricula_treino (
    cpf_associado_rel VARCHAR(50) NOT NULL,
    codigo_turma INT NOT NULL,
    data_matricula TIMESTAMP,
    
    CONSTRAINT pk_cpf_associado_matricula 
    PRIMARY KEY(cpf_associado_rel, codigo_turma),
    
    CONSTRAINT fk_cod_turma 
    FOREIGN KEY(cpf_associado_rel) 
    REFERENCES treino(codigo)

);

CREATE TABLE escala(
	esc_cod INT AUTO_INCREMENT,
    horas TIME NOT NULL,
    
    CONSTRAINT pk_escala
    PRIMARY KEY (esc_cod)
);

CREATE TABLE escala_dias_ocupados(
	cod_esca INT NOT NULL,
    dias_ocup INT NOT NULL,
    
    CONSTRAINT pk_escala_ocup
    PRIMARY KEY (cod_esca, dias_ocup),
    
    CONSTRAINT fk_escala_ocp 
    FOREIGN KEY(cod_esca)
    REFERENCES escala(esc_cod)
);

CREATE TABLE escala_dias_livres(
	esc_cod_livres INT NOT NULL,
    dias_livres INT NOT NULL,
    
    CONSTRAINT pk_escala_liv
    PRIMARY KEY (esc_cod_livres, dias_livres), 
    
    CONSTRAINT fk_escala_li 
    FOREIGN KEY(esc_cod_livres)
    REFERENCES escala(esc_cod)
);

CREATE TABLE campeonato (
	cod_camp INT AUTO_INCREMENT,
    edicao SMALLINT,
    data_camp DATE,
    
	CONSTRAINT pk_cod_camp 
    PRIMARY KEY(cod_camp)
);

CREATE TABLE associados_part_camp (
    cpf_asso_camp VARCHAR(30) NOT NULL,
    codigo_camp INT NOT NULL,
    
    CONSTRAINT pk_asso_campe
    PRIMARY KEY(cpf_asso_camp, codigo_camp),
    
    CONSTRAINT fk_asso_camp
    FOREIGN KEY(cpf_asso_camp) 
    REFERENCES associado(cpf)

);

CREATE TABLE jogos (
    cod_camp_id INT NOT NULL,
    data_camp DATE NOT NULL,
    hora TIMESTAMP,
    
    CONSTRAINT pk_jogos
    PRIMARY KEY(cod_camp_id, hora),
    
    CONSTRAINT fk_camp
    FOREIGN KEY(cod_camp_id) 
    REFERENCES campeonato(cod_camp)
);



