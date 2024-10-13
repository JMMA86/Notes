**Nombre**: Juan Manuel Marín Angarita
**Código**: A00382037

1. Find a CFG in Chomsky Normal Form equivalent to the following CFG:
$$
G:
\begin{cases}
S\to aA|Ba|b \\
A\to aC|bBS \\
B\to Bab|a \\
C\to ACa|Sb
\end{cases}
$$
### Solution
1. Find terminal variables:
$$
\begin{align}
& \text{TERM}_{1}=\{S,B\} \\
& \text{TERM}_{2}=\{S,B\}\cup\{A,C\} \\
& \text{TERM}_{3}=\{S,B,A,C\}\cup\{\}
\end{align}
$$
Same result:
$$
G:
\begin{cases}
S\to aA|Ba|b \\
A\to aC|bBS \\
B\to Bab|a \\
C\to ACa|Sb
\end{cases}
$$
2. Find reacheable non-terminal variables:
$$
\begin{align}
& \text{ALC}=\{S\} \\
& \text{ALC}=\{S\}\cup\{A,B\} \\
& \text{ALC}=\{S,A,B\}\cup\{C\} \\
& \text{ALC}=\{S,A,B,C\}\cup\{\}
\end{align}
$$
Same result:
$$
G:
\begin{cases}
S\to aA|Ba|b \\
A\to aC|bBS \\
B\to Bab|a \\
C\to ACa|Sb
\end{cases}
$$
3. Delete $\lambda$ productions:

The grammar doesn't have any lambda productions, so the step will be ommited.

4. Delete unitary productions:

The grammar doesn't have any lambda productions, so the step will be ommited.

5. Include new variables:

The grammar remains the same way.


