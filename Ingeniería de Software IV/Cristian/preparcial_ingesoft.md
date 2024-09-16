#parcialInge

**Entorno** :: Contexto (relacionado con momento, lugar, circunstancia, etc) específico en el que ocurre potencialmente la situación planteada en el escenario

**Respuesta** :: Descripción de como debe ser el comportamiento del sistema ante la ocurrencia de la situación planteada en el escenario

**Medidas de respuesta** :: Unidad de medida y respectivo valor de referencia que debe observarse en el comportamiento ideal del sistema frente al escenario

**Artefactos** :: Elementos, partes, o componentes del planeamiento propuesta por el arquitecto que son directamente afectados por (o responsables de) la situación problemática que plantea el escenario

**Fuente del estimulo** :: Entidad, actor, o motivo que causa que se dispare o active la situación planteada por el escenario

**Estimulo** :: Condición que activa o dispara la situación planteada por el escenario

**Operación y Deployment** :: Requerimientos que implican estrategias de despliegue específicos o formas específicas de cómo usar o interactuar con el sistema

**Volumen de funcionalidad** :: Conjunto de requerimientos funcionales similares en su esencia, que al considerarse como conjunto y no individualmente, inciden en la arquitectura del sistema

**Atributos de calidad** :: Características estandarizadas, relacionadas con la percepción subjetiva sobre expectativas de un producto o proceso, que puedan llevarse a una escala cuantitativa de medición.

**Determinación de tecnología** :: Requerimientos que implican el uso de tecnologías particulares en el desarrollo de software

**Familia de producto** :: Requerimientos que son pertinentes para conjuntos de sistemas que comparten funcionalidades comunes

**Los pasos para obtener el diseño arquitectónico final de un sistema de software**
?
1. Identificar requerimientos a partir de las necesidades expresadas por el cliente, teniendo en cuenta la misión de su negocio
2. Completar los requerimientos con diversas técnicas de elicitación
3. Agrupar, jerarquizar, ordenar y clasificar los requerimientos
4. Identificar y analizar los requerimientos arquitectónicamente significativos
5. Aplicar Dorfman para analizar los requerimientos funcionales
6. Sintetizar una arquitectura del software para que cumpla con los requerimientos funcionales
7. Aplicar QAW para analizar los requerimientos de atributos de calidad
8. Refinar la arquitectura del software funcional para que cumpla con todo los drivers de arquitectura

**Pasos para obtener los drivers definitivos de la arquitectura de software con el método QAW:**
?
1. Presentación e introducción del método QAW Presentación del negocio y su misión
2. Presentación de los diagramas de arquitectura preliminares
3. Presentación de drivers arquitectónicos potenciales
4. Lluvia de ideas de escenarios de QAW Consolidación de escenarios
5. Priorización de escenarios Refinamiento de escenarios

---

Marque todas las opciones que son afirmaciones ciertas para el análisis de requerimientos con el método de Dorfman. Seleccione una o más de una:
a. La agrupación, jerarquización y ordenamiento de requerimientos se hace como parte del particionamiento del sistema en subsistemas, estableciendo qué requerimiento es padre de cuáles otros, y en qué orden estos son hijos del primero
b. Dorfman es un método que permite verificar cubrimiento en anchura y en profundidad de requerimientos funcionales y subsistemas con respecto al sistema solicitado
c. La agrupación, jerarquización y ordenamiento de requerimientos se hace antes del particionamiento del sistema en subsistemas, ayudando a establecer qué requerimientos están altamente relacionados, qué requerimiento debería ser padre de cuáles otros, y en qué orden estos son hijos del primero
d. Dorfman permite elicitar, de manera sistemática, todos los requerimientos del sistema
e. EI criterio para determinar cuándo no seguir haciendo análisis es cuando se ha cubierto todo el sistema en anchura
?
b. Dorfman es un método que permite verificar cubrimiento en anchura y en profundidad de requerimientos funcionales y subsistemas con respecto al sistema solicitado
c. La agrupación, jerarquización y ordenamiento de requerimientos se hace antes del particionamiento del sistema en subsistemas, ayudando a establecer qué requerimientos están altamente relacionados, qué requerimiento debería ser padre de cuáles otros, y en qué orden estos son hijos del primero

