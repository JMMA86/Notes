
Transform into CNF

$$
\begin{align}
\forall x ((\exists y R(x,y) \land \forall y \neg S(x,y)) \implies \neg(\exists y R(x,y) \land P)) \\
\forall x ((\exists y R(x,y) \land \forall y \neg S(x,y)) \implies \forall y \neg R(x,y) \lor \neg P)  \\
\forall x (( \forall y \neg R(x,y) \lor \exists y  S(x,y)) \implies \forall y \neg R(x,y) \lor \neg P)  \\
\forall x (( \forall y_{1} \neg R(x,y_{1}) \lor \exists y_{2}  S(x,y_{2})) \implies \forall y_{3} \neg R(x,y_{3}) \lor \neg P)  \\
\forall x \forall y_{1} \exists y_{2} \forall y_{3} (\neg R(x,y_{1}) \lor   S(x,y_{2}) \implies \neg R(x,y_{3}) \lor \neg P)  \\
\forall x \forall y_{1} \forall y_{3} (\neg R(x,y_{1}) \lor   S(x,f(x,y_{1})) \implies \neg R(x,y_{3}) \lor \neg P) 
\end{align}
$$

Define the three place predicate $\text{child}(x,y,z)$ and the one place predicate $\text{female(x)}$, from the example be given. Define:

- A one place predicate male: $\forall x \ \text{female}(x) \implies \neg \text{male(x)}$
- A two place predicate father and mother: $\forall x \exists y,z \ \text{child}(x,y,z) \land \text{female}(y) \implies \text{mother}(x,y) \land \text{father}(x, z)$
- A two place predicate siblings: $\forall x \exists y,z \ \text{child}(x,y,z) \land \text{child}(u,y,z) \implies \text{siblings}(x,u)$
- A predicate parents(x,y,z) where x is father and y is the mother: $\forall x \exists y,z \ \text{child}(z, x, y) \land \text{female}(y) \land \text{male}(x) \implies \text{parents}(x, y,z)$