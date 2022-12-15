-- Databricks notebook source
SELECT *,
        CASE 
          WHEN descUF = 'SP' THEN 'paulista'
          WHEN descUF = 'RJ' THEN 'fluminense'
          ELSE 'outros'
        END AS descNacionalidade
        
FROM silver_olist.cliente

-- cria uma coluna para indicar que quem nasce em SP é paulista e quem nasce em RJ é fluminense e em outros estados é outros

-- COMMAND ----------

SELECT *,
        CASE 
          WHEN descUF = 'SP' THEN 'paulista'
          WHEN descUF = 'RJ' THEN 'fluminense'
          ELSE 'outros'
        END AS descNacionalidade,
        
        CASE
          WHEN descCidade LIKE '%sao%' THEN 'tem são no nome'
          ELSE 'Não tem são no nome'
        END AS descCidadeSao
        
FROM silver_olist.cliente

-- cria uma coluna para indicar que quem nasce em SP é paulista e quem nasce em RJ é fluminense e em outros estados é outros

-- COMMAND ----------

SELECT *,
        CASE 
          WHEN descUF IN ('SP', 'MG', 'RJ', 'ES') THEN 'sudeste'
        END AS descRegiao
        
FROM silver_olist.cliente

-- COMMAND ----------


