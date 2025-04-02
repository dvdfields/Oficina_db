-- Listar todas as peças utilizadas em cada OS
SELECT OS.idOS, Peca.NomePeca, Peca.Valor 
FROM Peca
JOIN Item_OS ON Peca.idPeca = Item_OS.idPeca
JOIN OS ON Item_OS.idOS = OS.idOS
ORDER BY OS.idOS;

-- Listar os funcionários responsáveis por cada OS
SELECT OS.idOS, Funcionario.NomeFuncionario 
FROM OS 
JOIN Funcionario ON OS.idFuncionario = Funcionario.idFuncionario;

-- Serviços mais caros realizados na oficina
SELECT Servico.idServico, Servico.Descricao, Servico.Valor 
FROM Servico 
ORDER BY Servico.Valor DESC 
LIMIT 5;

-- Clientes com mais de uma OS registrada
SELECT idClientes, COUNT(*) AS Total_OS 
FROM OS 
GROUP BY idClientes
HAVING Total_OS > 1;