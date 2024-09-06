#piececontrol/sid/parcial1

1. ¿Qué es la independencia de datos? :: Capacidad de modificar el esquema de un nivel sin modificar los demás.
<!--SR:!2024-09-04,2,233-->

2. ¿Qué es el diccionario de datos? :: Colección de metadatos que describe los objetos de la base de datos, incluyendo tablas, vistas, índices, procedimientos almacenados, usuarios, permisos, y otras estructuras.
<!--SR:!2024-09-05,2,223-->

3. ¿Qué son los sistemas de archivos? :: Sistema para archivar información y hacer que esté disponible cuando se solicite.
<!--SR:!2024-09-04,2,236-->

4. ¿Qué es una Base de Datos? :: Conjunto estructurado de datos coherentes.
<!--SR:!2024-09-05,2,220-->

5. ¿Qué componente del DBMS se encarga de cada una de las funciones?
?
- Hardware (Equipo de computo)
- Software (Programas: SGBD, aplicaciones)
- Personas (Usuarios)
- Datos (integrada y compartida)
<!--SR:!2024-09-04,2,233-->

6. ¿Cuáles son algunos problemas de los sistemas de archivos?
?
- Redundancia e inconsistencia de datos
- Cambios costosos en los datos
- Dificultad para combinar información de diferentes archivos
- Inconsistencias por actualizaciones simultáneas.
<!--SR:!2024-09-05,2,216-->

7. ¿Qué es un Gestor de Bases de Datos?
?
- Es un sistema para mantener información y que esté disponible cuando se necesite.
- Oculta la capa de complejidad para acceder a los datos de un archivo.
- Maneja información persistente.
<!--SR:!2024-09-05,2,223-->

8. ¿Cuáles son los componentes principales de un Sistema de Bases de Datos?
?
- Equipo
- Programas
- Usuarios
- Información.
<!--SR:!2024-09-04,1,203-->

9. ¿Cuáles son las capacidades del Sistema de Bases de Datos?
?
- Manejo de persistencia.
- Permite realizar control de acceso.
- Se puede mantener la integridad.
- Evita inconsistencias cuando hay concurrencia.
- Soporta un modelo de datos.
- Soporta un lenguaje de alto nivel.
- Se puede evitar inconsistencias cuando hay concurrencia soporta un lenguaje de alto nivel,.
- Cumple con las propiedades ACID de las transacciones.
- Garantiza la seguridad de las bases de datos.
<!--SR:!2024-09-04,2,233-->

10. ¿Qué es un atributo de calidad? :: Características que determinan la utilidad y eficacia de una base de datos.
<!--SR:!2024-09-05,2,220-->

11. Definición de Exactitud :: Datos precisos esenciales para tomar decisiones informadas.
<!--SR:!2024-09-04,2,233-->

12. Definición de Completitud :: Necesarios para tener una imagen completa de la situación.
<!--SR:!2024-09-04,2,233-->

13. Definición de Actualidad :: Garantizan que las decisiones estén basadas en la información del cliente.
<!--SR:!2024-09-04,2,233-->

14. Definición de Consistencia :: Evitan errores y malentendidos.
<!--SR:!2024-09-05,2,220-->

15. Definición de Usabilidad :: Los datos fáciles de usar hacen que la base de datos sea más accesible para los usuarios.
<!--SR:!2024-09-05,2,230-->

16. Definición de Eficiencia :: Mejoran el rendimiento de la base de datos y reducen los costos.
<!--SR:!2024-09-04,2,233-->

17. Definición de Seguridad :: Protegen la información de los usuarios y evitan el acceso no autorizado.
<!--SR:!2024-09-04,2,243-->

18. Definición de Disponibilidad :: Los datos disponibles permiten tomar decisiones en el momento adecuado. 7x24.
<!--SR:!2024-09-04,2,233-->

19. Definición de Universalidad :: Los datos pueden pertenecer a diferentes dominios. Múltiples tipos de datos. Multimedia.
<!--SR:!2024-09-04,1,193-->

20. Definición de Portabilidad :: Los datos y las funcionalidades sobre ellos deben permanecer aún cuando se cambie de versión del SGBD.
<!--SR:!2024-09-05,2,223-->

21. Definición de Interoperabilidad :: Los SGBD pueden operar sobre diferentes o múltiples plataformas/Sistemas operativos.
<!--SR:!2024-09-05,2,213-->

