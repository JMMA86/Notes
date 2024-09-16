#Discretas #Oscar 

# Declarative languages

As in functional languages, the process of creating code is centered in the what, rather than the how

So, we have:
- *Declarative paradigm*
	- Unification
		- Pattern matching
- *Inmutable states*
	- Unique assignation
		- Auxiliar values
	- No control structures

**But the real form of what we have in prolog is:**
- *Simple*
	- Constant
		- Atoms
		- Numbers
		- Booleans
		- Strings
	- Variables
- *Compound/Structures*
	- Structures
	- Lists

## Atoms
Simple words to represent our data: John, Doe, Patty, Selma
Or with quotes: 'John', 'Doe', 'Patty', 'Selma'

## Numbers
The range of integers vary regard the implementation usually between $[-16383, 16383]$ 

## Variables
Are placeholders that can represent any value. They start with an uppercase letter or an underscore. X, Age, \_Value

## Booleans

True or false
## Strings

Lists of characters.

## Structures
The are divided in two components, functor and arguments
```pl
date(1, may, 1983)
```

### where

| date           | (1, may, 1983) |
| -------------- | -------------- |
| Functor (name) | Arguments      |

All data objects are called "terms"

For example, with points, segments and triangles:
```Prolog
point(X, Y)
segment(P1, P2)
triangle(P1, P2, P3)

point(6,4)
point(4,2)
point(7,1)
point(2,3)
point(1,1)
segment(point(6,4), point(6,4))
triangle(point(6,4), point(4,2), point(7,1))

segment(X1, Y1, X2, Y2) :- point(X1, Y1), point(X2, Y2)
```

---

# The monkey and the bananas

```pl
% monkey and the bananas

move(
    state(middle, onbox, middle, hasnot),
    grasp,
    state(middle, onbox, middle, has)    
).

move(
    state(middle, onfloor, middle, hasnot),
    climb,
    state(middle, onbox, middle, hasnot)
).

move(
    state(S, onfloor, S, Bna),
    push(S, T),
    state(T, onfloor, T, Bna)
).

move(
    state(S, onfloor, Bpos, Bna),
    walk(S, T),
    state(T, onfloor, Bpos, Bna)
).

canget(state(_,_,_,has)).
canget(State1) :- move(State1, _, State2), canget(State2).
```

## Construcción de una lista por unificación

Las listas al igual que en Scala están compuestas por una cabeza y una cola.

Implementing the membership relation:
```pl
member(X, [X|_).
member(X, [_|T]) :- member(X, Tail).
```

