
La mayor parte de la información está en, donde tengo toda la información del problema. ![[Artificial Intelligence intro 6.1, 6.2, 6.3]]
Esto que viene ahora es la información extra que se pudo sacar de la clase.

---

La función heurística nos dice que tan cerca estamos de la solución real, a su vez, tiene que ser admisible, es decir, que la solución que vamos a encontrar no sea mayor que la solución real.

A* Es completo, y siempre encuentra la mejor solución (Esto ya lo sabía pero por si acaso).

**Hill Climbing**: Intenta reiterar sobre las soluciones quedándose con la más corta hasta que encuentra una solución, sin embargo esto entra en un problema que se conoce como un óptimo local, donde no sabemos si es la solución más óptima.

Para el algoritmo de hill climbing existen varias formas de crear las heurísticas, simple, donde se escoge el más pequeño y nos quedamos con ese, steepest-ascent, donde cuando no se encuentra otra mejor opción, se itera para ver si existe algo mejor, también se puede usar la aleatoriedad para encontrar si se puede encontrar algo mejor sin usar siempre la misma heurística, Random restart, genera una semilla donde se intentan otras opciones.

## Árboles And-Or

Tienen nodos AND y nodos OR. Gráficamente los nodos AND tienen una unión, los OR on lo mismo de siempre. Cuando se tiene un nodo AND se tienen que evaluar ambos nodos.

![[Semana 10 2024-10-01 10.37.44.excalidraw]]

Tener un esqueleto para A*