22. Definición de Escalabilidad :: La gestión de los datos debe permitir el incremento de los recursos invertidos.
<!--SR:!2024-09-05,2,216-->

23. Definición de Escalabilidad flexible :: Incremento o decremento de los recursos invertidos.
<!--SR:!2024-09-05,2,230-->

24. Definición de Rendimiento :: Hacer que las consultas consuman menos recursos.
<!--SR:!2024-09-05,2,230-->

25. ¿Cuáles son algunas funciones del DBA?
?
- Administrar, supervisar y asegurar el adecuado uso de los datos dentro de un DBMS.
- Garantizar la seguridad de las bases de datos, incluyendo backups y recuperación de desastres.
- Diseñar, desplegar y monitorizar servidores de bases de datos.
- Definir el esquema interno.
- Responsables de la integridad de los datos y la disponibilidad.
<!--SR:!2024-09-04,2,233-->

26. ¿Cuáles son las 4 capas de seguridad?
?
- Datos encriptados
- Roles y permisos de acceso
- Objetos de base de datos
- Gestión de transacciones
<!--SR:!2024-09-04,1,200--> 

27. ¿Qué significa ERP? :: Enterprise Resource Planning: Es la que guarda el comportamiento de una empresa.
<!--SR:!2024-09-04,1,193-->

28. ¿Qué significa PGA? :: Program Global Area: Es la zona de memoria de cada proceso Oracle. No está compartida y contiene datos e información de control de un único proceso.
<!--SR:!2024-09-04,2,233-->

29. ¿Qué significa SGA? :: System/Share Global Area: Es la zona de memoria en la que la BD Oracle guarda información sobre su estado. Esta estructura de memoria está disponible para todos los procesos, por eso se dice que está compartida
<!--SR:!2024-09-04,2,233-->

30. ¿Qué es cost driver? :: La variable que si aumento o disminuyo el costo aumenta o disminuye.
<!--SR:!2024-09-05,2,213-->

31. ¿Cuáles son los cost drivers de una base de datos local?
?
- I/0 = Siempre va relacionado con
- CPU = Consumo de recursos
- RED = Dado que la base de datos está compuesta de al menos dos capas de red (Cliente, Servidor), para dar este servicio se tiene que comunicar con paquetes TCP/IP para mantener su separación.
<!--SR:!2024-09-04,2,236-->

32. ¿Qué tipos de independencia de datos existen?
?
- Física: Podemos modificar el esquema interno sin modificar el esquema conceptual. Cambia la forma de almacenar físicamente los datos.
- Lógica: Los cambios en el esquema conceptual no deberían alterar el esquema externo. No afectar la visión de los usuarios por cambios en la estructura.
<!--SR:!2024-09-04,2,233-->

33. ¿Qué aumentan los costos en la base de datos?
?
- I/O storage
- Tiempo de ejecución
- Computación
- Networking
- Memoria
<!--SR:!2024-09-04,1,210-->

34. ¿Qué es una vista? :: Es una tabla virtual que me permite recuperar ciertos datos de una o más tablas a partir de una consulta.
<!--SR:!2024-09-05,2,213-->

35. ¿Qué es un sinónimo? :: Objeto que proporciona un nombre alternativo para otro objeto de base de datos, llamado objeto base. Sirve para proteger una aplicación cliente de cambios en el nombre o ubicación del objeto base.
<!--SR:!2024-09-04,2,233-->

36. ¿Cuáles son los pasos del ajuste de SQL (afinamiento)?
?
- Reducir la carga de trabajo.
- Balancear la carga de trabajo.
- Paralelizar la carga de trabajo.
<!--SR:!2024-09-04,1,193-->

37. ¿Qué es un analizador de consultas? :: Asegurar que las consultas sean sintáctica y semánticamente correctas.
<!--SR:!2024-09-04,1,200-->

38. ¿Qué es un optimizador de consultas? :: Realiza optimizaciones directas y considera planes de consulta para escoger el más óptimo.
<!--SR:!2024-09-04,2,240-->

39. ¿Qué es un ejecutor de consulta? :: Toma el plan de ejecución y lo convierte en operaciones de la base de datos, regresando resultados.
<!--SR:!2024-09-04,1,196-->

40. ¿Qué es la cardinalidad? :: Estimación del número de filas que se obtienen de cada una de las operaciones.
<!--SR:!2024-09-04,2,233-->

