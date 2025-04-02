create database oficina;
use oficina;

-- Tabela Clientes
CREATE TABLE Clientes (
    idClientes INT PRIMARY KEY AUTO_INCREMENT,
    CPF VARCHAR(45) NOT NULL,
    Contato VARCHAR(45),
    Endereco VARCHAR(45)
);

-- Tabela Veículos
CREATE TABLE Veiculos (
    idVeiculos INT PRIMARY KEY AUTO_INCREMENT,
    idClientes INT,
    Placa VARCHAR(45) NOT NULL,
    Ano INT,
    Modelo VARCHAR(45),
    FOREIGN KEY (idClientes) REFERENCES Clientes(idClientes)
);

-- Tabela Ordem de Serviço (OS)
CREATE TABLE OS (
    idOS INT PRIMARY KEY AUTO_INCREMENT,
    Data_Emissao VARCHAR(45),
    Valor_Total VARCHAR(45),
    Status VARCHAR(45),
    Data_Conclusao VARCHAR(45),
    idVeiculos INT,
    FOREIGN KEY (idVeiculos) REFERENCES Veiculos(idVeiculos)
);

-- Tabela Autorização
CREATE TABLE Autorizacao (
    idAutorizacao INT PRIMARY KEY AUTO_INCREMENT,
    Data_Autorizacao DATE,
    idClientes INT,
    idOS INT,
    FOREIGN KEY (idClientes) REFERENCES Clientes(idClientes),
    FOREIGN KEY (idOS) REFERENCES OS(idOS)
);

-- Tabela Serviços
CREATE TABLE Servicos (
    idServicos INT PRIMARY KEY AUTO_INCREMENT,
    Valor FLOAT,
    Descricao VARCHAR(45)
);

-- Tabela Serviços_has_OS (Relaciona Serviços e OS)
CREATE TABLE Servicos_has_OS (
    idServicos INT,
    idOS INT,
    Valor_Total FLOAT,
    Quantidade INT,
    PRIMARY KEY (idServicos, idOS),
    FOREIGN KEY (idServicos) REFERENCES Servicos(idServicos),
    FOREIGN KEY (idOS) REFERENCES OS(idOS)
);

-- Tabela Execução
CREATE TABLE Execucao (
    idExecucao INT PRIMARY KEY AUTO_INCREMENT,
    idEquipe INT,
    idServicos INT,
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe),
    FOREIGN KEY (idServicos) REFERENCES Servicos(idServicos)
);

-- Tabela Equipe
CREATE TABLE Equipe (
    idEquipe INT PRIMARY KEY AUTO_INCREMENT
);

-- Tabela Equipe_Mecanico (Relaciona Equipe e Mecânicos)
CREATE TABLE Equipe_Mecanico (
    idMecanico INT,
    idEquipe INT,
    PRIMARY KEY (idMecanico, idEquipe),
    FOREIGN KEY (idMecanico) REFERENCES Mecanico(idMecanico),
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe)
);

-- Tabela Mecânico
CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45),
    Endereco VARCHAR(45)
);

-- Tabela Peça
CREATE TABLE Peca (
    idPeca INT PRIMARY KEY AUTO_INCREMENT,
    Valor FLOAT
);
ALTER TABLE Peca ADD column NomePeca varchar(40);


-- Tabela Peça_has_OS (Relaciona Peça e OS)
CREATE TABLE Peca_has_OS (
    idPeca INT,
    idOS INT,
    Quantidade INT,
    Valor_Total FLOAT,
    PRIMARY KEY (idPeca, idOS),
    FOREIGN KEY (idPeca) REFERENCES Peca(idPeca),
    FOREIGN KEY (idOS) REFERENCES OS(idOS)
);
