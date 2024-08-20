#Apo #Sesión #Oscar 
# Algoritmo de resolución SLD

**Clausulas de Horn:** Son casos especiales en la resolución de las fórmulas.

**Existen 3 clausulas:**
- *Donde solo existe un literal positivo*
- *Donde solo todos son literales negativos*
- *Solo hay un literal y es positivo*

Equivalentemente la estructura es la siguiente:
$A_1 \land ... \land A_m \implies B$ (Una verdadera)
$A_1 \land ... \land A_m \implies f$ (Todos negativos)
$B$ (Ella misma, es lo mismo que $\{. \implies B\}$)

```prolog
B :- something
```

![[Pasted image 20240820094025.png]]

![[Pasted image 20240820094058.png]]

![[Pasted image 20240820094143.png]]

dos reglas son complementarias si en algún punto se encuentran antes y después de una implicación.

![[Pasted image 20240820095656.png]]

## First-order predicate logic

Se dejarán atrás los símbolos y se empezaran a usar los predicados que contienen variables.

Para un tablero de ajedrez:
- Casilla: {fila, columna, ficha}
- Filas: 1..8
- Columnas: 1..8
- Ficha: {reina blanca, caballo negro, vacía}

![[Pasted image 20240820103645.png]]

La unificación se puede hacer por los valores particulares y las funciones.

![[Pasted image 20240820104259.png]]