41. ¿Qué es método de acceso? :: La forma en la que los datos son accedidos, a través de un escaneo de tabla o un acceso de índice.
<!--SR:!2024-09-04,1,210-->

42. ¿Qué es poda de particiones (partition pruning)? :: Comprobación de si se están accediendo sólo las particiones necesarias para resolver una consulta.
<!--SR:!2024-09-04,1,193-->

43. ¿Qué es ejecución paralela? :: Comprobación de si se está utilizando un método de distribución de datos.
<!--SR:!2024-09-05,2,216-->

44. Shared SQL: ¿Qué función cumple el área de Shared SQL en una base de datos? :: Es un área donde se almacena el SQL compartido que puede ser utilizado por múltiples usuarios, ayudando a reducir el uso de memoria y mejorar la eficiencia.
<!--SR:!2024-09-05,2,213-->

45. Database Buffer Cache: ¿Cuál es la función de la Database Buffer Cache en una base de datos? :: Aquí se almacenan temporalmente los datos que se leen o escriben en la base de datos. Los bloques de datos que se encuentran en esta caché pueden ser modificados antes de ser escritos en los datafiles.
<!--SR:!2024-09-05,2,213-->

46. Redo Log Buffer: ¿Qué se almacena en el Redo Log Buffer? :: Almacena los cambios realizados en la base de datos antes de que se escriban en los archivos de redo log. Este buffer es clave para la recuperación de la base de datos en caso de fallo.
<!--SR:!2024-09-04,2,240-->

47. PMON (Process Monitor): ¿Cuál es la función del proceso PMON en una base de datos? :: Se encarga de limpiar los recursos cuando un proceso falla, liberando bloques y anulando transacciones.
<!--SR:!2024-09-04,1,210-->

48. LCK (Lock Manager): ¿Para qué sirve el proceso LCK en una base de datos distribuida? :: Administra los locks en una base de datos distribuida.
<!--SR:!2024-09-04,2,240-->

49. RECO (Recoverer): ¿Cuál es el rol del proceso RECO en una base de datos distribuida? :: Se encarga de la recuperación en caso de fallos en una base de datos distribuida.
<!--SR:!2024-09-04,2,236-->

50. SMON (System Monitor): ¿Qué tarea realiza el proceso SMON en una base de datos? :: Realiza la recuperación automática de la base de datos en caso de fallo del sistema.
<!--SR:!2024-09-05,3,250-->

51. SNP (Snapshot Process): ¿Qué función tiene el proceso SNP en una base de datos? :: Se encarga de gestionar las operaciones de snapshot, como los trabajos programados.
<!--SR:!2024-09-04,2,233-->

52. DBWR (Database Writer): ¿Cuál es la función del proceso DBWR? :: Escribe los bloques modificados desde la Database Buffer Cache a los datafiles.
<!--SR:!2024-09-05,2,220-->

53. CKPT (Checkpoint): ¿Qué tarea realiza el proceso CKPT en una base de datos? :: Señala los puntos de control y asegura que los datafiles y control files están sincronizados.
<!--SR:!2024-09-04,1,193-->

54. LGWR (Log Writer): ¿Para qué se utiliza el proceso LGWR? :: Escribe las entradas del Redo Log Buffer en los redo log files.
<!--SR:!2024-09-04,2,233-->

55. ARCH (Archiver): ¿Cuál es la función del proceso ARCH? :: Copia los redo logs llenos a un almacenamiento offline, lo que permite la recuperación ante desastres.
<!--SR:!2024-09-04,2,233-->

56. Control Files: ¿Qué contienen los Control Files y por qué son críticos? :: Contienen información sobre la estructura de la base de datos y son críticos para su operación.
<!--SR:!2024-09-04,1,210-->

57. Redo Log Files: ¿Qué importancia tienen los Redo Log Files en una base de datos? :: Guardan un registro de los cambios realizados en la base de datos, lo que permite la recuperación en caso de fallo.
<!--SR:!2024-09-04,2,240-->

58. Offline Storage: ¿Cuál es la importancia del Offline Storage en una base de datos? :: Es el almacenamiento fuera de línea donde se guardan los redo log files archivados, importantes para la recuperación en caso de un fallo catastrófico.
<!--SR:!2024-09-04,2,236-->