---

Los beneficios que proporciona QAW para el desarrollo de un sistema de software:
Seleccione una o más de una:
a. Tener un método que da soporte para la elicitación, análisis y especificación de RAS de atributos de calidad
b. Determinar metódicamente los drivers arquitectónicos para el diseño de un sistema
c. Tener un método que mejora la documentación y redacción del diseño arquitectónico obtenido
d. Tener un método que da soporte para las buenas prácticas y principios de implementación de diseño arquitectónico
e. Lograr metódicamente una base informada de aspectos propios del negocio que soporte decisiones arquitectónicas
?
a. Tener un método que da soporte para la elicitación, análisis y especificación de RAS de atributos de calidad
b. Determinar metódicamente los drivers arquitectónicos para el diseño de un sistema
e. Lograr metódicamente una base informada de aspectos propios del negocio que soporte decisiones arquitectónicas

---

Un patrón arquitectónico se caracteriza por:
Seleccione una o más de una:
a. especificar su aplicabilidad asociada a un modelo arquitectónico de referencia dado
b. especificar una colección de decisiones de diseño propuesta por el primer individuo que 10 propuso para resolver un problema específico de un componente de sofware
c. especificar tipos de elementos (componentes), las relaciones entre ellos, y restricciones respectivas
d. especificar la solución a un problema de diseño que aparece comúnmente
e. especificar la estructura y el comportamiento de la solución propuesta
?
c. especificar tipos de elementos (componentes), las relaciones entre ellos, y restricciones respectivas
d. especificar la solución a un problema de diseño que aparece comúnmente
e. especificar la estructura y el comportamiento de la solución propuesta


---

¿Qué es el diseño de software como producto a nivel arquitectónico y a nivel de detalle? :: A nivel arquitectónico en Diagramas de Deployment y a nivel de detalle en Diagramas de Secuencia, entre otros.

¿Qué se debe buscar en cuanto a cohesión en el diseño? :: Alta cohesión.

¿Cómo se puede evidenciar baja cohesión en un conjunto de clases en Java? :: Métodos con diversas responsabilidades y funciones en una clase.

¿Qué se debe buscar en cuanto a acoplamiento en el diseño? :: Bajo acoplamiento.

¿Cómo se puede evidenciar bajo acoplamiento en un conjunto de clases en Java? :: Métodos de una clase sin dependencias a otras clases.

¿Qué es la primitividad en el diseño? :: Consiste en basarse en el conjunto mínimo de operaciones o definiciones que no dependan de otras a su mismo nivel.

¿Qué mide la cohesión? :: Mide la fuerza de dependencia de los elementos dentro del módulo.

¿Qué permite la separación de interfaz e implementación? :: Permite ocultar detalles internos de estructura y comportamiento mediante la especificación de lo público.

¿Qué es la suficiencia y completitud? :: Garantiza que un componente capture todas las características importantes de una abstracción y nada más.

¿En qué consiste la descomposición y modularización? :: Agrupar diferentes funcionalidades y responsabilidades en diferentes componentes.

¿Qué es el acoplamiento? :: Interdependencia entre módulos.

¿Qué es la abstracción? :: Es la generalización de una definición o concepto que considera solo la información relevante para un propósito particular.

¿Qué es la encapsulación? :: Agrupar y empaquetar detalles internos de una abstracción en un componente o módulo.

¿Qué aspecto de diseño se centra en los elementos independientes de software y su relación con el hardware? :: Distribución de componentes.

