#piececontrol/soft/parcial1

**Entorno** :: Contexto (relacionado con momento, lugar, circunstancia, etc) específico en el que ocurre potencialmente la situación planteada en el escenario

**Respuesta** :: Descripción de como debe ser el comportamiento del sistema ante la ocurrencia de la situación planteada en el escenario

**Medidas de respuesta** :: Unidad de medida y respectivo valor de referencia que debe observarse en el comportamiento ideal del sistema frente al escenario

**Artefactos** :: Elementos, partes, o componentes del planeamiento propuesta por el arquitecto que son directamente afectados por (o responsables de) la situación problemática que plantea el escenario

**Fuente del estimulo** :: Entidad, actor, o motivo que causa que se dispare o active la situación planteada por el escenario

**Estimulo** :: Condición que activa o dispara la situación planteada por el escenario

**Explique las diferencias y similitudes entre los patrones de arquitectura:** :: La arquitectura proxy se enfoca en controlar y optimizar el acceso a un objeto, mientras que la arquitectura broker se orienta a gestionar la comunicación y coordinación entre sistemas distribuidos.

**Operación y Deployment** :: Requerimientos que implican estrategias de despliegue específicos o formas específicas de cómo usar o interactuar con el sistema

**Volumen de funcionalidad** :: Conjunto de requerimientos funcionales similares en su esencia, que al considerarse como conjunto y no individualmente, inciden en la arquitectura del sistema

**Atributos de calidad** :: Características estandarizadas, relacionadas con la percepción subjetiva sobre expectativas de un producto o proceso, que puedan llevarse a una escala cuantitativa de medición.

**Determinación de tecnología** :: Requerimientos que implican el uso de tecnologías particulares en el desarrollo de software

**Familia de producto** :: Requerimientos que son pertinentes para conjuntos de sistemas que comparten funcionalidades comunes

**Los pasos para obtener el diseño arquitectónico final de un sistema de software**
?
Identificar requerimientos a partir de las necesidades expresadas por el cliente, teniendo en cuenta la misión de su negocio
Completar los requerimientos con diversas técnicas de elicitación
Agrupar, jerarquizar, ordenar y clasificar los requerimientos
Identificar y analizar los requerimientos arquitectónicamente significativos
Aplicar Dorfman para analizar los requerimientos funcionales
Sintetizar una arquitectura del software para que cumpla con los requerimientos funcionales
Aplicar QAW para analizar los requerimientos de atributos de calidad
Refinar la arquitectura del software funcional para que cumpla con todo los drivers de arquitectura

**Pasos para obtener los drivers definitivos de la arquitectura de software con el método QAW:**
?
Presentación e introducción del método QAW Presentación del negocio y su misión
Presentación de los diagramas de arquitectura preliminares
Presentación de drivers arquitectónicos potenciales
Lluvia de ideas de escenarios de QAW Consolidación de escenarios
Priorización de escenarios Refinamiento de escenarios

---

**Afirmaciones para el análisis de requerimientos con el método de Dorfman**
?
Dorfman es un método que permite verificar cubrimiento en anchura y en profundidad de requerimientos funcionales y subsistemas con respecto al sistema solicitado
La agrupación, jerarquización y ordenamiento de requerimientos se hace antes del particionamiento del sistema en subsistemas, ayudando a establecer qué requerimientos están altamente relacionados, qué requerimientos debería ser padre de cuales otros, y en qué orden estos son hijos del primero.

**Los beneficios que proporciona QAW para el desarrollo del sistema**
?
Tener un método que da soporte para la elicitación, análisis y especificación de RAS de atributos de calidad 
Determinar metódicamente los drivers arquitectónicos para el diseño de un sistema 
Lograr metódicamente una base informada de aspectos propios del negocio que soporte decisiones arquitectónicas

---

**Explique las condiciones bajo las cuales se puede aplicar el patrón ProxyCache:**
?
Cuando se necesita optimizar el acceso a recursos costosos o de acceso lento, como objetos remotos o bases de datos
Cuando se quiere implementar un mecanismo de caché para mejorar el rendimiento del sistema, almacenando temporalmente los resultados de operaciones costosas
Cuando se requiere controlar el acceso a un objeto, añadiendo una capa adicional de seguridad o validación antes de permitir el acceso al objeto real En situaciones donde se necesita retrasar la creación e inicialización de un objeto hasta que sea realmente necesario (lazy loading)

**Un patrón arquitectónico se caracteriza por :**
?
Especificar tipos de elementos (componentes), las relaciones entre ellos y las restricciones respectivas
Especificar la solución a un problema de diseño que aparece comúnmente
Especificar la estructura y el comportamiento de la solución propuesta

---

