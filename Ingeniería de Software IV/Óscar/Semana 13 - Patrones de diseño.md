	#Sesión #Ingesoft 

# Patrones de diseño
Estos nacen de los estilos de arquitectura, cundo un componente muy similar empieza a madurar al punto en el que ya es plenamente replicable y generalizable, se crea, un patrón de diseño.
## Estilo de arquitectura abstracto
Sin estilo
## Estilo de arquitectura por capas
No hay comunicación entre capas principales si no que hay una capa intermedia que sirve como mediador.
## Estilo de arquitectura o Repositorio Centralizado
Una unidad central que se encarga de gestionar la información compartida entre componentes, la dirección siempre va en un sentido, desde los periféricos hacia adentro.
## Intérprete
La idea principal es un gestor que guarde la memoria de lo que se está usando para que este luego sea usado por un motor qu se va a encargar de gestionar las instrucciones.
![[Pasted image 20241022074445.png]]
## Compilador canónico
Básicamente es un transformador de texto a código máquina.
![[Pasted image 20241022074458.png]]
## Por capas (Estratificado)
Lo mismo que el por capas, pero más illuminati
![[Pasted image 20241022074539.png]]
## Sistema basado en reglas
La idea es para aplicaciones que usan las heurísticas.
![[Pasted image 20241022074610.png]]
![[Pasted image 20241022074649.png]]
## Capas para sistemas web
![[Pasted image 20241022074712.png]]
## Microservicios
Son más complejos, pero permiten mayor flexibilidad en el despliegue sobre el software creado, software como kubernetes abstraen el proceso de deploy sobre contenedors, este estilo de arquitectura usa el patrón API Gateway, que funciona como el patrón fachada pero a nivel de arquitectura.
![[Pasted image 20241022075556.png]]
## Arquitectura computacional
Como se relacionan el software, hardware y red.

----

# Patrón broker
Una sola clase que se encarga de distribuir eficientemente a los clientes entre mis distintos servidores.
# Patrón observer
Se usa para cuando se tienen múltiples objetos colaborativos y se necesita tener una consistencia entre objetos sin acoplarlos.

Este patrón permite tener múltiples objetos en observación sin que el que está siendo observado sepa quien es quien lo observa.

El patrón es usado por la estrategia de organización MVC.
# Patrón proxy
Es un intermediario que nos permite evitar acoplar al cliente directamente con el servidor. Mejor dicho darle una capacidad extra a un servicio o componente sin cambiar la lógica original. Existen distintos tipos de proxy, dependiendo de la funcionalidad extra que me permite dar funcionalidades extra sin tener que cambiar mi implementación. Otra manera de decirlo es que me permite personalizar mi implementación según sea el caso. (como n el proyecto final, en el que podíamos usar un proxy caché junto a un broker, para el proxy caché también se tiene que tener en cuenta la política de datos, para saber cuantos puedo guardar eficientemente). Lo proxys se tienen que usar en un servidor externo, de forma tal que el servidor no cargue con el peso de ejecutar el servicio (aunque realmente eso depende del caso).

![[Semana 13 - Patrones de diseño 2024-10-24 07.55.56.excalidraw]]

