#Discretas #Sesión  #Oscar 

(1* 0 1* 0 1* 0 1*)*
Esto lo que nos da es todas las posibles combinaciones en las que 000 aparece un múltiplo de 3 veces: 000, 000000, 000000000, ...

1* U 1* 0 1* U 1* 0 1* 0 1* 0 1*
Aquí se están garantizando todas las combinaciones con el 1* entonces pasa por todas las posibles veces en las que está la combinación: 01, 011, 0111, ... O la combinación: 10, 110, 1110, ... O la combinación 101, 11011, 1110111. El primer 1* lo que hace es darnos la posibilidad en la que no existe ningún 0.

(0 U 1 U $\lambda$)^5 
Aquí se pueden formar combinaciones como 0, 00, 000, 0000, 00000.

---

# Autómatas

Máquinas finitas que son capaces de establecer reglas para que dado un string por ejemplo, diga si es aceptado o no.

Estos autómatas se centran en leer símbolos de izquierda a derecha en semi-infinitas cintas. 

Son escritos como grafos.

Están definidos como:
- Alphabets
- States
- Initial state
- Steps
- Transition function