¿Qué define a un componente de software?  
? 
- Independiente  
- Con interfaces bien definidas  
- Reemplazable dentro de un contexto  
- Con propiedades externamente visibles  
- Modular  
- Encapsulado

---

¿Qué es una vista arquitectónica?
Seleccione una:
- EI resultado como producto del diseño de software.
- EI resultado del proceso del diseño de software.
- Diagrama abstracto que contiene componentes estructurales y relaciones funcionales.
- Representación abstracta de todo el sistema que corresponde a una preocupación.
?
- Representación abstracta de todo el sistema que corresponde a una preocupación.

---

¿Qué estructura de almacenamiento favorece baja latencia pero limita la escalabilidad? :: UMA.

¿Cuál es la condición característica que determina si una solución puede distribuirse usando MISD, SIMD, MIMD? :: Dependencia de datos.

¿Qué efecto tiene cumplir con un QA en la arquitectura sobre la calidad del sistema? :: Siempre tendrá un efecto tanto positivo como negativo.

¿Cuáles son ejemplos de atributos de calidad discernibles en tiempo de ejecución, no discernibles en tiempo de ejecución, e intrínsecos a la arquitectura?  
?
Discernibles en tiempo de ejecución: Seguridad  
No discernibles en tiempo de ejecución: Mantenibilidad  
Intrínsecos a la arquitectura: Correctitud

¿Qué es el entorno en el contexto de escenarios? :: Contexto específico en el que ocurre la situación planteada.

¿Qué describe la respuesta en los escenarios? :: Cómo debe ser el comportamiento ideal del sistema ante la situación planteada.
<!--SR:!2024-09-10,4,270-->

---

El diseño de software como ==producto==, se evidencia a nivel arquitectónico en la forma de ==Diagramas de Deployment== y a nivel de detalle en forma de ==Diagramas de Secuencia==, entre otros.

En un conjunto de clases en Java una forma posible de evidenciar baja cohesión es :: métodos con diversas responsabilidades y funciones en una clase

EI acoplamiento en el diseño debe ser :: bajo

En un conjunto de clases en Java una forma posible de evidenciar bajo acoplamiento es :: Métodos de una clase sin dependencias a otras clases

---

#flashcards/soft/parcial1new

Como proceso, el diseño arquitectónico se define en sus entradas y salidas incluyendo:
Seleccione una o más de una:
- Requerimientos clasificados, verificados y validados
- Diagrama de clases
- Diagrama de casos de uso contextual
- Vistas arquitectónicas
- Jars Ejecutables
- Casos de prueba en JUnit
- Diagrama de deployment
?
- Requerimientos clasificados, verificados y validados
- Diagrama de casos de uso contextual
- Vistas arquitectónicas
- Diagrama de deployment

---

**La estructura de almacenamiento de la taxonomía de Flynn que favorece más la integridad, consistencia y acceso seguro a los datos es** :: N O R M A

**La estructura de almacenamiento que favorece más la configurabilidad y latencia homogénea pero limitando la escalabilidad es** :: U M A

---

Son responsabilidades del arquitecto de software:
Seleccione una o más de una:
- Implementar el resultado del diseño arquitectónico.
- Verificar el cubrimiento en anchura y profundidad del SRS.
- Elicitar los requerimientos no funcionales.
- Decidir los atributos de calidad que debe tener el software, entre los planteados por los stakeholders. x
- Satisfacer los QAs mediante el diseño de alto nivel.
?
- Satisfacer los QAs mediante el diseño de alto nivel.

---

Marque las afirmaciones que son verdaderas
- EI throughput y el missing rate son factores que permiten medir el rendimiento (performance) de un sistema.
- La confiabilidad es la capacidad de un sistoma para mantener garantizada la integridad y consistencia de sus datos.
- La escalabilidad es la capacidad de un sistema de correr en cualquier plataforma operacional.
- La privacidad e integridad de los datos, la confidencialidad y la identificación/autenticación son factores dol atributo de calidad de seguridad
?
- EI throughput y el missing rate son factores que permiten medir el rendimiento (performance) de un sistema.
- La privacidad e integridad de los datos, la confidencialidad y la identificación/autenticación son factores dol atributo de calidad de seguridad

