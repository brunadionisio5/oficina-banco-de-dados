-- ===============================
-- CONSULTAS SQL DO SISTEMA
-- ===============================

-- 1. SELECT simples
-- Pergunta: Quais são todos os clientes?
SELECT * FROM Cliente;

-- 2. Filtro com WHERE
-- Pergunta: Quais ordens estão abertas?
SELECT * FROM Ordem_Servico
WHERE status = 'Aberta';

-- 3. Atributo derivado (cálculo)
-- Pergunta: Qual o valor total por item de serviço?
SELECT 
    i.id_os,
    s.descricao,
    i.quantidade,
    (i.quantidade * s.valor) AS valor_total
FROM Item_Servico i
JOIN Servico s ON i.id_servico = s.id_servico;

-- 4. Ordenação com ORDER BY
-- Pergunta: Liste os serviços do mais caro para o mais barato
SELECT * FROM Servico
ORDER BY valor DESC;

-- 5. GROUP BY + HAVING
-- Pergunta: Quais ordens têm valor total maior que 200?
SELECT 
    i.id_os,
    SUM(i.quantidade * s.valor) AS total_os
FROM Item_Servico i
JOIN Servico s ON i.id_servico = s.id_servico
GROUP BY i.id_os
HAVING total_os > 200;

-- 6. JOIN entre múltiplas tabelas
-- Pergunta: Quais clientes, veículos e mecânicos estão envolvidos em cada ordem?
SELECT 
    c.nome AS cliente,
    v.modelo,
    m.nome AS mecanico,
    os.status
FROM Ordem_Servico os
JOIN Veiculo v ON os.id_veiculo = v.id_veiculo
JOIN Cliente c ON v.id_cliente = c.id_cliente
JOIN Mecanico m ON os.id_mecanico = m.id_mecanico;

-- 7. Consulta mais complexa
-- Pergunta: Qual o total gasto por cada cliente?
SELECT 
    c.nome,
    SUM(i.quantidade * s.valor) AS total_gasto
FROM Cliente c
JOIN Veiculo v ON c.id_cliente = v.id_cliente
JOIN Ordem_Servico os ON v.id_veiculo = os.id_veiculo
JOIN Item_Servico i ON os.id_os = i.id_os
JOIN Servico s ON i.id_servico = s.id_servico
GROUP BY c.nome
ORDER BY total_gasto DESC;