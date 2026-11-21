-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: Jhoalber Jimenez
-- Fecha: 2026-11-21
-- ══════════════════════════════════════════

-- Consulta 1: Exploración general de la tabla sales
-- Tiene sentido usar SELECT * al explorar una tabla por primera vez en desarrollo o pruebas
-- para ver rápidamente qué columnas y datos contiene. No conviene usarlo en producción ni en
-- consultas de aplicación porque trae columnas innecesarias, consume más ancho de banda/memoria
-- y puede romper código si la estructura de la tabla cambia (se agregan o quitan columnas).
SELECT *
FROM sales;

-- Consulta 2: Selección de columnas específicas para finanzas
SELECT
    customer_id,
    product_id,
    total_amount
FROM sales;

-- Consulta 3: Selección con alias en español para stakeholders
SELECT
    order_date AS fecha_pedido,
    product_name AS nombre_producto,
    quantity AS cantidad_unidades
FROM sales;