---

Seleccione para cada definición el término correspondiente:
- Agrupar y empaquetar los detalles internos de una abstracción en un componente o módulo.
- Generalización de una definición o concepto, que para un propósito particular, tiene en cuenta solamente la información relevante.
- Determinación de cuán interdependientes son los componentes o módulos en un sistema.
- Agrupar diferentes funcionalidades y responsabilidades en diferentes componentes.
Opciones
- Abstracción
- Acoplamiento
- Descomposición y modularización
- Encapsulación
?
- Encapsulación
- Abstracción
- Acoplamiento
- Descomposición y modularización

---

¿Cuáles de las siguientes son relaciones estructurales válidas que se pueden especificar en un diagrama UML de deployment?
Seleccione una o más de una:
 - Interfaz Provista por Componente requiere otro Componente
 - Device contiene Componentes
 - Comunicación con protocolo físico entre un nodo de procesamiento y un execution environment
 - Execution Environment contiene Device
 - Artefacto manifiesta Componente
?
 - Device contiene Componentes
 - Artefacto manifiesta Componente

---

¿Todo diagrama de deployment representa una vista arquitectónica? ¿Por qué?
Seleccione una:
a) Sí, debido a que UML define que todo diagrama de deployment es una vista arquitectónica.
b) Sí, debido a que todo diagrama de deploymentdescribe todo el sistema en cuanto a componentes y relaciones tanto estructurales como comportamentales.
c) No, debido a que un diagrama de deployment puede especificar solo una parte y no de todo el sistema.
d) No, debido a que un diagrama de deployment se concentra en el despliegue de los componentes.
?
c) No, debido a que un diagrama de deployment puede especificar solo una parte y no de todo el sistema.

---

Una importante EPS le ha solicitado a usted desarrollar un software para detectar clientes con alto riesgo de contraer enfermedades cuyos tratamientos resultan extremadamente costosos, con el fin de sacar a dichos clientes de la misma. Pero además, los directivos de la EPS le suministran un listado de las personas que aún si resultan con ese alto riesgo, el software no debe reportarlos, y también le ofrecen la posibilidad de poner en esa lista a sus familiares cercanos. Para que le adjudiquen el contrato, usted tendrá que firmar un acuerdo de no divulgación de los términos y condiciones establecidos, bajo ninguna circunstancia. Ellos publicitan su EPS diciendo que cumple con todos los reglamentos legales, siendo además las más equitativa y participativa del mercado, y le ofrecen pagarle el doble del precio que usted considere que cuesta desarrollar dicho software. La ley en Colombia establece que una EPS no puede autónomamente desafiliar a ninguno de sus afiliados. ¿Qué incisos del código de ética estarían involucrados para aceptar o rechazar el trabajo, considerando los ofrecimientos de la empresa?
Seleccione una o más de una:
- To treat fairly all persons and to not engage in acts of discrimination based on racee religion, gender, disability, age, national origin, sexual orientation, gender identity, or gender expression
- To avoid real or perceived conflicts of interest whenever possible, and to disclose them to affected parties when they do exist.
- To maintain and improve our technical competence and to undertake technological tasks for others only if qualified by training or experience, or after full disclosure of pertinent limitations.
- To maintain and improve our technical competence and to undertake technological tasks for others only if qualified by training or experience, or after full disclosure of pertinent limitations. 
- To seek, accept, and Offer honest criticism of technical work, to acknowledge and correct errors, and to credit properly the contributions of others.
- To be honest and realistic in stating claims or estimates based on available data.
- To improve the understanding by individuals and society of the capabilities and societal implications of conventional and emerging technologies, including intelligent systems.
- To hold paramount the safety, health, and welfare of the public, to strive to comply with ethical design and sustainable development practices, and to disclose promptly factors that might endanger the public or the environment.
- To reject bribery in all its forms.
- To avoid injuring others, their property, reputation, or employment by false or malicious action.
- To assist colleagues and co-workers in their professional development and to support them in following this code of ethics.
?
- To hold paramount the safety, health, and welfcare of the public, to strive to comply with ethical design and sustainable development practices, and to disclose promptly factors that might endanger the public of the enviroment
- To reject bribery in all its forms
- To treat fairly all persons and to not engage in acts of discrimination based on race, religion, gender, disability, age, national origin, sexual orientation, gender identity, or gender expression
- To avoid injuring others, their property, reputation, or employment by false or malicious action

