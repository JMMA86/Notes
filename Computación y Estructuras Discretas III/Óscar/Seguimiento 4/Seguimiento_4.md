Óscar Andrés Gómez Lozano

# Punto 1 CFG

**Turning into CNF:**
$$
\text{Step 0:}
\left \{
\begin{align}
 & S \rightarrow bA | aB | \lambda \\
 & A \rightarrow aB | bCS | b \\
 & B \rightarrow aA | bAS | a \\
 & C \rightarrow SaC | Ba
\end{align}
\right.
$$

**Remove useless variables:**
$$
\text{Step 1:}
\left \{
\begin{align}
 & S \rightarrow bA | aB | \lambda \\
 & A \rightarrow aB | bCS | b \\
 & B \rightarrow aA | bAS | a \\
 & C \rightarrow SaC | Ba
\end{align}
\right.
$$

$$
\begin{align}
 & \text{Gen1} = \{ S, A, B \} \\
 & \text{Gen2} = \{ S, A, B, C\}
\end{align}
$$
*All variables are generating*

**Remove unreachable variables:**

$$
\text{Step 2:}
\left \{
\begin{align}
 & S \rightarrow bA | aB | \lambda \\
 & A \rightarrow aB | bCS | b \\
 & B \rightarrow aA | bAS | a \\
 & C \rightarrow SaC | Ba
\end{align}
\right.
$$

$$
\begin{align}
 & \text{Gen1} = \{ S \} \\
 & \text{Gen2} = \{ S, A, B\} \\
 & \text{Gen2} = \{ S, A, B, C \}
\end{align}
$$

*All variables are reachable*

**Remove nullable variables:**

$$
\text{Step 3:}
\left \{
\begin{align}
 & S \rightarrow bA | aB | \lambda \\
 & A \rightarrow aB | bCS | b \\
 & B \rightarrow aA | bAS | a \\
 & C \rightarrow SaC | Ba
\end{align}
\right.
$$

$$
\begin{align}
 & \text{Gen1} = \{ S \} \\
 & \text{Gen2} = \{ S, A, B, C \} \\
\end{align}
$$

*There are nullable variables but as it is the S, we cannot remove them*

$$
\text{Step 3:}
\left \{
\begin{align}
 & S \rightarrow bA | aB | \lambda \\
 & A \rightarrow aB | bCS | b \\
 & B \rightarrow aA | bAS | a \\
 & C \rightarrow SaC | Ba
\end{align}
\right.
$$

**Removing unit productions:**

$$
\text{Step 4:}
\left \{
\begin{align}
 & S \rightarrow bA | aB | \lambda \\
 & A \rightarrow aB | bCS | b \\
 & B \rightarrow aA | bAS | a \\
 & C \rightarrow SaC | Ba
\end{align}
\right.
$$

*There are no unit productions*

**Introducing new variables:**

$$
\text{Step 5:}
\left \{
\begin{align}
 & S \rightarrow T_{b}A | T_{a}B | \lambda \\
 & A \rightarrow T_{a}B | T_{b}CS | T_{b} \\
 & B \rightarrow T_{a}A | T_{b}AS | T_{a} \\
 & C \rightarrow ST_{a}C | BT_{a} \\
 & T_{a} \rightarrow a \\
 & T_{b} \rightarrow b \\
\end{align}
\right.
$$

**Removing binary productions:**

$$
\text{Step 5:}
\left \{
\begin{align}
 & S \rightarrow T_{b}A | T_{a}B | \lambda \\
 & A \rightarrow T_{a}B | T_{1}S | T_{b} \\
 & B \rightarrow T_{a}A | T_{2}S | T_{a} \\
 & C \rightarrow T_{3}C | BT_{a} \\
 & T_{a} \rightarrow a \\
 & T_{b} \rightarrow b \\
 & T_{1} \rightarrow T_{b}C \\
 & T_{2} \rightarrow T_{b}A \\
 & T_{3} \rightarrow ST_{a}
\end{align}
\right.
$$

---

# Punto 2

$$
\text{Step 0: }
\begin{align}
\begin{cases}
S \implies BB | \lambda \\
B \implies BB | AB | a \\
A \implies AB | b \\
\end{cases}
\end{align}
$$
$$
\text{Step 1: }
\begin{align}
\begin{cases}
S \implies BB | \lambda \\
B \implies BB | AB | a \\
A \implies b | bZ  \\
Z \implies B | BZ
\end{cases}
\end{align}
$$
$$
\text{Step 2: }
\begin{align}
\begin{cases}
S \implies BB | \lambda \\
B \implies AB | a | ABY |  aY \\
A \implies b | bZ  \\
Z \implies B | BZ \\
Y \implies BY | B
\end{cases}
\end{align}
$$
$$
\text{Step 3: }
\begin{align}
\begin{cases}
S \implies BB | \lambda \\
B \implies bB | bZB | a | bBY | bZBY |  aY \\
A \implies b | bZ  \\
Z \implies B | BZ \\
Y \implies BY | B
\end{cases}
\end{align}
$$
$$
\text{Step 4: }
\begin{align}
\begin{cases}
S \implies bBB | bZBB | aB | bBYB | bZBYB | aYB | \lambda \\
B \implies bB | bZB | a | bBY | bZBY | aY \\
A \implies b | bZ  \\
Z \implies bB | bZB | a | bBY | bZBY | aY | bBZ | bZBZ | aZ | bBYZ | bZBYZ | aYZ \\
Y \implies bB | bZB | a | bBY | bZBY | aY | bBY | bZBY | aY | bBYY | bZBYY | aYY
\end{cases}
\end{align}
$$
