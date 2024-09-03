#flashcards
En PostgreSQL, ¿cuál es el papel del Postmaster en la arquitectura del servidor?
a. Gestiona las conexiones de clientes y coordina los procesos del servidor.
b. Administra el almacenamiento en el disco.
c. Ninguna es correcta
d. Controla la replicación de datos.
e. Ejecuta consultas y transacciones.
?
Gestiona las conexiones de clientes y coordina los procesos del servidor.

¿Pueden los tablespaces en un SGBD contener datafiles en diferentes discos duros?
Verdadero 
Falso
?
La respuesta correcta es 'Verdadero'

¿Cual de los siguientes SGBD se caracteriza por tener un wiredtiger como default de motor de almacenamiento?
a. Ninguno es correcto
b. Neo4J
c. MongoDB
d. Cassandra
e. SQL Server
?
MongoDB

¿Qué significa PGA en la arquitectura de Oracle y cuál es su función principal?
a. Program Global Area, gestiona la memoria compartida entre diferentes procesos.
b. Private Global Area, almacena datos temporales y de sesión para cada proceso.
c. Public Grid Access, proporciona acceso público a la base de datos.
d. Process Global Allocation, controla la ejecución de consultas y transacciones.
?
Program Global Area, gestiona la memoria compartida entre diferentes procesos.

¿Cuáles son los componentes que conforman la memoria interna en la arquitectura de Oracle?
a. Ninguna es correcta
b. MMAM , CMON
c. PGA, SGA
d. ARCn  
?
PGA, SGA

¿Qué es la consistencia en el contexto de bases de datos y por qué es un atributo de calidad crucial?
a. La capacidad de recuperarse de fallos sin perder datos.
b. La capacidad de manejar grandes volúmenes de datos.
c. La velocidad con la que se pueden realizar consultas.
d. La garantía de que los datos cumplen con las reglas y restricciones definidas. 
?
La garantía de que los datos cumplen con las reglas y restricciones definidas.

¿Cuáles de las siguientes combinaciones podría implementar de mejor manera la maximización del atributo de calidad de seguridad en un SGBD?
a. Mediante Objetos de la Base de Datos ( sinónimos y vistas)
b. Mediante gestión de Transacciones
c. Mediante datos encriptados + roles y permisos de acceso a los objetos + Objetos de la base de datos(sinónimos y vistas)
d. Mediante datos encriptados + roles y permisos de acceso a los objetos 
?
Mediante datos encriptados + roles y permisos de acceso a los objetos + Objetos de la base de datos(sinónimos y vistas)

¿Con la encriptación de datos en una tabla, se garantiza la seguridad como atributo de calidad en un SGBD?
a. Solo si se utiliza un algoritmo de encriptación fuerte
b. No
c. Depende del tamaño de la base de datos y el número de usuarios.
d. Sí
?
No

¿Qué significa el término escalabilidad en el contexto de bases de datos y por qué es esencial?
a. La capacidad de recuperarse de fallos sin perder datos.
b. La eficiencia en el uso de recursos de hardware.
c. La habilidad para manejar un aumento en la carga de trabajo o en el tamaño de la base de datos.
d. La velocidad con la que se pueden realizar consultas.
e. Ninguna es correcta
?
La habilidad para manejar un aumento en la carga de trabajo o en el tamaño de la base de datos.

¿Qué aspectos aborda el atributo de calidad de un SGBD en cuanto a rendimiento?
a. Optimización de consultas
b. Escalabilidad
c. Seguridad de datos
d. Ninguna es correcta
e. Todas son correctas
?
Optimización de consultas

Texto informativo
Caso de Estudio: Sistema de Ventas de Pasajes Aéreos para una Aerolínea
Descripción General del Sistema:
La aerolínea opera un sistema de ventas de pasajes aéreos para gestionar reservas, ventas y consultas relacionadas con la disponibilidad de vuelos y precios. Este sistema maneja un gran volumen de transacciones diarias, ya que los clientes realizan consultas en busca de vuelos disponibles, tarifas y asientos.
Con el crecimiento continuo de la demanda y el aumento de consultas de disponibilidad de vuelos, el rendimiento del sistema ha comenzado a verse afectado. Las consultas, especialmente aquellas relacionadas con la disponibilidad de asientos, experimentan tiempos de respuesta más lentos.
Durante las horas pico, el sistema experimenta un aumento significativo en la carga concurrente debido a la alta demanda de reservas y consultas de vuelos.
Para mejorar el rendimiento en las consultas relacionadas con los vuelos disponibles entre una ciudad A y B,
¿Cuál sería el mejor tipo de índice a crear sobre la tabla VUELOS?
a. Índice no agrupado en las columnas de origen y destino.
b. Índice agrupado en la columna de número de vuelo.
c. Índice no agrupado en la columna de fecha de vuelo.
d. Índice único en la columna de aerolínea.
?
Índice no agrupado en las columnas de origen y destino.

