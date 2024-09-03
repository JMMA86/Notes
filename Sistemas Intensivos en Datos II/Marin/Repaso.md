

¿Qué es la independencia de datos? :: Capacidad de modificar el esquema de un nivel sin modificar los demás.

¿Qué componente del DBMS se encarga de cada una de las funciones?
?
- Hardware (Equipo de computo)
- Software (Programas: SGBD, aplicaciones)
- Personas (Usuarios)
- Datos (integrada y compartida)

¿Qué es el diccionario de datos? :: Colección de metadatos que describe los objetos de la base de datos, incluyendo tablas, vistas, índices, procedimientos almacenados, usuarios, permisos, y otras estructuras.

¿Qué son los sistemas de archivos? :: Sistema para archivar información y hacer que esté disponible cuando se solicite.

¿Cuáles son algunos problemas de los sistemas de archivos?
?
- Redundancia e inconsistencia de datos
- Cambios costosos en los datos
- Dificultad para combinar información de diferentes archivos
- Inconsistencias por actualizaciones simultáneas.

¿Qué es un Gestor de Bases de Datos?
?
- Es un sistema para mantener información y que esté disponible cuando se necesite.
- Oculta la capa de complejidad para acceder a los datos de un archivo.
- Maneja información persistente.

¿Cuáles son los componentes principales de un Sistema de Bases de Datos?
?
- Equipo
- Programas
- Usuarios
- Información.

¿Qué es una Base de Datos? :: Conjunto estructurado de datos coherentes.

¿Cuáles son las capacidades del Sistema de Bases de Datos?
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

¿Cuáles son algunas funciones del DBA?
?
- Administrar, supervisar y asegurar el adecuado uso de los datos dentro de un DBMS.
- Garantizar la seguridad de las bases de datos, incluyendo backups y recuperación de desastres.
- Diseñar, desplegar y monitorizar servidores de bases de datos.
- Definir el esquema interno.
- Responsables de la integridad de los datos y la disponibilidad.

¿Qué es un atributo de calidad? :: Características que determinan la utilidad y eficacia de una base de datos.

Definición de Exactitud :: Esenciales para tomar decisiones informadas.

Definición de Completitud :: Necesarios para tener una imagen completa de la situación.

Definición de Actualidad :: Garantizan que las decisiones estén basadas en la información del cliente.

Definición de Consistencia :: Evitan errores y malentendidos.

Definición de Usabilidad :: Los datos fáciles de usar hacen que la base de datos sea más accesible para los usuarios.

Definición de Eficiencia :: Mejoran el rendimiento de la base de datos y reducen los costos.

Definición de Seguridad :: Protegen la información de los usuarios y evitan el acceso no autorizado.

Definición de Disponibilidad :: Los datos disponibles permiten tomar decisiones en el momento adecuado. 7x24.

Definición de Universalidad :: Los datos pueden pertenecer a diferentes dominios. Múltiples tipos de datos. Multimedia.

Definición de Portabilidad :: Los datos y las funcionalidades sobre ellos deben permanecer aún cuando se cambie de versión del SGBD.

Definición de Interoperabilidad :: Los SGBD pueden operar sobre diferentes o múltiples plataformas/Sistemas operativos. 

Definición de Escalabilidad :: La gestión de los datos debe permitir el incremento de los recursos invertidos.

Definición de Escalabilidad flexible :: Incremento o decremento de los recursos invertidos.

Definición de Rendimiento :: Hacer que las consultas consuman menos recursos.

¿Cuáles son las 4 capas de seguridad?
?
- Datos encriptados
- Roles y permisos de acceso
- Objetos de base de datos
- Gestión de transacciones 

¿Qué significa ERP? :: Enterprise Resource Planning: Es la que guarda el comportamiento de una empresa.

¿Qué significa PGA? :: Program Global Area: Es la zona de memoria de cada proceso Oracle. No está compartida y contiene datos e información de control de un único proceso.

¿Qué significa SGA? :: System/Share Global Area: Es la zona de memoria en la que la BD Oracle guarda información sobre su estado. Esta estructura de memoria está disponible para todos los procesos, por eso se dice que está compartida

¿Qué es cost driver? :: La variable que si aumento o disminuyo el costo aumenta o disminuye.

¿Cuáles son los cost drivers de una base de datos local?
?
- I/0 = Siempre va relacionado con 
- CPU = Consumo de recursos
- RED = Dado que la base de datos está compuesta de al menos dos capas de red (Cliente, Servidor), para dar este servicio se tiene que comunicar con paquetes TCP/IP para mantener su separación.

