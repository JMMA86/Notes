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

