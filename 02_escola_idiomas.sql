CREATE TABLE professor(
CPF CHAR(11) PRIMARY KEY, 
nome_prof VARCHAR(60)
) 
CREATE TABLE disciplinas(
id_disciplina SERIAL NOT NULL PRIMARY KEY, 
nome_disciplina VARCHAR(50)
)
CREATE TABLE turmas(
id_turma SERIAL NOT NULL, 
sala VARCHAR(20), 
CPF CHAR(11), 
id_disciplina SERIAL NOT NULL,
	CONSTRAINT pk_turmas 
		PRIMARY KEY(id_turma), 
	CONSTRAINT fk_turmas_professores 
		FOREIGN KEY(CPF) REFERENCES professor(CPF), 
	CONSTRAINT fk_turmas_disciplinas 
		FOREIGN KEY(id_disciplina) REFERENCES disciplinas(id_disciplina)

)