#SID #Oscar #Preparación 

- PostgreSQL:
	- Es orientada a objetos y es de código abierto
		- **Tiene herencia de tablas**
		- **Soporta varios tipos de datos:**
			- Los usuarios pueden crear sus propios tipos de datos, funciones y operadores
		- **Soporta datos complejos:**
			- Permite almacenar dato como JSON y XML, así como realizar búsquedas y análisis complejos
		- **Tiene un optimizador de consultas avanzado**
		- **Alta concurrencia:**
			- Utiliza un sistema de control de concurrencia multiversión (MVCC) para manejar múltiples transacciones simultáneamente sin bloqueos.
- Como funciona el motor, que algoritmos usa
	- Se basa en una arquitectura Cliente/Servidor
		- La funcionalidad principal se centra en Postmaster, ahí viene las subdivisiones en diferentes instancias de postgres y finalmente cada una de estas a su cliente correspondiente.
			- **Postmaster:** Se encarga de iniciar y gestionar todos los procesos secundarios. Gestiona y escucha las conexiones de clientes en un puerto específico. Es decir, las instancias que se generan en el back-end.
			- **WAL:** Es un sistema de registro que asegura que todas las modificaciones de los datos se registren en un archivo log antes de registrarlas formalmente.
			- **Archivador:** Transfiere los archivos WAL des-actualizados a un almacenamiento seguro, esto es para la recuperación ante errores.
- **Principios ACID:**
	- **Atomicidad:**
		- Las transacciones son todo o nada, es decir, se garantiza que las transacciones se realicen por completo o que no se haga nada de lo contrario.
	- **Consistencia:**
		- Solo se guardan datos válidos. Es decir que la base de datos mantenga sus reglas antes y después de una transacción. (Que no se pierda una PK por ejemplo)
	- **Aislamiento:**
		- Las transacciones no se afectan entre sí, si son simultáneas.
	- **Durabilidad:**
		- Los datos escritos no se perderán, incluso en casos de errores o fallos.
- **Organización del dbms:**
	- GUI
	- Aplicaciones
	- Lenguaje de consulta
	- Optimización de consulta
	- Ejecución de consulta
	- Almacenamiento
	- Gestión de datos
	- Gestión de transacciones
	- Gestión de concurrencia
	- Gestión de seguridad
- **Cuales son los tres niveles ANSI/SPARC:**
	- **Nivel físico**
		- Se enfoca en el almacenamiento de los datos.
		- Como se organizan los datos en disco incluyendo como se identifican y la estructura de los archivos.
	- **Nivel lógico**
		- Se enfoca en la organización lógica de los datos, independientemente del almacenamiento físico.
		- Define estructuras como las tablas, relaciones, vistas y otros objetos de la base de datos.
	- **Nivel de vista**
		- Se enfoca en la presentación de los datos a los usuarios y aplicaciones.
		- Define las vistas, reportes y otros mecanismos para acceder y presentar los datos de manera significativa para los usuarios.
- **Atributos de calidad:**
	- Vistos:
		- **Niveles de seguridad**
			- Roles y permisos de acceso
			- Vistas
			- Sinónimos
- Independencia de los datos
	- **Física:** Podemos modificar el esquema interno sin modificar el esquema conceptual. Cambia la forma de almacenar físicamente los datos.
	- **Lógica:** Los cambios en el esquema conceptual no deberían alterar el esquema externo. No afectar la visión e los usuarios por cambios en la estructura.
- **PGA:** 
	- Program Global Area, es la zona de memoria de cada proceso de Oracle. No está compartida y contiene datos e información de control de un único proceso.
	- Donde se ejecuta el Procedural Language del PLSQL
- **Cosas que aumentan los costos en las bases de datos:**
	- I/O storage
	- Tiempo de ejecución
	- Computación
	- Networking
	- Memoria
- **SGA**
	- System Global Area