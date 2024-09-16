#Discretas #Oscar 

# Example grammar for a DSL

```TextEx
HelloWorldModel:
	'hello' to_greet+=Who[',']
;

Who:
	name = /[^,]*/
```


# Implementing a robot with textx

```bin
101 110001110 11011 111011101

10101110 1101 110 101

101 10011 110111 1101001 101

110 1010001 1010110 1010111 110

101010 11011 1011 1101001 101010
```

---

# Grammars and languages

## Useless variables
- Those that never appear in the course of a derivation
- Those that cannot be converted into strings of terminals

## Reachable variables
A variables A is reachable if there exists if I can go to it with some combinations of variables.

![[Pasted image 20240913142036.png]]

Using the algorithm over a CFG:
![[Pasted image 20240913145233.png]]

Another example:

*We have to follow the following steps to get a grammar with no useless variables and without unreachable variables:*
![[Pasted image 20240913145708.png]]

First step:
![[Pasted image 20240913145432.png]]

Second step:
![[Pasted image 20240913145541.png]]

## Rule $\lambda$ 

A nullable rule is the one that takes me to $\lambda$ or concatenated with another rule takes me to $\lambda$.

![[Pasted image 20240916105300.png]]
## Unit production

A production of the form $A \rightarrow B$ where A and B are variables.

![[Pasted image 20240916105350.png]]

## Chomsky Normal Form
- Has no useless variables
- Has no $\lambda$ productions
- All productions are of the form: $A \rightarrow a$ or $A \rightarrow BC$ (Binary productions).
- It does not have unit productions

Converting a CFG to a CNF:
- Remove non-generating variables.
- Remove non-reachable variables.
- Remove $\lambda$ productions (except possibly $S \rightarrow \lambda$).
- Eliminate unit productions.
- The resulting productions (different from S → λ) should be of the form A → a or of the form A → w, where a ∈ Σ, w ∈ V ∗ and |w| ≥ 2. These last ones can be simulated with productions of the form A → BC or A → a. First, introduce, for each a ∈ Σ, a new variable Ta with the only production Ta → a. Then, introduce new variables, with binary productions, to simulate the desired productions.

![[Pasted image 20240913152755.png]]

