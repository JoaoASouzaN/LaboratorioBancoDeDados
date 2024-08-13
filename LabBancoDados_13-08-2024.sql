CREATE Table Alunos(
	idAluno int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	firstNome varchar(100),
	sobreNome varchar(100),
	DataNasci DATE
);

CREATE Table TipoDisciplina(
	idTipoDisc int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nomeTipoDisc varchar(100)
);

CREATE Table Disciplina(
	idDisciplina int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	NomeDisciplina varchar(100),
	idTipoDisci int REFERENCES TipoDisciplina (idTipoDisc)
);

CREATE Table Aluno_Disciplina(
	idAluno int REFERENCES Alunos(idAluno),
	idDisciplina int REFERENCES Disciplina(idDisciplina)
);