-- Inserção de clientes
INSERT INTO Cliente (nome, telefone, email) VALUES
('João Silva', '11999999999', 'joao@email.com'),
('Maria Souza', '11888888888', 'maria@email.com'),
('Carlos Lima', '11777777777', 'carlos@email.com');

-- Inserção de veículos
INSERT INTO Veiculo (placa, modelo, ano, id_cliente) VALUES
('ABC1234', 'Civic', 2018, 1),
('XYZ5678', 'Gol', 2015, 2),
('DEF4321', 'Corolla', 2020, 3);

-- Inserção de mecânicos
INSERT INTO Mecanico (nome, especialidade) VALUES
('Carlos Mecânico', 'Motor'),
('Pedro Silva', 'Freios'),
('Ana Souza', 'Suspensão');

-- Inserção de serviços
INSERT INTO Servico (descricao, valor) VALUES
('Troca de óleo', 150.00),
('Alinhamento', 100.00),
('Balanceamento', 80.00);

-- Inserção de ordens de serviço
INSERT INTO Ordem_Servico (data_abertura, data_fechamento, status, id_veiculo, id_mecanico) VALUES
('2025-04-01', NULL, 'Aberta', 1, 1),
('2025-04-02', '2025-04-03', 'Fechada', 2, 2),
('2025-04-05', NULL, 'Aberta', 3, 3);

-- Inserção de itens (serviços dentro das ordens)
INSERT INTO Item_Servico (id_os, id_servico, quantidade) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 2, 1),
(2, 3, 1),
(3, 1, 2);