60. En PostgreSQL, ¿cuál es el papel del Postmaster en la arquitectura del servidor?
a. Gestiona las conexiones de clientes y coordina los procesos del servidor.
b. Administra el almacenamiento en el disco.
c. Ninguna es correcta
d. Controla la replicación de datos.
e. Ejecuta consultas y transacciones.
?
Gestiona las conexiones de clientes y coordina los procesos del servidor.
<!--SR:!2024-09-04,2,233-->


60. ¿Pueden los tablespaces en un SGBD contener datafiles en diferentes discos duros?
Verdadero
Falso
?
La respuesta correcta es 'Verdadero'
<!--SR:!2024-09-04,2,240-->


61. ¿Cual de los siguientes SGBD se caracteriza por tener un wiredtiger como default de motor de almacenamiento?
a. Ninguno es correcto
b. Neo4J
c. MongoDB
d. Cassandra
e. SQL Server
?
MongoDB
<!--SR:!2024-09-05,2,213-->

 
62. ¿Qué significa PGA en la arquitectura de Oracle y cuál es su función principal?
a. Program Global Area, gestiona la memoria compartida entre diferentes procesos.
b. Private Global Area, almacena datos temporales y de sesión para cada proceso.
c. Public Grid Access, proporciona acceso público a la base de datos.
d. Process Global Allocation, controla la ejecución de consultas y transacciones.
?
Private Global Area, almacena datos temporales y de sesión para cada proceso.
<!--SR:!2024-09-04,1,200-->

 
63. ¿Cuáles son los componentes que conforman la memoria interna en la arquitectura de Oracle?
a. Ninguna es correcta
b. MMAM , CMON
c. PGA, SGA
d. ARCn
?
PGA, SGA
<!--SR:!2024-09-05,2,213-->

 
64. ¿Qué es la consistencia en el contexto de bases de datos y por qué es un atributo de calidad crucial?
a. La capacidad de recuperarse de fallos sin perder datos.
b. La capacidad de manejar grandes volúmenes de datos.
c. La velocidad con la que se pueden realizar consultas.
d. La garantía de que los datos cumplen con las reglas y restricciones definidas.
?
La garantía de que los datos cumplen con las reglas y restricciones definidas.
<!--SR:!2024-09-04,2,243-->

 
65. ¿Cuáles de las siguientes combinaciones podría implementar de mejor manera la maximización del atributo de calidad de seguridad en un SGBD?
a. Mediante Objetos de la Base de Datos ( sinónimos y vistas)
b. Mediante gestión de Transacciones
c. Mediante datos encriptados + roles y permisos de acceso a los objetos + Objetos de la base de datos(sinónimos y vistas)
d. Mediante datos encriptados + roles y permisos de acceso a los objetos
?
Mediante datos encriptados + roles y permisos de acceso a los objetos + Objetos de la base de datos(sinónimos y vistas)
<!--SR:!2024-09-04,2,233-->

 
66. ¿Con la encriptación de datos en una tabla, se garantiza la seguridad como atributo de calidad en un SGBD?
a. Solo si se utiliza un algoritmo de encriptación fuerte
b. No
c. Depende del tamaño de la base de datos y el número de usuarios.
d. Sí
?
No
<!--SR:!2024-09-05,3,250-->

 
67. ¿Qué significa el término escalabilidad en el contexto de bases de datos y por qué es esencial?
a. La capacidad de recuperarse de fallos sin perder datos.
b. La eficiencia en el uso de recursos de hardware.
c. La habilidad para manejar un aumento en la carga de trabajo o en el tamaño de la base de datos.
d. La velocidad con la que se pueden realizar consultas.
e. Ninguna es correcta
?
La habilidad para manejar un aumento en la carga de trabajo o en el tamaño de la base de datos.
<!--SR:!2024-09-04,2,240-->

 
68. ¿Qué aspectos aborda el atributo de calidad de un SGBD en cuanto a rendimiento?
a. Optimización de consultas
b. Escalabilidad
c. Seguridad de datos
d. Ninguna es correcta
e. Todas son correctas
?
Optimización de consultas
<!--SR:!2024-09-04,2,233-->


