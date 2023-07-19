-- Q1: AGRUPAR OS PRODUTOS POR PERCETUALDESCONTO E CONTAR QUANTOS EM CADA GRUPO;
SELECT percentualDesconto, COUNT(*) AS qntde
FROM produto
GROUP BY percentualDesconto;

-- Q2: AGRUPAR OS PRODUTOS POR FKCATEGORIA E CALCULAR O PREÇO MEDIO POR CATEGORIA;
SELECT fkCategoria, ROUND(AVG(preco),2) AS preco_medio
FROM produto
GROUP BY fkCategoria;

-- Q3: AGRUPAR OS ENDEREÇOS POR UF E MOSTRAR QUANTOS CLIENTES ESTÃO EM CADA ESTADO;
SELECT uf, COUNT(fkVendedor) AS qntde
FROM endereco 
GROUP BY uf;

-- Q4: AGRUPAR OS PRODUTOS POR FKVENDEDOR E CALCULAR A MEDIA DE ESTOQUE;
	-- FILTRAR OS GRUPOS COM MÉDIA ACIMA DE 100;
	-- ORDERNAR POOR MÉDIA DE ESTOQUES;

SELECT fkVendedor, ROUND(AVG(estoque)) AS media_estoque -- CALCULAR A MEDIA DE ESTOQUE;
FROM produto 
GROUP BY fkVendedor  -- AGRUPAR OS PRODUTOS POR FKVENDEDOR;
HAVING media_estoque > 100  -- FILTRAR OS GRUPOS COM MÉDIA ACIMA DE 100;
ORDER BY media_estoque DESC; -- ORDERNAR POOR MÉDIA DE ESTOQUES;