---

El diseño arquitectonico de software es un proceso complejo. Siguiendo la ecuacion de N.Wirht que define el software, el principio de diseño ==La forma sigue la función== es el que más ayuda a determinar por donde empezar la arquitectura de software 

---

La estructura de procesamiento que favorece más la confiabilidad (reliability, fault-tolerance) es :: SISD multi instanciado

---

A continuación, escoja el concepto que corresponde con la definición proporcionada:
- Proporción de tiempo en que un sistema está presto a responder solicitudes a sus servicios (i.e„ requerimientos funcionales).
- Capacidad del sistema de correr en múltiples plataformas.
- Capacidad del sistema de mantener el mismo nivel de servicio a incrementos significativos de cargas de trabajo, aumentando recursos computacionales.
- Capacidad del sistema de cambiar o personalizar sus componentes antes de su ejecución sin modificar su código fuente.
- Capacidad para recuperarse ante fallas fatales del sistema, o lidiar con datos inconsistentes o erróneos utilizando mecanismos aceptables para la organización, dentro de tiempos igualmente aceptables.
Opciones:
- Portabilidad, Proporción de tiempo en que un sistema está presto a responder solicitudes a sus servicios (i.e.t requerimientos funcionales).
- Recuperabilidad, Capacidad para recuperarse ante fallas fatales del sistema o lidiar con datos inconsistentes o erróneos utilizando mecanismos aceptables para la organización, dentro de tiempos
- Disponibilidad, Capacidad del sistema de correr en múltiples plataformas.
- Configurabilidad, Capacidad del sistema de cambiar o personalizar sus componentes antes de su ejecución sin modificar su código fuente.
- Escalabilidad, Capacidad del sistema de mantener el mismo nivel de servicio a incrementos significativos de cargas de trabajo, aumentando recursos computacionales.
?
- Disponibilidad
- Portabilidad
- Escalabilidad
- Configurabilidad
- Recuperabilidad

---

¿Cuáles de las siguientes son relaciones de comportamiento que se pueden especificar en un diagrama UML de deployment?
Seleccione una o más de una:
- Comunicación con protocolo fisico entre nodos de procesamiento
- Componente contiene componente
- Interfaz provista por componente a través de un puerto
- Binding entre interfaz provista e interfaz requerida entre componentes
- Device contiene Execution Environment
?
- Binding entre interfaz provista e interfaz requerida entre componentes
- Comunicación con protocolo fisico entre nodos de procesamiento

---

Se centra en qué elementos independientes de software tiene un sistema, y su relación con los elementos de hardware :: Distribución de componentes

Se centra en cómo descomponer el software en procesos, tareas y subprocesos, enfocado en los issues de la eficiencia, la atomicidad, la sincronización y el scheduling de los mismos :: Concurrencia

Se centra en cómo estructurar con eficiencia e integridad los datos que debe manejar un sistema, de modo que perduren en el tiempo :: Persistencia de datos

Se centra en cómo prevenir, procesar y tratar condiciones y eventos inusuales relacionados con problemas en software/hardware :: Tolerancia a fallos