69. Texto informativo
Caso de Estudio: Sistema de Ventas de Pasajes Aéreos para una Aerolínea
Descripción General del Sistema:
La aerolínea opera un sistema de ventas de pasajes aéreos para gestionar reservas, ventas y consultas relacionadas con la disponibilidad de vuelos y precios. Este sistema maneja un gran volumen de transacciones diarias, ya que los clientes realizan consultas en busca de vuelos disponibles, tarifas y asientos.
Con el crecimiento continuo de la demanda y el aumento de consultas de disponibilidad de vuelos, el rendimiento del sistema ha comenzado a verse afectado. Las consultas, especialmente aquellas relacionadas con la disponibilidad de asientos, experimentan tiempos de respuesta más lentos.
Durante las horas pico, el sistema experimenta un aumento significativo en la carga concurrente debido a la alta demanda de reservas y consultas de vuelos.
Para mejorar el rendimiento en las consultas relacionadas con los vuelos disponibles entre una ciudad A y B, ¿cuál sería el mejor tipo de índice a crear sobre la tabla VUELOS?
a. Índice no agrupado en las columnas de origen y destino.
b. Índice agrupado en la columna de número de vuelo.
c. Índice no agrupado en la columna de fecha de vuelo.
d. Índice único en la columna de aerolínea.
?
Índice no agrupado en las columnas de origen y destino.
<!--SR:!2024-09-04,2,234-->

 
70. ¿Cuál de los siguientes tipos de índices sería más adecuado para mejorar el rendimiento en consultas que buscan vuelos por fecha específica?
a. Índice único en la columna de aerolínea.
b. Índice en la columna de fecha de vuelo.
c. Índice en la columna de número de vuelo.
d. Índice en la columna de origen.
?
Índice en la columna de fecha de vuelo.
<!--SR:!2024-09-04,2,233-->

 
71. ¿Cómo se podría mejorar el rendimiento en las consultas relacionadas con los vuelos disponibles entre una
ciudad A y B?  Cual de los siguientes métodos de acceso serıa el de menor costo al hacer una consulta sobre
la tabla VUELOS:
a. Table access by ROWID
b. Full Scan Table
c. Index unique scan
d. Index range scan
e. Index by Primary Key
?
Index range scan
<!--SR:!2024-09-04,2,234-->

 
72. Se quiere optimizar consultas que recuperan información sobre vuelos cancelados.¿Qué tipo de índice sería
más útil para consultas que filtran por el estado de vuelo (cancelado o no cancelado)?
a. Índice no agrupado en la columna de origen.
b. Índice único en la columna de aerolínea.
c. Índice no agrupado en la columna de estado de vuelo.
d. Índice agrupado en la columna de número de vuelo.
?
Índice no agrupado en la columna de estado de vuelo.
<!--SR:!2024-09-04,2,233-->


73. ¿El costo de ejecutar una operación en una consulta SQL viene dado en función de?
a. Alcance, tiempo y RAM
b. Ninguna es correcta
c. E/S de disco, RAM y CPU
d. Tiempo de ejecución y complejidad
e. Costo de recorrer el árbol de índice.
?
E/S de disco, RAM y CPU
<!--SR:!2024-09-04,2,233-->


74. ¿Cuál de los siguientes queries utiliza una mejor aproximación para evitar una transformación de columna?
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
<!--SR:!2024-09-06,4,270-->



75. ¿Cuál de las siguientes descripciones define correctamente un índice en una base de datos y su impacto en el rendimiento?
a. Un conjunto de datos ordenados de valores únicos que facilitan la organización y recuperación de datos, a pesar de incrementar el espacio de almacenamiento y disminuir la velocidad de las consultas complejas.
b. Una categoría de usuarios autorizados, que agiliza las operaciones de búsqueda y clasificación de datos.
c. Una lista de nombres de tablas, que agiliza las operaciones de búsqueda y clasificación de datos.
d. Una estructura que mejora la velocidad de las consultas al proporcionar un acceso más rápido a losdatos, aunque puede aumentar el tiempo de escritura y almacenamiento.
?
Una estructura que mejora la velocidad de las consultas al proporcionar un acceso más rápido a los datos, aunque puede aumentar el tiempo de escritura y almacenamiento.
<!--SR:!2024-09-05,2,230-->



76. Seleccione el concepto que sea más adecuado en cada caso:
En el ámbito de la gestión de bases de datos, el índice y el ROWID son elementos cruciales para el rendimiento y la optimización de consultas. Un ==índice== es una estructura que acelera la recuperación de datos al proporcionar un acceso más eficiente a las filas de una tabla, mejorando así la velocidad de las consultas. Por otro lado, el ==ROWID==, o identificador de fila, es un identificador único asociado a cada fila de una tabla. Ambos conceptos juegan un papel esencial en el ==afinamiento== y la optimización de consultas, ya que permiten a los motores de bases de datos recuperar datos de manera más rápida y eficiente.
**Opciones:**
- afinamiento
- índice
- ROWID
<!--SR:!2024-09-04,2,236!2024-09-04,2,233!2024-09-04,2,233-->



