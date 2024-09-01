#Discretas #Oscar 

# Gramáticas

## Gramáticas independientes del contexto
1. *Clasificación de Gramáticas*: Se presentan cuatro tipos de gramáticas según la jerarquía de Chomsky:
   - *Tipo 0*: Gramáticas no restringidas.
   - *Tipo 1*: Gramáticas sensibles al contexto.
   - *Tipo 2*: Gramáticas independientes del contexto (GIC).
   - *Tipo 3*: Gramáticas regulares.

2. *Definición de Gramática Independiente del Contexto (GIC)*: Una GIC es una cuádrupla $G = (V, Σ, S, P)$ que incluye:
   - Un conjunto de variables (símbolos no terminales).
   - Un alfabeto de símbolos terminales.
   - Un símbolo inicial.
   - Un conjunto de producciones o reglas de reescritura.

3. *Producciones*: Las producciones en una GIC son de la forma $A \rightarrow w$, donde $A$ es una variable y $w$ es una cadena de símbolos terminales y no terminales. Esto significa que la variable $A$ puede ser reemplazada por $w$.

4. *Derivaciones*: Se explica cómo se derivan cadenas a partir de un símbolo inicial utilizando las producciones de la gramática. Se utiliza notación para representar estas derivaciones.

5. *Ejemplos de Gramáticas: Se proporcionan ejemplos de gramáticas que generan lenguajes específicos, como $a^* b^*$ y el lenguaje de números naturales en notación binaria.

6. *Árbol de Derivación*: Se introduce el concepto de árbol de derivación, que es una representación gráfica de las derivaciones en una gramática, mostrando la relación entre los nodos (variables y terminales).
## Gramáticas regulares

1. *Gramáticas para Lenguajes Naturales*: Se presentan gramáticas que generan oraciones en lenguajes naturales, como el español, y se discuten las estructuras de estas gramáticas, incluyendo variables y terminales.

2. *Gramáticas para Lenguajes de Programación*: Se menciona que la sintaxis de los lenguajes de programación se describe comúnmente mediante gramáticas GIC (gramáticas independientes del contexto), específicamente en forma Backus-Naur (BNF), que facilita el diseño de analizadores sintácticos en compiladores.

3. *Ambigüedad en Gramáticas*: Se aborda la noción de ambigüedad en gramáticas, explicando cómo ciertas producciones pueden dar lugar a múltiples árboles de derivación para una misma cadena, lo que es común en lenguajes naturales.

4. *Teorema sobre Gramáticas Regulares*: Se establece que las gramáticas regulares y las gramáticas regulares por la derecha generan los mismos lenguajes, lo que implica que ambas definiciones son equivalentes.

5. *Ejercicios Prácticos*: Se incluyen ejercicios que invitan a los lectores a encontrar gramáticas que generen lenguajes específicos y a demostrar la ambigüedad de ciertas oraciones en español, utilizando los conceptos discutidos en el texto.

---

### What is a production

$v \rightarrow w$ and read as "v produces w".
This means that the string v can be replaced by the string w. Starting with the initial symbol S and applying the productions of the grammar, in one or more steps.

$v \rightarrow w$ is different to $v \implies w$

Por ejemplo para un autómata que genere $0^*10^*10^*$ 
$$
G \left\{
\begin{align}
S \rightarrow A1A1A \\
A \rightarrow 0A | \lambda
\end{align}
\right.
$$
Ó
$$
G \left\{
\begin{align}
S \rightarrow 0S | 1A \\
A \rightarrow 0A | 1B \\
B \rightarrow 0B | \lambda
\end{align}
\right.
$$
Ambas representaciones son legales y válidas.

para el lenguaje $L = \{a^ib^i | i >= b \}$ 

$$
G \left\{
\begin{align}
S \rightarrow aSb | \lambda \\
\end{align}
\right.
$$
---

Writing FST with Pyformlang

```Python
from pyformlang.fst import FST

transducer = FST()

transducer.add_transitions([('q0', 'a', 'q1', ['x']),
													('q1', 'a', 'q2', ['x']),
													('q1', 'b', 'q2', ['y']),
													('q2', 'a', 'q2', ['x']),
													('q2', 'b', 'q2', ['y']),
													('q2', 'b', 'q3', ['y'])])
```

Regular grammars (I write all the possibilities)
$$
G \left\{
\begin{align}
&S \rightarrow aS | bA | \lambda \\
&A \rightarrow bA | \lambda
\end{align}
\right.
$$

