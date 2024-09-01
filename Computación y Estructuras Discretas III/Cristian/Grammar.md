
#### Context Free Grammars

##### Example 1

CFG that generates the language $0^{*}10^{*}10^{*}$ over $\Sigma= \{ 0, 1 \}$

$$
\begin{align}
V  & = \{ S, A \} \\
\Sigma &  =  \{ 0, 1 \} \\
P  & = \begin{cases}
S \implies A 1 A 1 A  \\
 A \implies 0A | \lambda \\
\end{cases}
\end{align}
$$

Also:

$$
\begin{align}
V  & = \{ S, A, B \} \\
\Sigma &  =  \{ 0, 1 \} \\
P  & = \begin{cases}
S \implies 0S | 1A  \\
 A \implies 0A | 1B \\
 B \implies 0B | \lambda
\end{cases}
\end{align}
$$
##### Example 2

Find a CFG that generates the language $L = \{ a^{i}b^{i} \ | \ i \geq 0 \}$ over $\Sigma=\{ a,b \}$

$$
\begin{align}
V  & = \{ S, A \} \\
\Sigma  & = \{ 0,1 \} \\
P  & = \begin{cases}
S \implies aSb  | \lambda
\end{cases}
\end{align}
$$

![[Grammar 2024-08-26 11.45.56.excalidraw]]


Using an automaton, the production set can be constructed using the transitions.

$$
\begin{align}
P  & = \begin{cases}
S \implies aS | bA \\
S \implies bA | aS|\lambda
\end{cases}
\end{align}
$$

