-- Databricks notebook source
SELECT COUNT(*)
FROM silver_olist.cliente

-- contar quantas linhas tem na tabela cliente

-- COMMAND ----------

SELECT
    COUNT(*) AS nrLinhasNaoNulas, -- linhas nao nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo, -- id de cliente nao nulos
    COUNT(distinct idCliente) AS nrIdClienteDistintos, -- id de clientes distintos
    COUNT(distinct idClienteUnico) AS nrIdClienteUnicoDistintos
    
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descCidade = 'presidente prudente'

-- CONTAGEM DAS PESSOAS QUE MORAM EM PRESIDENTE PRUDENTE

-- COMMAND ----------

SELECT
    COUNT(*)
FROM silver_olist.cliente

WHERE descCidade IN('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 
      ROUND(AVG(vlPreco), 2) AS media_preco, -- preco medio dos produtos
      ROUND(AVG(vlFrete), 2) AS media_frete,
      MAX(vlPreco) AS prod_mais_caro,
      MAX(vlFrete) AS frete_mais_caro,
      INT(PERCENTILE(vlPreco, 0.5)) AS mediana_do_preco
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------


