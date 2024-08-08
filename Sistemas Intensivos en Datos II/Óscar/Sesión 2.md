#SID #Sesión #Oscar 

En los pcs solo existen archivos de texto plano y archivos binarios

**Gestor de bases de datos:**
- Ocultan la complejidad de abrir y cerrar archivos para una o varias personas

**Componentes:**
- Hardware (Equipo de computo)
- Software (Programas: SGDB, aplicación)
- Personas (Usuarios)
- Datos (Integrada y compartida)

### ERP (Enterprise Resource Planning)
Es la que guarda el comportamiento de una empresa

#### CRM
Es la parte que se encarga de la atención del usuario

### Bases de datos
Conjunto estructurado de datos coherentes
- Integridad (Garantizar la relevancia de los datos)
- Manejo de persistencia
- Evitar las inconsistencias cuando hay concurrencia
- Cumplir con las propiedades de la ACID (Atomicity, Consistency, Isolation, Durability)
- Soporta un modelo de datos
- Soporta un lenguaje de alto nivel
- Control de acceso

*Consistente nativamente:* Los actos realizados en un "registro" tienen que ser replicados en todos los lugares donde se use.

![[Pasted image 20240801121430.png]]

### Aplicación de las bases de datos por parte de clientes

Creció de la arquitectura de dos capas a una de tres capas

![[Pasted image 20240801122000.png]]

### Independencia de los datos

- **Física:** Podemos modificar el esquema interno sin modificar el esquema conceptual. Cambia la forma de almacenar físicamente los datos.
- **Lógica:** Los cambios en el esquema conceptual no deberían alterar el esquema externo. No afectar la visión e los usuarios por cambios en la estructura.

PGA = Donde se ejecuta el PL del PLSQL

BUSCAR LA VISTA DE ARQUITECTURA MÁS DETALLADA QUE SE PUEDA ENCONTRAR