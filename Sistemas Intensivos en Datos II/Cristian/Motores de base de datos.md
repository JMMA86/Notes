
## Neo4j

Orientada a grafos, basado en cluster distribuido. Cumple con ACID (atomicidad consistencia, aislamiento y durabilidad). Trata de aislar operaciones que ocurren de forma simultanea.

### Características

- Modelo de grafos
- Arquitectura de cluster distribuido (varios servidores)
- Implementa el lenguaje cypher

### Arquitectura

- HA Cluster: usa el modelo master slave, failover automático, consistencia eventual
- Multi-Cluster: distribución geográfica, independencia, interoperabilidad
- Embedded Neo4j: bajo retardo, simplicidad de despliegue, control total.
- Standalone: instancia de neo4j, que no requieren disponibilidad o escalabilidad.
- Causal Cluster: leader follower, raft protocol (garantiza consistencia), y read replicas.

---

## Elastisearch

Búsqueda y análisis distribuido de código abierto, trabaja con grandes vovlúmenes de datos en tiempo real. Tiene problemas con palabras similares (errores tipográficos, en desorden o palabras que no tienen) que podrían devolver resultados muy distintos.

### Arquitectura

- Índices: el sitio donde se guarda la información en formato JSON.
- Nodo: sistema de computo que se encarga de una tarea:
	- nodo maestro
	- nodo elastisearch
- Shard: primario y réplica, son particiones de un índice que se guardan en los nodos.

### Funcionamiento

#### Indexación

Almacenar índices para búsqueda:
- recepción
- análisis: filtro de caracteres, tokenizador (quitar espacios), filtro de tokens (lowercase).
- creación del índice invertido (conjunto de términos con sus frecuencias)
- almacenamiento

#### Relevancia de búsqueda

- Algoritmo BM25: para veer que tan relevante es un resultado para la búqueda dada
	- Frecuencia de aparición: mide cuantas veces en un término
	- Frecuencia inversa (IDF): mide cuantas veces aparece un término en los documentos del índice.
	- Norma de Longitud de campo: cada cuanto aparece en el documento.

#### Compresión de consultas

- Consulta match: se pasa una palabra exacta en un campo específico
- multi-match: búsqueda exacta en varios campos

#### Mejora de consultas

- Dar mayor importancia a algunos campos
- Filtrar algunos campos.
- Consultas difusas para encontrar errores tipográficos.

---

## REDIS

SIsetma no relacional, usa clave valor y los datos se almacenan en memoria RAM, los datos son volátiles. Retorna rápidamente los datos que tiene almacenados como en una caché. Logra tiempos de $O(1)$ o $O(\log n)$, con la desventaja de perder datos. Permite trabajar con distinos tipos de datos a la vez.

- RDB: REDIS database, captura los datos en cada momento `save <ndata> <nmodifications>`. 
- AOF: Append Only File, es un poco más lento, pero reduce la pérdida de datos.

Generalmente se usa para sesiones o datos temporales, se puede combinar con otras arquitecturas para lograr mayor estabilidad.

REDIS HA: crea una instancia para respaldar los datos, se hace al escalar horizontalmente, es decir, conectar más nodos.

#### Estructura

Formado por los tipos Main, secundarias y sentinelas. Los sentinelas buscan errores y notan el eseatdo general de la base de datos. Por medio del goosing (votación de sentinelas), se puede promover un secundario a main.

Utiliza la técnica Sharding asignar grupos con hashes, se usa un algoritmo para evitar redimensionar el rango de los shards y evitar errores. 

---

## Cosmos DB

Desarrollada por Microsoft, permite escalabilidad automática y arquitectura distribuida con réplicas, logrando  una baja latencia. Tiene 5 niveles de consistencia ajustable. Cumple con las propiedades ACID.

#### Arquitectura

La estructura consiste de los siguientes elementos en su partición lógica:

- Base de Datos
- Contenedor
- Item o documento

En la partición física utiliza el patrón de leader follower.

