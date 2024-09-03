#Discretas #Oscar 

# EBNF

What is an EBNF descroption?

Is an unordered list of EBNF rules. 

Each EBNF rule has three parts:
- A left-hand side (LHS)
- A right-hand side (RHS)
- The $\leftarrow$ character separating these two sides

for example
$\text{digit} \leftarrow 0|1|2|3|4|5|6|7|8|9$
$\text{integer} \leftarrow [+|-] \text{digit}\{\text{digit}\}$
---
$$
\begin{align}
 & \text{ digit } \leftarrow 0 | 1 \\
 & \text{ binary } \leftarrow \{\text{binary}\} \text{ digit } \{\text{digit}\} [* | / |+ |-]\text{digit}\{\text{digit}\} \{binary\}
\end{align}
$$
---
$$
\begin{align}
 & \text{digit} \leftarrow 0|1|2|3|4|5|6|7|8|9 \\
 & \text{float} \leftarrow [+|-] \text{digit}\{\text{digit}\}[.]\text{digit}\{\text{digit}\}
\end{align}
$$
---
$$
\begin{align} \\
\text{ndigit} \leftarrow 1|2|3|4|5|6|7|8|9 \\
\text{digit} \leftarrow 0|1|2|3|4|5|6|7|8|9 \\
\text{normalized} \leftarrow [+|-]\text{ndigit}\{\text{digit}\}|0
\end{align}
$$
---
$$
\begin{align}
 & \text{digit} \leftarrow 0|1|2|3|4|5|6|7|8|9 \\
 & \text{slash-digits} \leftarrow [-]\text{digit} \ \text{digit} \ \text{digit} \ \text{digit} \\
 & \text{normal} \leftarrow \text{digit} \ \text{digit} \ \text{digit} \ \text{slash-digits} \\
 & \text{long} \leftarrow 1[-(]\text{digit} \ \text{digit} \ \text{digit}[)] \text{normal} \\
 & \text{interoffice} \leftarrow 8 \ \text{slash-digits}
\end{align}
$$

(La mayoría no están completos, los hice así solo para practicar la escritura de esto)

por ejemplo:
$$
\begin{align}
 & \text{bin-digits} \leftarrow 0 | 1 \\
 & \text{b-number} \leftarrow 1\{\text{bin-digits}\} | 0 \\
 & \text{operator} \leftarrow +|*|-|/ \\
 & \text{operations} \leftarrow (\text{b-number} \ \text{operator} \ \text{b-number})|(\text{operations} \ \text{operator} \ \text{operations}) | \text{b-number}
\end{align}
$$
---
## Domain Specific languages

A computer programming language of limited expressiveness focused on a particular domain.

It is:
- Computer programming language
- Language nature
- Limited expressiveness
- Domain focus

### TextX

This is a meta-language that is used to create a new language

