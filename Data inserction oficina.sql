-- Inserção de dados para a tabela Clientes
INSERT INTO Clientes (idClientes, CPF, Contato, Endereco) VALUES 
(1, '12345678901', '11999990000', 'Rua A, 100'), 
(2, '98765432100', '21988881111', 'Rua B, 200'),
(3, '45678912345', '31977772222', 'Rua C, 300'),
(4, '78912345678', '41966663333', 'Rua D, 400'),
(5, '32165498712', '51955554444', 'Rua E, 500');

-- Inserção de dados para a tabela Veículos
INSERT INTO Veiculos (idVeiculos, idClientes, Placa, Ano, Modelo) VALUES 
(1, 1, 'ABC1234', 2018, 'Honda Civic'),
(2, 2, 'DEF5678', 2020, 'Toyota Corolla'),
(3, 3, 'GHI9101', 2015, 'Ford Focus'),
(4, 4, 'JKL1213', 2019, 'Chevrolet Cruze'),
(5, 5, 'MNO1415', 2021, 'Volkswagen Jetta');

-- Inserção de dados para a tabela Autorização
INSERT INTO Autorizacao (idAutorizacao, Data_autorizacao, Clientes_idClientes, OS_idOS) VALUES 
(1, '2025-03-01', 1, 1),
(2, '2025-03-02', 2, 2),
(3, '2025-03-03', 3, 3),
(4, '2025-03-04', 4, 4),
(5, '2025-03-05', 5, 5);

-- Inserção de dados para a tabela OS
INSERT INTO OS (idOS, Data_Emissao, Valor_total, StatusOS, Data_conclusao, idVeiculos) VALUES 
(1, '2025-03-01', 1500.00, 'Concluído', '2025-03-05', 1),
(2, '2025-03-02', 2000.00, 'Em andamento', NULL, 2),
(3, '2025-03-03', 1800.00, 'Concluído', '2025-03-07', 3),
(4, '2025-03-04', 2500.00, 'Pendente', NULL, 4),
(5, '2025-03-05', 2200.00, 'Em andamento', NULL, 5);


INSERT INTO Peca (idPeca, Valor, nomePeca) VALUES 
(1, 300.00, 'Pastilha de Freio'),
(2, 450.00, 'Disco de Embreagem'),
(3, 500.00, 'Amortecedor'),
(4, 250.00, 'Filtro de Óleo'),
(5, 600.00, 'Bateria 60Ah');

-- Inserção de dados para a tabela Peça_has_OS
INSERT INTO Peca_has_OS (idPeca, idOS, Quantidade, Valor_total) VALUES 
(1, 1, 2, 600.00),
(2, 2, 1, 450.00),
(3, 3, 1, 500.00),
(4, 4, 3, 750.00),
(5, 5, 1, 600.00);

-- Inserção de dados para a tabela Serviços
INSERT INTO Servicos (idServicos, Valor, Descricao) VALUES 
(1, 800.00, 'Alinhamento e balanceamento'),
(2, 1200.00, 'Revisão geral'),
(3, 900.00, 'Troca de óleo e filtros'),
(4, 1100.00, 'Suspensão e freios'),
(5, 1300.00, 'Diagnóstico eletrônico');

-- Inserção de dados para a tabela Serviços_has_OS
INSERT INTO Servicos_has_OS (idServicos, idOS, Valor_total, Quantidade) VALUES 
(1, 1, 800.00, 1),
(2, 2, 1200.00, 1),
(3, 3, 900.00, 1),
(4, 4, 1100.00, 1),
(5, 5, 1300.00, 1);

-- Inserção de dados para a tabela Equipe
INSERT INTO Equipe (idEquipe) VALUES 
(1), (2), (3), (4), (5);

-- Inserção de dados para a tabela Execução
INSERT INTO Execucao (idExecucao, idEquipe, idServicos) VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- Inserção de dados para a tabela Mecânico
INSERT INTO Mecanico (idMecanico, Nome, Endereco) VALUES 
(1, 'Carlos Souza', 'Rua F, 600'),
(2, 'Mariana Lima', 'Rua G, 700'),
(3, 'Roberto Silva', 'Rua H, 800'),
(4, 'Fernanda Costa', 'Rua I, 900'),
(5, 'Ricardo Mendes', 'Rua J, 1000');

-- Inserção de dados para a tabela Equipe_Mecânico
INSERT INTO Equipe_Mecanico (idMecanico, idEquipe) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
