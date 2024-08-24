#Sesión #Apo #Oscar 

# Conjunctive Normal form

Is a standardized way of expressing logical formulas in propositional logic.
A formula is in CNF if it is a conjunction (AND) of one or more clauses, where each clause is a disjunction (OR) of literals.
**CNF**
- Literal, a literal is a basic proposition or its negation. 
	- Example: P or ¬P
- Clause, clause is a disjunction of literals.
	- Example: (P ∨ ¬Q ∨ R)
- CNF Formula, a CNF formula is a conjunction of clauses. 
	- Example: (P ∨ ¬Q) ∧ (Q ∨ R) ∧ (¬P ∨ R)

En prolog se tienen fórmulas hechas o reglas, pero esto se verá en un próximo capítulo.

### Resolution algorithm
Takes a set of clauses and gives true or false if a clausal formula is satisfiable or unsatisfiable. 

Básicamente es una fuerza bruta que puede cortar inteligentemente caminos antes de perder tiempo.

La idea es cambiar el conjunto de reglas para la resolución en cada iteración.

Para evitar los problemas que conllevan recorrer todos los posibles caminos de una IA se puede intentar demostrar que $\neg(A \implies B)$ así ahorraremos valioso tiempo. 
$$\neg(A\implies B)$$
$$\neg(\neg A \lor B)$$
$$A \land \neg B$$

Entonces finalmente decimos que $A \models B$ si y solo si $A \land \neg B$ no es satisfacible. (Como paso final, esto se lo pasamos al algoritmo de resolución para que resuelva)

### ¿Cómo funciona el algoritmo de resolución?

Creamos un conjunto de reglas, para este caso se va a intentar preguntar si $B \implies A \lor C$, y le creamos entonces el conjunto $S = \{A\lor B\lor C, \neg A \lor C, \neg B \lor C, \neg A, \neg C\}$, donde las negaciones de A y C provienen de nuestra demostración anterior.

Ahora, es el momento de iniciar el proceso iterativo hasta que llegue a la clausula vacía que demuestre que es insatisfacible o ya no pueda operar más. 

**La regla de resolución es la siguiente:**
$$\frac{A \lor B, \neg B \lor C}{A \lor C}$$
Esta está compuesta por una base de conocimiento (en este caso B) donde esta tiene signos contrarios. (La parte de arriba es el antecedente y la de abajo la consecuencia) Pueden existir varias y distintas formas de hacer una regla de resolución. Siempre se intenta empezar con lo chiquito 😔. Para una clausula vacía se usa el símbolo $\Box$. 

Siempre se quitan las fórmulas triviales 🤑 (las fórmulas donde tienes un true v "Cualquier cosa").

No se pueden cancelar dos literales a la vez.

Y cuando llegas a C y ¬C por ejemplo llegas a las clausula vacía.

### Pasos para conseguir un CNF

1. Eliminate all operators except for negation, conjunction, and disjunction by substituting logically equivalent formulas:
	1. A ↔ B ≡ (A → B) ∧ (B → A),
	2. A → B ≡ ¬A ∨ B
2. Push negations inward using De Morgan’s laws:
	1. ¬(A ∧ B) ≡ (¬A ∨ ¬B),
	2. ¬(A ∨ B) ≡ (¬A ∧ ¬B),
	until they appear only before atomic propositions or atomic
	propositions preceded by negations.
3. Eliminate sequences of negations by deleting double negation operators:
	1. ¬¬A ≡ A.
4. The formula now consists of disjunctions and conjunctions of literals. Use the distributive laws:
	1. A ∨ (B ∧ C) ≡ (A ∨ B) ∧ (A ∨ C),
	2. (A ∧ B) ∨ C ≡ (A ∨ C) ∧ (B ∨ C),
		to eliminate conjunctions within disjunctions.
	![[Pasted image 20240813103219.png]]

![[Pasted image 20240813103246.png]]

![[Pasted image 20240821211417.png]]

---

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