77. Seleccione el concepto que sea más adecuado en cada caso:
- Es el ajuste de la estructura de la base de datos para
adaptarse mejor a los patrones de acceso y consulta.
- Identificador único asignado a cada fila de una tabla en
una base de datos.
- Para asegurar que el optimizador de consultas tome
decisiones basadas en información precisa.
- En una base de datos es una estructura que mejora la
eficiencia de las consultas al proporcionar un acceso
rápido y ordenado a los datos.
**Opciones:**
- Rowid
- Afinación del esquema
- Índice
- Mantenimiento regular de estadísticas
?
 Respuesta 1: Afinación del esquema
 Respuesta 2: Rowid
 Respuesta 3: Mantenimiento regular de estadísticas
 Respuesta 4: Índice
<!--SR:!2024-09-05,2,213-->


78. ¿Cuál de las siguientes afirmaciones describe correctamente un posible motivo para reescribir esta consulta?
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
<!--SR:!2024-09-05,3,250-->

79. Table access by ROWID :: Es un método de acceso donde la base de datos utiliza el ROWID, un identificador único para cada fila en una tabla, para localizar de manera directa una fila específica. Este método es muy eficiente ya que accede directamente al lugar en el disco donde se encuentra la fila.
<!--SR:!2024-09-04,2,233-->

80. Full Scan Table :: Es un método de acceso donde se lee toda la tabla, fila por fila, para encontrar los datos que coinciden con la consulta. Este método es menos eficiente para tablas grandes, pero puede ser necesario si no hay un índice adecuado disponible.
<!--SR:!2024-09-04,2,233-->

81. Index unique scan :: Es un método de acceso donde se utiliza un índice único para encontrar una única fila en la tabla. Este tipo de escaneo es muy eficiente cuando se busca una clave única que está indexada.
<!--SR:!2024-09-04,2,233-->

82. Index range scan :: Es un método de acceso donde se utiliza un índice para acceder a un rango de valores en la tabla. Es útil cuando se consulta sobre un rango de valores o se utilizan operadores como `<`, `>`, `BETWEEN`, o `LIKE`.
<!--SR:!2024-09-04,2,233-->

83. Index by Primary Key :: Es un método de acceso donde se utiliza un índice basado en la clave primaria para localizar filas. Dado que las claves primarias son únicas, este acceso es rápido y eficiente, similar al escaneo único de índices.
<!--SR:!2024-09-04,2,233-->

84. ¿Qué es un índice agrupado? :: Es un tipo de índice donde los datos de la tabla se almacenan físicamente en el disco en el orden de las columnas del índice.
<!--SR:!2024-09-05,2,227-->

85. ¿Qué es un índice no agrupado? :: Es un tipo de índice donde los datos no se almacenan físicamente en el orden de las columnas del índice, sino que se usa una estructura separada que contiene punteros a las filas correspondientes en la tabla.
<!--SR:!2024-09-05,2,227-->

86. ¿Cuántos índices agrupados puede tener una tabla? :: Una tabla puede tener solo un índice agrupado.
<!--SR:!2024-09-05,2,227-->

87. ¿Cuántos índices no agrupados puede tener una tabla? :: Una tabla puede tener múltiples índices no agrupados.
<!--SR:!2024-09-05,2,227-->

88. ¿Cuál es la diferencia principal entre un índice agrupado y uno no agrupado? :: La diferencia principal es que un índice agrupado almacena los datos físicamente en el orden de las columnas del índice, mientras que un índice no agrupado mantiene los datos en un orden lógico separado y usa punteros a las filas.
<!--SR:!2024-09-05,2,227-->

89. ¿Cuándo es más eficiente usar un índice agrupado? :: Es más eficiente usar un índice agrupado cuando se realizan consultas que implican un rango de valores en las columnas indexadas, ya que los datos están almacenados contiguamente en el disco.
<!--SR:!2024-09-05,2,227-->

90. ¿Por qué se podría elegir un índice no agrupado? :: Se podría elegir un índice no agrupado para optimizar búsquedas específicas en columnas sin necesidad de alterar el orden físico de los datos en la tabla.
<!--SR:!2024-09-05,2,227-->
