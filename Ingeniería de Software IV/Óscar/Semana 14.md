#Oscar #Ingesoft 

# Solucionando el SPOF
Si queremos evitar que el throughput del servidor central se vea como un single point of failure lo que podemos hacer es instanciar varios servidores de proxy-sincronización, este funcionaría como un embudo para que el servidor no se sobrecargue.

# Patrón Asynchronous queuing
Es un patrón para almacenar y asignar efectivamente las tareas asincrónicas.

## Threadpool
El clásico

## MasterWorker
Este es un patrón que me permite gestionar varios pcs como si fueran tareas separadas (Un threadpool pero más grande). Este patrón solo es eficiente si la forma en la que se hace vale la pena, ya que los datos no se comparten en una memoria gigante sino que tinenen que transferirse por internet.

Cuando se requieren procesar archivos gigantes, lo que se tiene que modificar es como se gestionan las divisiones de las tareas y luego por medio de un patrón observer, actualizar en todo momentos a los workers con las tareas nuevas que se encolan.

# ForkJoinMaster
Funciona con el mismo propósito que el MasterWorker, pero ahora esta se encarga de gestionar el stack, por lo que cuando se hacen procesos en profundidad esta es dividida en más tareas para evitar overflows en un solo procesador.