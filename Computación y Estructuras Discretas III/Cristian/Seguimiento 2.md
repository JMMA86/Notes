
## I. Resolution Method
### 1.

#### Formalization

 - It is raining, it is snowing, or it is dry: $R \lor S \lor D$
 - It is warm: $W$
 - It is not raining: $\neg R$
 - It is not snowing: $\neg S$
 - If the weather is nice, then it is good to walk: $N \implies G$
 - If the weather is dry and warm, the weather is nice: $D \land W \implies N$
prove that:
- It is good to walk: $G$

#### Transformation into CNF

$$
S = \{ (R \lor S \lor D) \land W \land  \neg R \land \neg S \land (\neg N \lor G) \land (\neg D \lor \neg W \lor N) \land \neg G  \}
$$

#### Proof by contradiction

1. $R \lor S \lor D$
2. $W$
3. $\neg R$
4. $\neg S$
5. $\neg N \lor G$
6. $\neg D \lor \neg W \lor N$
7. $\neg G \quad \text{Negated clause}$
8. $\neg N \quad R(7,5)$
9. $\neg D \lor \neg W \quad R(8, 6)$
10. $\neg D \quad R(9,2)$
11. $R \lor S \quad R(10,1)$
12. $R \quad R(11, 4)$
13. $\Box \quad R(12, 3)$

As I obtained $R \land \neg R$, it is proved that *it is good to walk*

### 2.

#### Formalization

 Given the following hypothesis:
 - If Mary loves Pat, then Mary loves Quincy: $P \implies Q$
 - If it is Monday, Mary loves Pat or Quincy: $M \implies P \lor Q$
prove that:
- If it is Monday, then Mary loves Quincy: $M \implies Q$

#### Transformation into CNF

$$
\begin{align}
S & = \{ (\neg P \lor Q) \land (\neg M \lor P \lor Q) \land \neg(\neg M \lor Q) \} \\
  & = \{ (\neg P \lor Q) \land (\neg M \lor P \lor Q) \land M \land \neg Q \}
\end{align}
$$

#### Proof by contradiction

1. $\neg P \lor Q$
2. $\neg M \lor P \lor Q$
3. $M$
4. $\neg Q$
5. $\neg M \lor P \quad R(4,2)$
6. $\neg M \lor Q \quad R(5, 1)$
7. $Q \quad R(6, 3)$
8. $\Box \quad R(7,4)$

As I obtained $Q \land \neg Q$, it is proved that *if it is monday, then Mary loves Quincy*

### 3.

#### Formalization

Given the following hypothesis:
- Heads you win: $H \implies YW$
- Heads or Tails: $H \lor T$
- You win or I win: $YW \lor IW$
- You loose or I loose: $\neg YW \lor \neg IW$ 
- Tails I lose: $T \implies \neg IW$
prove that:
- You always win: $IW$

#### Transformation into CNF

$$
S = \{ (\neg H \lor YW) \land (H \lor T) \land (YW \lor IW) \land (\neg YW \lor \neg IW) \land (\neg T \lor \neg IW) \land \neg IW \}
$$

#### Proof by contradiction

1. $\neg H \lor YW$
2. $H \lor T$
3. $YW \lor IW$
4. $\neg YW \lor \neg IW$
5. $\neg T \lor \neg IW$
6. $\neg YW$
7. $\neg H \quad R(6, 1)$
8. $T \quad R(7,2)$
9. $\neg IW \quad R(8,5)$
10. $YW \quad R(9,3)$
11. $\Box \quad R(10, 6)$

As I obtained $YW \land \neg YW$, it is proved that *You always win*


### 4.
#### Formalization

Given the following hypothesis:
- If you are lactose intolerant, then you cannot eat ice cream: $L \implies \neg I$
- If you are lactose intolerant, then you cannot eat cheese: $L \implies \neg C$
- If you are lactose intolerant, then you cannot drink milk: $L \implies \neg M$
- You eat ice cream: $I$
prove that:
- You are not lactose intolerant: $\neg L$

#### Transformation into CNF

$$
S = \{ (\neg L \lor \neg I) \land (\neg L \lor \neg C) \land (\neg L \lor \neg M) \land I \land L \}
$$

#### Proof by contradiction

1. $\neg L \lor \neg I$
2. $\neg L \lor \neg C$
3. $\neg L \lor \neg M$
4. $I$
5. $L$
6. $\neg I \quad R(5, 1)$
7. $\Box \quad R(6, 4)$

As I obtained $I \land \neg I$, it is proved that *You are not lactose intolerant*

- [ ] ## II. Horn clauses and SLD method
### 1.

#### Formalization

Given the following statements: 
- If the lights are on and the projector is connected, then the presentation will start: $L \land P \implies S$
- If the computer is running and the HDMI cable is plugged in, then the projector is connected: $C \land H \implies P$
- If the presentation starts, then the audience will see the slides: $S \implies A$ 
Prove that: 
- the audience will see the slides: $A$
Assume that:
- the lights are on: $L$
- the computer is running: $C$
- the HDMI cable is plugged in: $H$

#### Transformation into horn clauses

All the clauses are already horn 

#### Proof by SLD resolution

Clauses are sorted considering that facts are first.

1. $L$
2. $C$
3. $H$
4. $L \land P \implies S$
5. $C \land H \implies P$
6. $S \implies A$
7. $A \implies f \quad \text{initial goal}$
8. $S \implies f \quad R(7, 6)$
9. $L \land P \implies f \quad R(8,4)$
10. $P \implies f \quad R(9,1)$
11. $C \land H \implies f \quad R(10, 5)$
12. $H \implies f \quad R(11, 2)$
13. $\Box \implies f \quad R(12, 3)$

Since I reached $\Box \implies f$, it is proved that *the audience will see the slides*

