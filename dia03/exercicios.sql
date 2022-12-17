-- Databricks notebook source
-- contagem de produtos vendidos
SELECT idProduto,
        COUNT(*) -- contagem de cada produto
FROM silver_olist.item_pedido -- tabela de vendas

GROUP BY idProduto
ORDER BY COUNT(*) DESC

-- COMMAND ----------

-- qual categoria tem mais produtos vendidos?
SELECT T2.descCategoria,
        COUNT(*) -- contagem
FROM silver_olist.item_pedido AS T1 -- tabela de vendas

LEFT JOIN silver_olist.produto AS T2 -- tabela produto

ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY COUNT(*) DESC

-- COMMAND ----------

-- qual categoria tem produtos mais caros, em media?

SELECT T2.descCategoria,
        AVG(T1.vlPreco) AS MEDIA_DOS_PRECOS

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2

ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY AVG(T1.vlPreco) DESC

-- COMMAND ----------

-- OS CLIENTES DE QUAL ESTADO PAGAM MAIS FRETE

SELECT 
       T3.descUF,
       AVG(T1.vlFrete) AS mediaFrete
       
FROM silver_olist.item_pedido AS T1
LEFT JOIN silver_olist.pedido AS T2
ON T1.idPedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCliente = T3.idCliente

GROUP BY T3.descUF
ORDER BY mediaFrete DESC

-- COMMAND ----------

-- OS CLIENTES DE QUAL ESTADO PAGAM MAIS FRETE COM FRETE ACIMA DE 40 REAIS

SELECT 
       T3.descUF,
       AVG(T1.vlFrete) AS mediaFrete
       
FROM silver_olist.item_pedido AS T1
LEFT JOIN silver_olist.pedido AS T2
ON T1.idPedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCliente = T3.idCliente

GROUP BY T3.descUF

HAVING mediaFrete > 40

ORDER BY mediaFrete DESC



-- COMMAND ----------


