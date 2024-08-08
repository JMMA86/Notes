Apuntes de la exposición:

- Relacional: Tablas relacionadas entre si principalmente mediante claves primarias y foráneas.
- Transact-SQL: Extensión de SQL que incluye programación procedimental, variables locales, ejecuciones condicionales, cambios en sentencias, entre otros.
- Encriptación TDE: Cifrado Transparente de Datos, protege los datos almacenados en reposo para que, aunque algún atacante pueda acceder a los archivos o la base de datos, no pueda leerlos sin la clave de encriptación correcta.
- Docker: Herramienta de despliegue de proyectos.

Apuntes:

## Neo4j
Sistema de gestión de datos orientada a grafos, escalable y compatible con las propiedades ACID, diseñada con una arquitectura de clúster distribuido de alto rendimiento, disponible en ofertas auto hospedadas y en la nube.

ACID: Atomicidad, Consistencia, Aislamiento, Durabilidad.

### Características
1. Modelo de grafo
2. Escalabilidad
3. Arquitectura de clúster distribuido
4. Opciones de almacenamiento
5. Cypher
6. Integraciones y ecosistema.

### Arquitecturas
1. High Available Cluster: Master-Slave, Failover automático, Consistencia eventual.
2. Multi-Cluster: Distribución geográfica-latencia, Independencia, Interoperabilidad.
3. Embedded: Bajo retardo, Simplicidad de despliegue, control total.
4. Standalone: Única instancia de Neo4j.
5. Causal-cluster: Leader-Follower model, Raft protocol, Read replicas.

## Elastisearch

Motor de búsqueda de análisis distribuido y de código abierto, diseñado para trabajar con grandes volúmenes de datos en tiempo real, Está basado en Apache Lucene.

Posee índices (dónde se guarda la info en json, similar a la fila) y documentos. El conjunto de nodos forma un cluster.

Shards: primario (contiene la info original), réplica (copia de partición almacenada en nodo distinto).

Proceso de indexación: Analizar, estructurar y almacenar datos en un índice.
Análisis de documento: Character Filter, Tokenizer, Token Filters
Creación del índice invertido: Revisar.
Almacenamiento: Distribución en nodos.

Factores en la relevancia de la búsqueda: Frecuencia del término, Frecuencia inversa del documento, Normal de longitud del campo.

## REDIS
Sistema no relacional que se diferencia por 2 factores, es clave valor y funciona almacenando los datos en ram. Funciona como en arquitectura de computadores, con hit y miss de acuerdo a las consultas.

Puede almacenar distintos tipos de estructuras de datos para acceder a los mismos de forma rápida.

## Cosmos DB
Desarrollado por Microsoft para servicios como Xbox Live y otros. Sus características son:

- Distribución Global
- Alta disponibilidad
- Escalabilidad automática
- Baja latencia
- Consistencia ajustable
- Modelo multimodal
- Indexación automática
- Transacciones ACID
- Administración y Monitoreo
- Seguridad y complimiento

La base de datos se descompone en contenedores y documentos.

(El resto de apuntes se lo dejo a cris)