#### Conexiones

La conexión pasa por distintos puntos, desde el servidor hasta el cliente.

- Regiones de Azure
- Centros de datos
- Sellos
- Dominios de error
- Clústeres
- Máquina de Azure
- Maquina
- Replica
- Motor de BD

---

## MongoDB

Es más flexible, escalable y eficiente al usar un formato con estructura BSON (binary JSON), por lo que se relaciona con javascript. Su arquitetcutra es orientada a documentos, también puede ser usado como almacenamiento de archivos.

Usa el sharding para agrupar hashes. Mongo es flexible al usar c++, usa escalamiento horizontal. Su tipo de base de datos es sin esquema, por lo que permite distintas estructuras. Sus desventajas, son la consistencia eventual, lmiitaciones en transacciones, falta de integridad referencial, además, no permite hacer consultas con joins de manera directa.

#### Estructura

- Document Model
	- Key-value
	- Graphs
	- Relationshiops
	- Geospacial
	- Time series
	- Objects
- Unified Query API
	- Transaccional
	- Búsqueda
	- Analíticas
- Usos
	- Aplicaciones distribuidas
	- Moviles
	- Sin server

----

## Dynamo

Desarrollada por Amazon, es un servicio NoSQL, es muy rápida (tiempos de respuesta de menos de 10ms), tiene un esquema distribuido, donde existen réplicas en todas las regiones. Se usa  en la generación de tokens, comercio, estadísticas en juegos, o contenido de streaming.

#### Arquitectura

- Tabla.
- DAX Cluster (Dynamo Accelerator).
- Nodo.

Usa algoritmos de hash y arboles para gestionar los datos. JSON se usa como formato de transporte no almacenamiento. Además, las consultas se hacen en formato JSON, los datos se relacionan en una sola tabla.

Las conexiones se hacen porm medio de rails, que procesan las solicitudes y las envía a la base de datos de Dynamo. Para las tareas que no se tienen que realizar tan rápido se usan partes para el trabajo de segundo plano.

#### Características

- Totalmente remota
- NoSQL
- Almacenamiento key value
- Diseño orientado a la simplicidad y escalabilidad

---

## Casandra

Software NoSQL, almacena datso de forma distribuida a trabaes de servidores, lo que garantiza la disponibilidad. Creada por facebook, cuenta con buena tolerancia a fallos y disponibilidad, la consistencia se puede configurar.

El modelo de datos es columnar, entonces las entradas no tienen que ser del mismo número de columnas, por ello almacena tipos de datos estructurados, no estructurados y semi estructurados, en un formato no tabular, no es estricto.

Los datos se almacenan de forma descentralizada, por lo que no existen nodos que tengan mayor prioridad, si alguno falla el sistema completo sigue funcionando.

#### Arquitectura

- Peer to peer descentralizado
- Gossip protocol mantiene actualizados a los nodos sin necesidad de tener un nodo central.
- Particionamiento y peplicación usando un hash dentro de un rango específico.
- Escalabilidad horizontal

#### Partes

- Column: nombre, valor, timestamp
- Supercolumn: contiene el resto de los datos
- Column Family: similar a una tabla
- Key Space: conjunto de column families
- Cluster: conjunto de máuquinas que operan como una entidad.

---

## Postgres

- Soporte para datos completos
- Herencia de tablas
- Cumple con el ACID

#### Arquitectura

El modelo que utiliza es cliente servidor, se crean 2 instancias separadas para conectar a cliente y servidor en la misma máquina. Usa el estándar WAL (Write Ahead Logging) para asegurar la integridad de los datos.

##### Capas

- **Procesos del servidor:** conexiones y comandos
- **Memoria compartida:** gestión de datos temporales
- **Almacenamiento:** organización de datos en el disco
- **Registro WAL:** para asegurar la durabilidad y recuperación de transacciones

La base de datos tiene un diseño modular, lo que permite escalar con facilidad. La creación de scripts se puede hacer desde el administrador de Postgres.

---

