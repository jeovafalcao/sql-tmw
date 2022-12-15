-- Databricks notebook source
-- selecione todos os clientes paulistanos
SELECT *

FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- selecione todos os clientes paulistas
SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP' AND descCidade != 'sao paulo'

-- COMMAND ----------

-- selecione todos os vendedores cariocas e paulistas
SELECT *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'

-- COMMAND ----------

-- selecione produtos de perfumaria e bebes com altura maior que 5cm
SELECT *
FROM silver_olist.produto

WHERE descCategoria IN ('perfumaria', 'bebes')
AND vlAlturaCm > 5

-- COMMAND ----------

-- lista de pedidos com mais de um item
-- lista de pedidos que o frete é mais caro que o item
-- lista de pedidos que ainda nao foram enviados
-- lista de pedidos que foram entregues com atraso
-- lista de pedidos que foram entregues com 2 dias de antecedencia
-- lista de pedidos feitos em dezembro de 2017 e entregues com atraso
-- lista de pedidos com avaliacao maior ou igual que 4
-- lista de pedidos com 2 ou mais parcelas menores que R$20,00

SELECT *
FROM silver_olist.item_pedido
WHERE 

-- COMMAND ----------