Texto informativo
Caso de Estudio: Sistema de Ventas de Pasajes Aéreos para una Aerolínea
Descripción General del Sistema:
La aerolínea opera un sistema de ventas de pasajes aéreos para gestionar reservas, ventas y consultas relacionadas con la disponibilidad de vuelos y precios. Este sistema maneja un gran volumen de transacciones diarias, ya que los clientes realizan consultas en busca de vuelos disponibles, tarifas y asientos.
Con el crecimiento continuo de la demanda y el aumento de consultas de disponibilidad de vuelos, el rendimiento del sistema ha comenzado a verse afectado. Las consultas, especialmente aquellas relacionadas con la disponibilidad de asientos, experimentan tiempos de respuesta más lentos.
Durante las horas pico, el sistema experimenta un aumento significativo en la carga concurrente debido a la alta demanda de reservas y consultas de vuelos.
¿Cuál de los siguientes tipos de índices sería más adecuado para mejorar el rendimiento en consultas que buscan vuelos por fecha específica?
a. Índice único en la columna de aerolínea.
b. Índice en la columna de fecha de vuelo.
c. Índice en la columna de número de vuelo.
d. Índice en la columna de origen.
?
Índice en la columna de fecha de vuelo.

Texto informativo
Caso de Estudio: Sistema de Ventas de Pasajes Aéreos para una Aerolínea
Descripción General del Sistema:
La aerolínea opera un sistema de ventas de pasajes aéreos para gestionar reservas, ventas y consultas relacionadas con la disponibilidad de vuelos y precios. Este sistema maneja un gran volumen de transacciones diarias, ya que los clientes realizan consultas en busca de vuelos disponibles, tarifas y asientos.
Con el crecimiento continuo de la demanda y el aumento de consultas de disponibilidad de vuelos, el rendimiento del sistema ha comenzado a verse afectado. Las consultas, especialmente aquellas relacionadas con la disponibilidad de asientos, experimentan tiempos de respuesta más lentos.
Durante las horas pico, el sistema experimenta un aumento significativo en la carga concurrente debido a la alta demanda de reservas y consultas de vuelos.
¿Cómo se podría mejorar el rendimiento en las consultas relacionadas con los vuelos disponibles entre una
ciudad A y B?  Cual de los siguientes métodos de acceso serıa el de menor costo al hacer una consulta sobre
la tabla VUELOS:
a. Table access by ROWID
b. Full Scan Table
c. Index unique scan
d. Index range scan
e. Index by Primary Key
?
Index range scan

Texto informativo
Caso de Estudio: Sistema de Ventas de Pasajes Aéreos para una Aerolínea
Descripción General del Sistema:
La aerolínea opera un sistema de ventas de pasajes aéreos para gestionar reservas, ventas y consultas relacionadas con la disponibilidad de vuelos y precios. Este sistema maneja un gran volumen de transacciones diarias, ya que los clientes realizan consultas en busca de vuelos disponibles, tarifas y asientos.
Con el crecimiento continuo de la demanda y el aumento de consultas de disponibilidad de vuelos, el rendimiento del sistema ha comenzado a verse afectado. Las consultas, especialmente aquellas relacionadas con la disponibilidad de asientos, experimentan tiempos de respuesta más lentos.
Durante las horas pico, el sistema experimenta un aumento significativo en la carga concurrente debido a la alta demanda de reservas y consultas de vuelos.
Se quiere optimizar consultas que recuperan información sobre vuelos cancelados. ¿Qué tipo de índice sería
más útil para consultas que filtran por el estado de vuelo (cancelado o no cancelado)?
a. Índice no agrupado en la columna de origen.
b. Índice único en la columna de aerolínea.
c. Índice no agrupado en la columna de estado de vuelo.
d. Índice agrupado en la columna de número de vuelo.
?
Índice no agrupado en la columna de estado de vuelo.

¿El costo de ejecutar una operación en una consulta SQL viene dado en función de?
a. Alcance, tiempo y RAM
b. Ninguna es correcta
c. E/S de disco, RAM y CPU
d. Tiempo de ejecución y complejidad
e. Costo de recorrer el árbol de índice.
?
E/S de disco, RAM y CPU

