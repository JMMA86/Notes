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
