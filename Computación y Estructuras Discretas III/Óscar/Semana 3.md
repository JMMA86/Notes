
#Sesión #Discretas #Oscar 

# Autómatas no deterministas

Son máquinas de estado que pueden o no dar resultados similares.

Lo que quiere decir que por cada estado puedo llegar al subestado nulo.

![[Sesión 4 2024-08-12 11.50.19.excalidraw]]

Esto significa que la forma de diseñar estos autómatas es teniendo en cuenta de que cuando no hay un camino, el autómata no continua con la evaluación (se queda estancado).

---

#Discretas #Sesión #Oscar 

# Transducer

They are like automatons but they also write symbols.

**Involves two alphabets:** $\Sigma$ (input) and $\Gamma$ (output)

Edges have the form u : v, so when you're building an automaton in the same instance you read you can write

[[Drawing 2024-08-16 14.16.15.excalidraw]]

![[Pasted image 20240816143751.png]]

Un ejemplo más complejo:

![[Pasted image 20240816143616.png]]

Recibe el nombre de un animal y entrega si está en plural o singular

### Relaciones

![[Pasted image 20240816143944.png]]

![[Pasted image 20240816144001.png]]

Al final lo que decimos es que un traductor crea parejas de valores.