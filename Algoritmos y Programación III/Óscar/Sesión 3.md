#Apo #Sesión #Oscar 

## Programación lógica

**Proposición:** Una declaración que puede ser o verdadera o falsa.

| Proposición                             | No proposición              |
| --------------------------------------- | --------------------------- |
| The capital of France is Paris. (True)  | What time is it? (Question) |
| 5 is greater than 10. (False)           | Close the door."(Command)   |
| Today is Monday (False)                 | Wow! (Exclamation)          |

Es la más sencilla de las ramas de la lógica.

## Syntax

Esta se compone fórmulas: $\{\neg, \land, \implies, \iff, (,) \}$ 

**Reglas de construcción:** Una fórmula es la sección más pequeña que existe sobre una proposición. El uso de estas con operadores lógicos también son fórmulas: $\neg A, (A), A \land B, A \lor B, A \implies B, A \iff B$.

![[Pasted image 20240808100356.png]]

![[Pasted image 20240808100407.png]]

![[Pasted image 20240808100417.png]]

## Semantic

Que es lo que pasa cuando le damos definiciones a los átomos de las fórmulas.

**Interpretación:** Dado un significado, evaluar como se comporta el resultado de la ecuación. Lo que me interesa en las fórmulas es verificar si son satisfacibles, válidas. Si la fórmula tiene un modelo entonces la fórmula es satisfacible, si todas las interpretaciones son modelos entonces son válidas.

(Un modelo o valuación de una fórmula φ es una asignación de valores de verdad a las proposiciones atómicas que ocurren en φ. (Las combinaciones verdaderas que se pueden hacer con los átomos))

$A \implies B \iff \neg A \lor B$ o $A \land \neg \neg B$ 

*Las tautologías sirven para resolver las fórmulas de manera más sencilla y poco más*

![[Pasted image 20240808103302.png]]

## Entailment (deducción)

Significa que una cosa es una consecuencia lógica de otra.

$$KB \models \alpha$$

From a knowledge base KB the formula α follows, if and only if α is true always when KB is true.

### The deduction theorem

$A \models B$ if and only if $\models A \implies B$

#### Por ejemplo

A: Todo humano es mortal
B: Elon es humano
........................................................
C: Elon es mortal

La razón por la que podemos decir que cuando $KB \models \alpha$ entonces $\models KB \implies \alpha$. Es decir, $KB$ la *base del conocimiento* recae en una tautología a la que se le puede aplicar el teorema de la deducción, cosa que se puede automatizar, si en base a una *base del conocimiento* se puede encontrar un *alpha*.

Dado que las cosas que se tienen que demostrar recaen en una complejidad de $2^n$ tenemos que construir el algoritmo que encuentre $\alpha$ por medio de la contradicción.

(Leer sobre el formato CNF y revisar el algoritmo de resolución)