**Como proceso, el diseño arquitectónico se define en sus entradas y salidas incluyendo:**
?
Requerimientos clasificados, verificados y validados
Diagramas de casos de uso contextual
Vistas arquitectónicas
Diagramas de deployment

---

**La estructura de almacenamiento de la taxonomía de Flynn que favorece más la integridad, consistencia y acceso seguro a los datos es** :: N O R M A

**La estructura de almacenamiento que favorece más la configurabilidad y latencia homogénea pero limitando la escalabilidad es** :: U M A

---

**Son responsabilidades del arquitecto de software** :: Satisfacer los QAs mediante el diseño de alto nivel.

El throughput y el missing rate son factores que permiten medir :: el rendimiento (performance) de un sistema

 El atributo de calidad de seguridad tiene como factores :: La privacidad e integridad de los datos, la confidencialidad y la identificación/autenticación 

---

**Swebok capítulo 3: Software design** **Encapsulación** :: Agrupar y empaquetar los detalles internos de una abstracción en un componente o módulo

**Abstracción** :: Generalización de una definición o concepto, que para un propósito particular, tiene en cuenta solamente la información relevante

**Acoplamiento** :: Determinación de cuán interdependientes son los componentes o módulos en un sistema

**Descomposición y Modularización** :: Agrupar diferentes funcionalidades y responsabilidades en diferentes componentes

**¿Cuáles de las siguientes son relaciones estructurales válidas que se pueden especificar en un diagrama UML de deployment?** ? Device contiene Componentes Artefacto manifiesta Componente

---

**Rellenar en español los aspectos claves del diseño**

---

**¿Todo diagrama de deployment representa una vista arquitectónica? ¿Por qué?** :: No, debido a que un diagrama de deployment puede especificar solo una parte y no todo el sistema

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
Independiente  
Con interfaces bien definidas  
Reemplazable dentro de un contexto  
Con propiedades externamente visibles  
Modular  
Encapsulado

¿Qué es una vista arquitectónica? :: Representación abstracta de todo el sistema que concierne a un viewpoint.

¿Qué estructura de almacenamiento favorece baja latencia pero limita la escalabilidad? :: UMA.

¿Cuál es la condición característica que determina si una solución puede distribuirse usando MISD, SIMD, MIMD? :: Dependencia de datos.

¿Qué efecto tiene cumplir con un QA en la arquitectura sobre la calidad del sistema? :: Siempre tendrá un efecto tanto positivo como negativo.

¿Cuáles son ejemplos de atributos de calidad discernibles en tiempo de ejecución, no discernibles en tiempo de ejecución, e intrínsecos a la arquitectura?  
? Discernibles en tiempo de ejecución: Seguridad  
No discernibles en tiempo de ejecución: Mantenibilidad  
Intrínsecos a la arquitectura: Correctitud

¿Qué es el entorno en el contexto de escenarios? :: Contexto específico en el que ocurre la situación planteada.

¿Qué describe la respuesta en los escenarios? :: Cómo debe ser el comportamiento ideal del sistema ante la situación planteada.

---

Una importante EPS le ha solicitado a usted desarrollar un software para detectar clientes con alto riesgo de contraer enfermedades cuyos tratamientos resultan extremadamente costosos, con el fin de sacar a dichos clientes de la misma. Pero además, los directivos de la EPS le suministran un listado de las personas que aún si resultan con ese alto riesgo, el software no debe reportarlos, y también le ofrecen la posibilidad de poner en esa lista a sus familiares cercanos. Para que le adjudiquen el contrato, usted tendrá que firmar un acuerdo de no divulgación de los términos y condiciones establecidos, bajo ninguna circunstancia. Ellos publicitan su EPS diciendo que cumple con todos los reglamentos legales, siendo además las más equitativa y participativa del mercado, y le ofrecen pagarle el doble del precio que usted considere que cuesta desarrollar dicho software. La ley en Colombia establece que una EPS no puede autónomamente desafiliar a ninguno de sus afiliados. ¿Qué incisos del código de ética estarían involucrados para aceptar o rechazar el trabajo, considerando los ofrecimientos de la empresa?
?
- **To hold paramount the safety, health, and welfcare of the public, to strive to comply with ethical design and sustainable development practices, and to disclose promptly factors that might endanger the public of the enviroment**
- **To reject bribery in all its forms**
- **To treat fairly all persons and to not engage in acts of discrimination based on race, religion, gender, disability, age, national origin, sexual orientation, gender identity, or gender expression**
- **To avoid injuring others, their property, reputation, or employment by false or malicious action**

El diseño arquitectonico de software es un proceso complejo. Siguiendo la ecuacion de N.Wirht que define el software, el principio de diseño ==La forma sigue la función== es el que más ayuda a determinar por donde empezar la arquitectura de software 

