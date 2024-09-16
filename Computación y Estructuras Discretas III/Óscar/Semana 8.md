#Sesión #Discretas #Oscar 

# Exercises transforming into CNF

$$
G:
\left \{
\begin{align}
 & S \rightarrow BCB \\
 & A \rightarrow aA | ab \\
 & B \rightarrow bBa | A | DC \\
 & C \rightarrow aCb | D | b \\
 & D \rightarrow aB | \lambda
\end{align}
\right.
$$
$G*:\{D\}$
$G*:\{D, C,\}$
$G*:\{D, C, B\}$
$G*:\{D, C, B, S\}$

Removing from G.

$$
G:
\left \{
\begin{align}
 & S \rightarrow BCB | B | BC | C | CB | BB | \lambda \\
 & A \rightarrow aA | ab \\
 & B \rightarrow bBa | A | DC | ba |D | C | ba \\
 & C \rightarrow aCb | D | b | ab \\
 & D \rightarrow aB | a
\end{align}
\right.
$$
---

# Greibach Normal Form

All the productions are of the form: $A \rightarrow a$ (Simple productions) pr $A \rightarrow aB_{1}, B_{2},\dots,B_{n}$.

There are certain things that are needed to create a GNF. One of them is the left recursion.

## How can left recursion be eliminated?

The productions of any variable A can be divided into two classes:
$$\left\{
\begin{align}
 & A \rightarrow A_{\alpha_{1}} | A_{\alpha_{2}} | \dots | A_{\alpha_{n}} \\
 & A \rightarrow \beta_{1} | \beta_{2} | \dots | \beta_{m}
\end{align}
\right.
$$
Alphas are the ones recursive and betas are the ones that are not recursive with the same variable.

For example:
$$
\begin{align}
 & A \rightarrow AB | BB | b \\
 & A \rightarrow BB | b | BBZ | bZ \\
 & Z \rightarrow B | BZ
\end{align}
$$

## Lemma
In any CFG, a production $A \rightarrow uBv$ can be replaced (simulated) by:
$$
A \rightarrow uw_{1}v | uw_{2}v | \dots | w_{n}
$$
Where:
$$
B \rightarrow w_{1} | w_{2} | w_{3}
$$

The lemma allow us to introduce a terminal at the beginning of the grammar so we can have right recursion.

SO for a CNF, to transform it, we apply both the lemma and the theorem.

$$
G_{0}:
\left \{
\begin{align}
 & S \rightarrow AA | a \\
 & A \rightarrow AA | b
\end{align}
\right.
$$
Using the theorem:
$$
G_{1}:
\left \{
\begin{align}
 & S \rightarrow AA | a \\
 & A \rightarrow b | bZ \\
 & Z \rightarrow A | AZ
\end{align}
\right.
$$
Using the lemma:
$$
G_{2}:
\left \{
\begin{align}
 & S \rightarrow AA | a \\
 & A \rightarrow b | bZ \\
 & Z \rightarrow A | AZ
\end{align}
\right.
$$
Using the lemma:
$$
G_{3}:
\left \{
\begin{align}
 & S \rightarrow bA | bZA | a \\
 & A \rightarrow b | bZ \\
 & Z \rightarrow b | bZ | bZZ \\
\end{align}
\right.
$$

En las diapos hay otro ejemplo que me da pereza de copiar :)

Exercises:
$$
G_{0}
\left \{ 
\begin{align}
 & S \rightarrow AB | a \\
 & A \rightarrow BC | b \\
 & B \rightarrow BB | b \\
 & C \rightarrow BA | a
\end{align}
\right.
$$

$$
G_{1}
\left \{ 
\begin{align}
 & S \rightarrow AB | a \\
 & A \rightarrow BC | b \\
 & C \rightarrow BA | a \\
 & B \rightarrow BB | b \\
\end{align}
\right.
$$
$$
G_{2}
\left \{ 
\begin{align}
 & S \rightarrow AB | a \\
 & A \rightarrow BC | b \\
 & C \rightarrow BA | a \\
 & B \rightarrow b | bZ \\
 & Z \rightarrow B | BZ
\end{align}
\right.
$$
$$
G_{3}
\left \{ 
\begin{align}
 & S \rightarrow bZCB | bCB | bB | a \\
 & A \rightarrow bZC | bC | b \\
 & C \rightarrow bA | bZA | a \\
 & B \rightarrow b | bZ \\
 & Z \rightarrow B | BZ
\end{align}
\right.
$$
$$
G_{4}
\left \{ 
\begin{align}
 & S \rightarrow bZCB | bCB | bB | a \\
 & A \rightarrow bZC | bC | b \\
 & C \rightarrow bA | bZA | a \\
 & B \rightarrow b | bZ \\
 & Z \rightarrow b | bbZZ \\
\end{align}
\right.
$$