¿Cuál de los siguientes queries utiliza una mejor aproximación para evitar una transformación de columna?
```SQL
a.
 SELECT *
 FROM sales
 WHERE MONTH(order_date) = MONTH(CURRENT_DATE)
  AND YEAR(order_date) = YEAR(CURRENT_DATE)
  AND total_price / 1000 > 0.1;
b.
 SELECT *
 FROM sales
 WHERE MONTH(order_date) = MONTH(CURRENT_DATE)
  AND YEAR(order_date) = YEAR(CURRENT_DATE)
  AND CAST(total_price AS DECIMAL) > 10;
c.
 SELECT *
 FROM sales
 WHERE MONTH(order_date) = MONTH(CURRENT_DATE)
  AND YEAR(order_date) = YEAR(CURRENT_DATE)
  AND total_price > 10;
d.
 SELECT *
 FROM sales
 WHERE MONTH(order_date) = MONTH(CURRENT_DATE)
  AND YEAR(order_date) = YEAR(CURRENT_DATE)
  AND total_price > 1000 / 100;
```
?
```SQL
 SELECT *
 FROM sales
 WHERE MONTH(order_date) = MONTH(CURRENT_DATE)
  AND YEAR(order_date) = YEAR(CURRENT_DATE)
  AND total_price > 10;
```

¿Cuál de las siguientes descripciones define correctamente un índice en una base de datos y su impacto en el rendimiento?
a. Un conjunto de datos ordenados de valores únicos que facilitan la organización y recuperación de datos, a pesar de incrementar el espacio de almacenamiento y disminuir la velocidad de las consultas complejas.
b. Una categoría de usuarios autorizados, que agiliza las operaciones de búsqueda y clasificación de datos.
c. Una lista de nombres de tablas, que agiliza las operaciones de búsqueda y clasificación de datos.
d. Una estructura que mejora la velocidad de las consultas al proporcionar un acceso más rápido a losdatos, aunque puede aumentar el tiempo de escritura y almacenamiento. 
?
Una estructura que mejora la velocidad de las consultas al proporcionar un acceso más rápido a los datos, aunque puede aumentar el tiempo de escritura y almacenamiento.

Seleccione el concepto que sea más adecuado en cada caso:
- Es el ajuste de la estructura de la base de datos para adaptarse mejor a los patrones de acceso y consulta.
- Identificador único asignado a cada fila de una tabla en una base de datos.
- Para asegurar que el optimizador de consultas tome decisiones basadas en información precisa.
- En una base de datos es una estructura que mejora la eficiencia de las consultas al proporcionar un acceso rápido y ordenado a los datos.
**Opciones:**
- Rowid
- Afinación del esquema
- Índice
- Mantenimiento regular de estadísticas
?
Respuesta 1
Afinación del esquema
Respuesta 2
Rowid
Respuesta 3
Mantenimiento regular de estadísticas
Respuesta 4
Índice

¿Cuál de las siguientes afirmaciones describe correctamente un posible motivo para reescribir esta consulta?
```SQL
SELECT p.nombre, SUM(v.totalventa) AS total_ventas
FROM productos p
JOIN ventas v ON p.id = v.producto_id
WHERE p.categoria_id IN (select id from categorias where name = 'Electrónicos')
GROUP BY p.nombre
ORDER BY total_ventas DESC;
```
 Y el índice: 
```SQL
CREATE INDEX idx_descripcion ON productos(descripcion);
```
a. La reescritura de la consulta no sería necesaria, ya que está correctamente optimizada para obtener el total de ventas de productos electrónicos.
b. La cláusula WHERE debería cambiarse a una cláusula HAVING para filtrar correctamente los resultados basados en la categoría.
c. La consulta está optimizada para aprovechar eficientemente los índices disponibles en las tablas involucradas.
d. En lugar de usar IN con una subconsulta que devuelve un conjunto de resultados, puedes usar una comparación directa con el operador =. Esto asume que la subconsulta siempre devolverá un solo valor (la id correspondiente a 'Electrónicos').
?
En lugar de usar IN con una subconsulta que devuelve un conjunto de resultados, puedes usar una comparación directa con el operador =. Esto asume que la subconsulta siempre devolverá un solo valor (la id correspondiente a 'Electrónicos').

Seleccione el concepto que sea más adecuado en cada caso:
En el ámbito de la gestión de bases de datos, el índice y el ROWID son elementos cruciales para el rendimiento y la optimización de consultas. Un ___ es una estructura que acelera la
recuperación de datos al proporcionar un acceso más eficiente a las filas de una tabla, mejorando así la velocidad de las consultas. Por otro lado, el ___ , o identificador de fila, es un identificador único asociado a cada fila de una tabla. Ambos conceptos juegan un papel esencial en el ___ y la optimización de consultas, ya que permiten a los motores de bases de datos recuperar datos de manera más rápida y eficiente.
**Opciones:**
- afinamiento
- índice
- ROWID
?
1. Índice
2. ROWID
3. Afinamiento
