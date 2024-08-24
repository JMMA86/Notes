#Ingesoft #Sesión #Oscar 

# Resumen Detallado desde la Sección 3 hasta el Final del Documento

**Preguntas sobre la máquina del café:** [Preguntas máquina de café](https://docs.google.com/document/d/1uhBAtyt7nJfX2E1ZL-ATLC_-VpmRF0im2LJLQbR0JWE/edit#heading=h.omofdiln6dkq)
## Estructura y Arquitectura del Software

La arquitectura del software se define como el conjunto de estructuras necesarias para razonar sobre el sistema, incluyendo elementos de software, relaciones entre ellos y propiedades de ambos. A mediados de los años 90, la arquitectura del software comenzó a desarrollarse como una disciplina más amplia, involucrando el estudio de las interacciones y la organización de los componentes del software 13.

### Componentes Clave de la Arquitectura:

1. **Elementos de Software**: Incluyen clases, componentes y módulos.
2. **Relaciones**: Cómo interactúan y se comunican los diferentes elementos.
3. **Propiedades**: Características y comportamientos esperados de los elementos.
4. **Lenguajes de Descripción de Arquitectura**:
    - Lenguajes textuales formales para describir componentes y conectores.
    - Diagramas de clases y objetos para representar interrelaciones.
    - Diagramas de componentes que muestran partes físicas del sistema.
5. **Diagramas de Despliegue**: Representan nodos físicos y sus relaciones.
6. **Diagramas de Entidad-Relación**: Modelos conceptuales de datos.
7. **Diagramas de Flujo**: Representan el flujo de control y acciones.
8. **Especificaciones Formales**: Definiciones rigurosas de interfaces y comportamientos.

## Diseño de Software

El diseño de software es un proceso fundamental dentro del ciclo de vida del desarrollo de software. Se considera generalmente un proceso de dos etapas: la formulación de soluciones y la implementación.

### Conceptos de Diseño:

1. **Problemas Complejos**: Como los problemas "malvados" que no tienen solución definitiva.
2. **Objetivos y Restricciones**: Factores que influyen en el proceso de diseño.
3. **Alternativas de Diseño**: Opciones disponibles que deben ser evaluadas.
4. **Representaciones**: Diferentes maneras de visualizar y comunicar el diseño.
5. **Proceso de Diseño**: Definición de etapas desde la conceptualización hasta la implementación.
6. **Interacción y Presentación**: Cómo se estructura la interacción con los usuarios y la presentación de información.
7. **Manejo de Errores y Excepciones**: Estrategias para prevenir y manejar errores.
8. **Seguridad**: Diseño para prevenir accesos no autorizados y manejar ataques.
## Sección 6: Notaciones de Diseño de Software

La sección aborda las notaciones utilizadas para representar los artefactos de diseño de software, que se dividen en dos categorías principales:

### Descripciones Estructurales (Vista Estática)

1. **Lenguajes de Descripción de Arquitectura (ADLs)**: Lenguajes formales que describen la arquitectura del software en términos de componentes y conectores.
2. **Diagramas de Clases y Objetos**: Representan un conjunto de clases (y objetos) y sus interrelaciones.
3. **Diagramas de Componentes**: Muestran un conjunto de componentes y sus relaciones, representando partes físicas del sistema.
4. **Tarjetas de Responsabilidad de Clases (CRCs)**: Denotan nombres de componentes y sus responsabilidades.
5. **Diagramas de Despliegue**: Representan nodos físicos y sus interrelaciones en el software.
6. **Diagramas de Entidad-Relación (ERDs)**: Representan modelos conceptuales de datos almacenados en repositorios de información.
7. **Lenguajes de Descripción de Interfaces (IDLs)**: Lenguajes similares a la programación que definen las interfaces de los componentes de software.
8. **Gráficos de Estructura**: Describen la estructura de llamadas de los programas.

### Descripciones Comportamentales (Vista Dinámica)

La sección 6 también menciona notaciones utilizadas para representar el comportamiento del software, aunque no se detallan en el contenido extraído.

## Sección 7: Métodos de Diseño de Software

La sección se centra en las estrategias y métodos de diseño de software, incluyendo:

### 7.3 Diseño Orientado a Objetos

1. **Enfoque OO**: Se basa en la identificación de objetos, métodos y atributos, destacando la herencia y el polimorfismo.
2. **Diseño Basado en Componentes**: Se enfoca en la reutilización y la integración de componentes independientes con interfaces bien definidas.
3. **Diseño Centrado en Estructuras de Datos**: Comienza describiendo las estructuras de datos que manipula un programa antes de desarrollar la estructura de control del mismo.

### 7.5 Diseño Basado en Componentes (CBD)

- **Componentes de Software**: Se definen como unidades independientes con interfaces y dependencias bien definidas, que pueden ser compuestas y desplegadas de manera independiente.

### 7.6 Otros Métodos

- **Métodos Iterativos y Adaptativos**: Implementan incrementos de software y reducen el énfasis en requisitos y diseños rigurosos.

### Consideraciones Generales

- **Separación de Preocupaciones**: Permite a los interesados enfocarse en áreas específicas del diseño, facilitando la gestión de la complejidad.
- **Principios de Diseño**: Incluyen enfoques como "KISS" (mantenerlo simple) y "La forma sigue a la función".

## Ejercicio

(a) Identifique los stakeholders del sistema requerido, y las preocupaciones más importantes que podrían tener cada uno de ellos para cumplir con las metas del negocio. 

(b) Realice un análisis global de la misión del negocio, identifique todas las áreas funcionales que requeriría el negocio/sistema. (Nota: recuerden las áreas funcionales del diagrama de Casos de Uso Contextual del ejemplo que vimos en clase, que en ese caso eran 5, pero cubrían todas las áreas de la misión de ese negocio). Sugerencia: use un Fishbone Diagram en VisualParadigm teniendo en cuenta los objetivos del negocio

[Link de la solución](https://docs.google.com/document/d/1PmS51gdmTqY5rS_l19k_yNzWxSvZZBMBxUxsHbYhA4Q/edit)

## Cosas de la presentación de estas muchachas

**Arquitectura de software:** se define como el conjunto de estructuras necesarias para razonar sobre el sistema, incluyendo elementos de software, relaciones entre ellos y propiedades de ambos. (Conjunto de componentes su relación entre ellos y con su entorno)

**Vista arquitectónica:** Es una representación abstracta (modelo) de todo el sistema desde una preocupación en concreto:
- Vista lógica
- Vista de proceso
- Vista física
- Vista de desarrollo

**Estilos de arquitectura:** Conjunto de restricciones (tipos de componentes) sobre como se pueden usar los componentes dentro del sistema.
- Estructuras generales
- Sistemas distribuidos
- Sistemas interactivos
- otros:
	- Batch
	- Interpreter
	- Process control
	- Rule-based

**Patrones de diseño:** Soluciones preestablecidas a problemas comunes. Existen diversos tipos de estos.
- Patrones creacionales.
- Patrones estructurales.
- Patrones de comportamiento.
Por mencionar sus tipos principales.

**Decisión del diseño arquitectural:** A creative process that imply to making decisions that affects the software.

## Diseño usuario-interfaz

Cómo se debe garantizar la interacción entre la persona y la máquina. Para la resolución de este aspecto se deberían tomar en cuenta estas dos preguntas:

**¿Cómo debe de interactuar el usuario con el programa?**
- Lenguaje natural
- Pregunta-respuesta
- Manipulación directa
- Selección de menú
- Form fill-in
- Command language

**¿Cómo se debe presentar la información en el software?**
- La abstracción de visualización
- Separación de presentación y contenido
- Tiempo de respuesta
- Indicadores de estado

## Diseño de software, estrategias y métodos

**Estrategias generales:** Son las que ayudan en el proceso de diseño.
- Divide y vencerás
- Top-down vs bottom-up
- Uso de patrones de lenguaje
- Uso de heurísticas
- Uso de incremento iterativo

**Estrategias por métodos (paradigmas):**
- Diseño orientado a funciones
- Diseño orientado a objetos
- Diseño orientado a datos
- Diseño basado en componentes (CBD)
- Otros:
	- Métodos iterativos y adaptativos
	- Arquitectura basada en servicios

### Herramientas de diseño de software

Son usadas para el soporte en la creación de el diseño de artefactos de software durante el proceso de desarrollo.

---

#Sesión #Ingesoft #Oscar 

# Atributos de calidad de software

Estos hacen parte de los requerimientos no funcionales, pero que son esenciales para asegurar la calidad del producto que se entrega al final.

> To achieve an expected quality level of any quality attribute depends on how the system functions are implemented and designed. Achieving quality attributes also depend on software implementation, and deployment. For example, performance depends on (i) communication among components, (ii) functionalities of each component, (iii) shared resources location, (iv) algorithms implementing functionalities, and (v) codification of these algorithms. In light of this, there are many aspects to consider when aiming at achieving a specific level of a quality attribute.

**Performance**
The performance quality attribute is defined as "The degree to which a system or component accomplishes its designated functions within given constraints, such as speed, accuracy, or memory usage.". This quality attribute is related to how much time it takes a system to respond to events. There are many kinds of events, such as interrupts, messages, requests from users, among others. The
two main aspects that make this quality attribute complex are; (i) the amount of event sources and (ii) event arrival patterns. Examples of event sources are the operating system and user applications. The event arrival patterns may be characterized as periodical, sporadic or stochastic. Periodical events have
a repetition pattern and possibly a deadline, whereas stochastic events occur according to a probabilistic distribution; sporadic events are those not categorizable as neither periodical nor stochastic. Because of its characteristics, performance has aspects of the system that contribute to it. These aspects are all know as sub-attributes or performance factors. The performance sub-attributes through which it can be concretely measured are the following:
- Throughput: The amount of work per unit time.
- Response Time: The elapsed time among event arrival and system response (also known as latency), for example, application loading, screen open and refresh times, etc .
- Deadline: Constraint of time to complete a task.
- Jitter of Response: Latency variation.
- Missing rate: Amount of missed events per unit time.
- Unprocess rate: Amount of unprocessed events per unit time.
- Processing times – functions, calculations, imports, exports
- Query and Reporting times – initial loads and subsequent loads 

**Security**
The extent to which the software is securable; especially the ability of a system to provide different levels of secure access. Confidentiality
- Identification/authentication: Login requirements - access levels, CRUD levels; Password
- requirements - length, special characters, expiry, recycling policies; Inactivity timeouts – duration, actions
- Data privacy/integrity.
Factors:
- Confidentiality
- Identification/authentication: Login requirements - access levels, CRUD levels; Password
- requirements - length, special characters, expiry, recycling policies; Inactivity timeouts – duration, actions
- Data privacy/integrity.

**Auditability**
- Audited elements – what business elements will be audited?
- Audited fields – which data fields will be audited?
- Audit file characteristics - before image, after image, user and time stamp, etc

**Capacity**
- Throughput – how many transactions per hour does the system need to be able to handle?
- Storage – how much data does the system need to be able to store?
- Year-on-year growth requirements

**Availability**
Proportion of time a system is in a functioning condition.
- Hours of operation – when is it available? Consider weekends, holidays, maintenance times, etc
- Locations of operation – where should it be available from, what are the connection requirements?

**Reliability**
How reliable is a system when operated in specified conditions.
- Mean Time Between Failures – What is the acceptable threshold for down-time? e.g. one a year, 4,000 hours
- Mean Time To Recovery – if broken, how much time is available to get the system back up again?

**Integrity**
- Fault trapping (I/O) – how to handle electronic interface failures, etc
- Bad data trapping - data imports, flag-and-continue or stop the import policies, etc
- Data integrity – referential integrity in database tables and interfaces
- Image compression and decompression standards

**Recoverability**
Ability to recover from fatal system crashes, or deal with inconsistent or erroneous data using mechanisms, acceptable to the business, and within equally acceptable times.
- Recovery process – how do recoveries work, what is the process?
- Recovery time scales – how quickly should a recovery take to perform?
- Backup frequencies – how often is the transaction data, set-up data, and system (code) backed-up?
- Backup generations - what are the requirements for restoring to previous instance(s)?

**Compatibility**
- Compatibility with shared applications – What other systems does it need to talk to?
- Compatibility with 3rd party applications – What other systems does it have to live with amicably?
- Compatibility on different operating systems – What does it have to be able to run on?
- Compatibility on different platforms – What are the hardware platforms it needs to work on?

**Maintainability**
Ability of a software system to be corrected or added with new functionality, preventing adverse effects.
- Conformance to architecture standards – What are the standards it needs to conform to or have
exclusions from?
- Conformance to design standards – What design standards must be adhered to or exclusions
created?
- Conformance to coding standards – What coding standards must be adhered to or exclusions
created?

**Usability**
- Look and feel standards - screen element density, layout and flow, colours, UI metaphors, keyboard shortcuts
- Internationalization / localization requirements – languages, spellings, keyboards, paper sizes, etc

**Portability**
The capability of a piece of software to run on multiple platforms.

**Scalability**
Desirable property of a system, network, or process, which indicates its ability to either handle growing amounts of work meanwhile growing or adding components to the deployment, or to be readily enlarged.

**interoperability**
The ability of a component to execute on different technology-specific hardware or software components, without undue overhead and without loss of functionality, maintaining other named systemic requirements. Capacidad del sistema de intercambiar información (comunicación) con otros sistemas, independientemente de la plataforma.

**Concurrency**
The system maintains its integrity when its functionalities are executed in multiple and simultaneous loads.

**Configurability**
How much a system components can be changed or customized prior to its execution without modifying its source code.

**Mobility**
A generic term describing one's ability to use technology untethered, but often used to refer to access to information or applications from occasionally-connected, portable, networked computing devices

**Modifiability**
Ability of a software system to be modified without adverse effects, or without having to follow significant activities of a software development process.

**Throuputh**
is **a measure of how many units of information a system can process in a given amount of time**. It is applied broadly to systems ranging from various aspects of computer and network systems to organizations.

#### Threadpool es un patrón de diseño (wtf)
