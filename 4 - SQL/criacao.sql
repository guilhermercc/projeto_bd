-- CRIA TABELA ESPECTADOR
CREATE TABLE ESPECTADOR(
    CPF NUMBER(11),
    NOME VARCHAR(80) NOT NULL,
    END_CEP NUMBER(8),
    END_COMPLEMENTO VARCHAR(255),
    CONSTRAINT PK_ESPECTADOR PRIMARY KEY (CPF)
);

-- CRIA TABELA CATEGORIA INTERESSE
CREATE TABLE CATEGORIA_INTERESSE(
    CPF NUMBER(11),
    CATEGORIA_INTERESSE VARCHAR(255),
    CONSTRAINT PK_CATEGORIA_INTERESSE PRIMARY KEY (CPF, CATEGORIA_INTERESSE),
    CONSTRAINT FK_CATEGORIA_INTERESSE FOREIGN KEY (CPF) REFERENCES ESPECTADOR(CPF)
);

-- CRIA TABELA E-MAIL ESPECTADOR
CREATE TABLE EMAIL_ESPECTADOR(
    CPF NUMBER(11),
    EMAIL VARCHAR(255),
    CONSTRAINT PK_EMAIL_ESP PRIMARY KEY (CPF, EMAIL), 
    CONSTRAINT FK_EMAIL_ESP FOREIGN KEY (CPF) REFERENCES ESPECTADOR(CPF)
);

-- CRIA TABELA SEGUE
CREATE TABLE SEGUE(
    CPF_SEGUIDOR NUMBER(11),
    CPF_SEGUIDO NUMBER(11),
    CONSTRAINT PK_SEGUE PRIMARY KEY (CPF_SEGUIDOR, CPF_SEGUIDO),
    CONSTRAINT FK_CPF_SEGUIDOR FOREIGN KEY (CPF_SEGUIDOR) REFERENCES ESPECTADOR(CPF),
    CONSTRAINT FK_CPF_SEGUIDO FOREIGN KEY (CPF_SEGUIDO) REFERENCES ESPECTADOR(CPF)
);


-- CRIA TABELA STREAMER
CREATE TABLE STREAMER(
    CPF NUMBER(11),
    NOME VARCHAR(80) NOT NULL,
    END_CEP NUMBER(8),
    END_COMPLEMENTO VARCHAR(255),
    CONSTRAINT PK_STREAMER PRIMARY KEY (CPF)
);

-- CRIA TABELA E-MAIL STREAMER
CREATE TABLE EMAIL_STREAMER(
    CPF NUMBER(11),
    EMAIL VARCHAR(255),
    CONSTRAINT PK_EMAIL_STR PRIMARY KEY (CPF, EMAIL),
    CONSTRAINT FK_EMAIL_STR FOREIGN KEY (CPF) REFERENCES STREAMER(CPF)
);


-- CRIA TABELA CANAL
CREATE TABLE CANAL(
    CPF NUMBER(11),
    NOME_CANAL VARCHAR(20) NOT NULL,
    DESCRICAO VARCHAR(255),
    CONSTRAINT PK_CANAL PRIMARY KEY (CPF, NOME_CANAL),
    CONSTRAINT FK_CANAL FOREIGN KEY (CPF) REFERENCES STREAMER(CPF)
);

-- CRIA TABELA CATEGORIA
CREATE TABLE CATEGORIA(
    CPF NUMBER(11),
    NOME_CANAL VARCHAR(20),
    CATEGORIA VARCHAR(20),
    CONSTRAINT PK_CATEGORIA PRIMARY KEY (CPF, NOME_CANAL, CATEGORIA),
    CONSTRAINT FK_CATEGORIA FOREIGN KEY (CPF, NOME_CANAL) REFERENCES CANAL(CPF, NOME_CANAL)
);

--CRIA TABELA CONTEÚDO
CREATE TABLE CONTEUDO(
    ID NUMBER(8),
    LINK VARCHAR(255) NOT NULL UNIQUE,
    TITULO VARCHAR(255) NOT NULL,
    DESCRICAO VARCHAR(255),
    DURACAO NUMBER NOT NULL,
    CPF_STREAMER NUMBER(11) NOT NULL,
    NOME_CANAL VARCHAR(20) NOT NULL,
    CONSTRAINT PK_CONTEUDO PRIMARY KEY (ID),
    CONSTRAINT FK_CONTEUDO FOREIGN KEY (CPF_STREAMER, NOME_CANAL) REFERENCES CANAL(CPF, NOME_CANAL)
);

--CRIA TABELA VISUALIZA
CREATE TABLE VISUALIZA(
    CPF NUMBER(11),
    ID NUMBER(8),
    DATA_VISUALIZACAO TIMESTAMP NOT NULL,
    CONSTRAINT PK_VISUALIZA PRIMARY KEY (CPF, ID),
    CONSTRAINT FK_VISUALIZA_CPF FOREIGN KEY (CPF) REFERENCES ESPECTADOR(CPF),
    CONSTRAINT FK_VISUALIZA_ID FOREIGN KEY (ID) REFERENCES CONTEUDO(ID)
);

-- CRIA TABELA COMENTÁRIOS
CREATE TABLE COMENTARIOS(
    ID NUMBER(8),
    CORPO VARCHAR(255),
    CPF NUMBER(11) NOT NULL,
    ID_CONTEUDO NUMBER(8) NOT NULL,
    CONSTRAINT PK_COMENTARIOS PRIMARY KEY (ID),
    CONSTRAINT FK_COMENTARIOS FOREIGN KEY (CPF, ID_CONTEUDO) REFERENCES VISUALIZA(CPF, ID)
);

--CRIA TABELA PRESTÍGIO
CREATE TABLE PRESTIGIO(
    ID NUMBER(4),
    NOME VARCHAR(255),
    DESCRICAO VARCHAR(255),
    CONSTRAINT PK_PRESTIGIO PRIMARY KEY (ID)
);

--CRIA TABELA ASSINA
CREATE TABLE ASSINA(
    CPF_ESP NUMBER(11),
    CPF_STR NUMBER(11),
    NOME_CANAL VARCHAR(20),
    ID_PRESTIGIO NUMBER(4) NOT NULL,
    CONSTRAINT PK_ASSINA PRIMARY KEY (CPF_ESP, CPF_STR, NOME_CANAL),
    CONSTRAINT FK_ASSINA_ESP FOREIGN KEY (CPF_ESP) REFERENCES ESPECTADOR(CPF) ON DELETE CASCADE,
    CONSTRAINT FK_ASSINA_STR FOREIGN KEY (CPF_STR, NOME_CANAL) REFERENCES CANAL (CPF, NOME_CANAL) ON DELETE CASCADE,
    CONSTRAINT FK_ASSINA_PRE FOREIGN KEY (ID_PRESTIGIO) REFERENCES PRESTIGIO(ID)
);