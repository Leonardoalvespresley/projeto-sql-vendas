-- Projeto: consultas básicas de vendas
-- Autor: Leonardo

CREATE TABLE clientes (
  id INT, 
  nome VARCHAR(50),
  cidade VARCHAR(50),
  valor_compra DECIMAL(10,2)
  );

-- Inserir clientes de exemplo
INSERT INTO clientes (id, nome, cidade, valor_compra) VALUES
(1, 'Ana', 'Osasco', 150.00),
(2, 'Bruno', 'Barueri', 80.50),
(3, 'Carla', 'Osasco', 230.00);

-- Ver todos os clientes
SELECT * FROM clientes;


-- Ver só nome e valor dos clientes de Osasco
SELECT nome, valor_compra
FROM clientes
WHERE cidade = 'Osasco';


-- Somar o total vendido
SELECT SUM(valor_compra) AS total_vendido
FROM clientes;

-- Contar quantos clientes existem
SELECT COUNT(*) AS total_clientes
FROM clientes;
