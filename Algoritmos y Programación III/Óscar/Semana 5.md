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

