#Apo #Oscar 

$\varphi [y/w] \forall_x x = y + 1$ Por ejemplo para hacer un cambio de variable, nos quedaría para las variables libres como $\forall_x x = w + 1$

$$
\begin{align}
&1) child(juan, ana, pedro) \\
&2) \forall_x \forall_y \forall_z child(x, y, z) \implies child(x, z, y) \\
&3) \neg child(juan, pedro, ana) \\
&4) [x/j, y/a, z/p] child(j, a, p) \implies child(juan, pedro, ana) \\
&5) \neg child(juan, ana, pedro) \lor child(juan, pedro, ana) \\
&6) child(juan, pedro, ana) (1, 5)\\
&7) F (3, 6)
\end{align}
$$
Por lo que se ve, se pueden eliminar los cuantificadores reemplazando las variables que usaban por fórmulas que cumplan la misma función.

La razón por la que necesito quitar cuantificadores sobre algo es para disminuir el espacio de búsqueda.

---

# Resolución utilizando substitución

### Mesa giratoria 1

*Como poner los cuantificadores a la izquierda*

$$
\begin{align}
&(\forall_x P(x)) \implies \exists_y Q(y)\\
&\neg \forall_x P(x) \lor \exists_y Q(y)\\
&\exists_x \neg P(x) \lor \exists_y Q(y)\\
&\exists_x \exists_y (P(x) \implies Q(y))
\end{align}
$$

## Estrategias para reducir el espacio de búsqueda
### Unit resolution

Prioritizes resolution steps in with one the two clauses consist of only one literal, called a unit clause.

### Support strategy

One obtains a guaranteed reduction of the search space by application of the set of support strategy.

Here a subset of $KB \land \neg Q$ is defined as the set of support (SOS)

The problem here is this is not complete.

### The pure literal rule
With the pure literal rule all clauses that contain literals for which there are no complementary literals in other clauses can be deleted.

### Subsumption

If the literals of a clause $K_1$ represent a subset of the literals of the clause $K_2$, then $K_2$ can be deleted.

---

### Ejercicios

Unify (if possible) the following terms and give the MGU and the resulting terms.
$$
\begin{align}
p(x, f(y)), p(f(z), u) \implies p(f(z), f(y))
\end{align}
$$

![[Pasted image 20240829102659.png]]

## Monotonicity

![[Pasted image 20240829104347.png]]

