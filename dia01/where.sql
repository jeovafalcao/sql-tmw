-- Databricks notebook source
SELECT *
FROM silver_olist.pedido

LIMIT 100

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'delivered'

-- LIMIT 100

-- Selecione todas as colunas da tabela silver_olist.pedido onde a situação seja entregue 'delivered'

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'

-- Mesma coisa do procedimento anterior

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30

-- Selecione todas as colunas a partir da tabela pedido aonde o pedido esteja shipped ou canceled onde o pedido seja de 2018 e que a diferenca da data de estimativa de estrega e de aprovação seja maior que 30 dias

-- COMMAND ----------


