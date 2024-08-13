
## Representación

**Forma conjuntiva:** Es una conjunción de disyunciones

$$
A \lor B \lor C \land \lnot A \lor C \land  \lnot B \lor C
$$

**Forma clausal:** Se sustituyen con una coma las conjunciones, las disyunciones se omiten, y las negaciones se escriben con la forma $\bar{A}$

$$
ABC, \bar{A}C,\bar{B}C
$$

**Clausulas de Horn:** Todas las conjunciones tienen una implicación

## Algoritmo

Teorema: A se puede deducir de A si y solo si 
$$
\begin{align}
A \vDash B \\
\vDash A \implies B \\
A \land \lnot B
\end{align} 
$$

### Regla de resolución

$$
\frac{A \lor B, \lnot B \lor C}{A \lor C}
$$

Generalizada:

$$
\frac{A_{1}\lor A_{2}\lor\dots \lor A_{m}\lor B, \lnot B \lor C_{1}\lor C_{2}\lor..\lor C_{n}}{A_{1}\lor A_{2}\lor\dots A_{m}\lor C_{1}\lor C_{2}\lor\dots \lor C_{n}}
$$

1. Se añaden las clausulas que tengan disyunciones: $S = \{ A\lor B\lor C, \lnot A \lor C, \lnot B \lor C \}$
2. Se pone la negación de la fórmula que se va a implicar $(\lnot B)$
3. Se escogen 2 clausulas en las que se pueda aplicar la regla de resolución, se añade el resolvente al conjunto


#### Ejemplo

$$
S = \{ A\lor B\lor C, \lnot A \lor C, \bar{A}, \bar{C}, \lnot B \lor C \} \\
$$

- $C_{1}: \lnot B \lor C$
- $C_{2}: \lnot C$
- $C_{3}: \lnot B$

$$
S = \{ A\lor B\lor C, \lnot A \lor C,\bar{A}, \bar{C}, \lnot B \lor C, \lnot B \} \\
$$

- $C_{1}: ABC$
- $C_{2}: \bar{B}$
- $C_{3}: AC$

$$
S = \{ A\lor B\lor C, \lnot A \lor C, \bar{A}, \bar{C}, \lnot B \lor C, \lnot B, AC \} \\
$$

- $C_{1}: AC$
- $C_{2}:\bar{A}$
- $C_{3}: C$

$$
S = \{ A\lor B\lor C, \lnot A \lor C, \bar{A}, \bar{C}, \lnot B \lor C, \lnot B, AC, C \} \\
$$



#### Ejercicios

$$
\begin{align}
(\bar{p} \to \bar{q}) \to (p \to q) \\
\bar{p \lor \bar{q}} \lor \bar{p} \lor q \\
\bar{p} \land q \lor \bar{p} \lor q
\end{align}
$$


![[Pasted image 20240813103047.png]]

- $S= \text{We are going to Spain}$
- $N = \text{We are from Newcastle}$
- $P = \text{We stopped in Paris}$

$$
\begin{align}
(S \lor N) \land ( (\lnot S \land N) \lor (P \land \lnot S) ) \land ( \lnot N \lor \lnot P)  \\
(S \lor N) \land ( \lnot S \land P\land N ) \land ( \lnot N \lor \lnot P) \\
(S \lor N) \land  \lnot S \land P\land N  \land ( \lnot N \lor \lnot P) \\
(S \lor N) \land  \lnot S \land P\land (N \lor \lnot P) \\
(S \lor N) \land  \lnot S \land P\land N \\
\lnot S \land N \land P\land N \\
\lnot S \land N \land P
\end{align}
$$

