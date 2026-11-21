# sql-select-fundamentals

Práctica de consultas SQL básicas (`SELECT` y alias) sobre la tabla `sales` para el equipo de finanzas de TechStore.

## Estructura del repositorio

- `consultas_basicas.sql`: Script con las tres consultas solicitadas y comentarios explicativos.
- `README.md`: Documentación y respuestas a preguntas técnicas.

## Preguntas y respuestas

### 1. ¿Por qué es mala práctica usar `SELECT *` en producción?

- **Rendimiento:** Trae todas las columnas de la tabla aunque solo necesites unas pocas. En tablas grandes, esto implica leer más datos desde disco/memoria y transferir más información por la red, volviendo las consultas más lentas y costosas.
- **Mantenibilidad y estabilidad:** Si en el futuro se agregan columnas nuevas, se eliminan o cambian de orden en `sales`, una consulta con `SELECT *` puede devolver un resultado distinto al esperado y romper procesos o reportes que dependen de una estructura fija.

### 2. ¿Por qué son importantes los alias para un stakeholder no técnico?

Los alias traducen nombres técnicos o en inglés del esquema de la base de datos a términos de negocio claros y en `snake_case`, facilitando la lectura de reportes sin depender de conocer la estructura interna.

Por ejemplo, en lugar de entregar una columna llamada `total_amount` (que puede resultar ambigua o poco intuitiva para quien no trabaja con bases de datos), usar `total_amount AS monto_total` deja claro desde el encabezado que el valor representa el monto total de la venta en el reporte.