¿Qué tipos de independencia de datos existen?
?
- Física: Podemos modificar el esquema interno sin modificar el esquema conceptual. Cambia la forma de almacenar físicamente los datos.
- Lógica: Los cambios en el esquema conceptual no deberían alterar el esquema externo. No afectar la visión de los usuarios por cambios en la estructura.

¿Qué aumentan los costos en la base de datos?
?
- I/O storage
- Tiempo de ejecución
- Computación
- Networking
- Memoria

¿Qué es una vista? :: Es una tabla virtual que me permite recuperar ciertos datos de una o más tablas a partir de una consulta.

¿Qué es un sinónimo? :: Objeto que proporciona un nombre alternativo para otro objeto de base de datos, llamado objeto base. Sirve para proteger una aplicación cliente de cambios en el nombre o ubicación del objeto base.

¿Cuáles son los pasos del ajuste de SQL (afinamiento)?
?
- Reducir la carga de trabajo.
- Balancear la carga de trabajo.
- Paralelizar la carga de trabajo.

¿Qué es un analizador de consultas? :: Asegurar que las consultas sean sintáctica y semánticamente correctas.

¿Qué es un optimizador de consultas? :: Realiza optimizaciones directas y considera planes de consulta para escoger el más óptimo.

¿Qué es un ejecutor de consulta? :: Toma el plan de ejecución y lo convierte en operaciones de la base de datos, regresando resultados.

¿Qué es la cardinalidad? :: Estimación del número de filas que se obtienen de cada una de las operaciones.

¿Qué es método de acceso? :: La forma en la que los datos son accedidos, a través de un escaneo de tabla o un acceso de índice.

¿Qué es poda de particiones (partition pruning)? :: Comprobación de si se están accediendo sólo las particiones necesarias para resolver una consulta.

¿Qué es ejecución paralela? :: Comprobación de si se está utilizando un método de distribución de datos.

Shared SQL: ¿Qué función cumple el área de Shared SQL en una base de datos? :: Es un área donde se almacena el SQL compartido que puede ser utilizado por múltiples usuarios, ayudando a reducir el uso de memoria y mejorar la eficiencia.

Database Buffer Cache: ¿Cuál es la función de la Database Buffer Cache en una base de datos? :: Aquí se almacenan temporalmente los datos que se leen o escriben en la base de datos. Los bloques de datos que se encuentran en esta caché pueden ser modificados antes de ser escritos en los datafiles.

Redo Log Buffer: ¿Qué se almacena en el Redo Log Buffer? :: Almacena los cambios realizados en la base de datos antes de que se escriban en los archivos de redo log. Este buffer es clave para la recuperación de la base de datos en caso de fallo.

PMON (Process Monitor): ¿Cuál es la función del proceso PMON en una base de datos? :: Se encarga de limpiar los recursos cuando un proceso falla, liberando bloques y anulando transacciones.

LCK (Lock Manager): ¿Para qué sirve el proceso LCK en una base de datos distribuida? :: Administra los locks en una base de datos distribuida.

RECO (Recoverer): ¿Cuál es el rol del proceso RECO en una base de datos distribuida? :: Se encarga de la recuperación en caso de fallos en una base de datos distribuida.

SMON (System Monitor): ¿Qué tarea realiza el proceso SMON en una base de datos? :: Realiza la recuperación automática de la base de datos en caso de fallo del sistema.

SNP (Snapshot Process): ¿Qué función tiene el proceso SNP en una base de datos? :: Se encarga de gestionar las operaciones de snapshot, como los trabajos programados.

DBWR (Database Writer): ¿Cuál es la función del proceso DBWR? :: Escribe los bloques modificados desde la Database Buffer Cache a los datafiles.

CKPT (Checkpoint): ¿Qué tarea realiza el proceso CKPT en una base de datos? :: Señala los puntos de control y asegura que los datafiles y control files están sincronizados.

LGWR (Log Writer): ¿Para qué se utiliza el proceso LGWR? :: Escribe las entradas del Redo Log Buffer en los redo log files.

ARCH (Archiver): ¿Cuál es la función del proceso ARCH? :: Copia los redo logs llenos a un almacenamiento offline, lo que permite la recuperación ante desastres.

Control Files: ¿Qué contienen los Control Files y por qué son críticos? :: Contienen información sobre la estructura de la base de datos y son críticos para su operación.

Redo Log Files: ¿Qué importancia tienen los Redo Log Files en una base de datos? :: Guardan un registro de los cambios realizados en la base de datos, lo que permite la recuperación en caso de fallo.

Offline Storage: ¿Cuál es la importancia del Offline Storage en una base de datos? :: Es el almacenamiento fuera de línea donde se guardan los redo log files archivados, importantes para la recuperación en caso de un fallo catastrófico.

