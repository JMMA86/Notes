#Sesión #Apo #Oscar 

# Relational programming

Is a declarative programming paradigm that emphasizes the use of relations to express computation.
- RP focuses on what the relationships between data elements are.
- Programs are constructed by defining facts and rules that describes relationships, and computations are performed by querying these relationships.
- The underlying system uses logical inference to derive answers based on the defined relations, very much like querying a database in SQL.

```pl
f(X, 0) :- X < 3, !.
f(X, 2) :- X >= 3, X <= 6 !.
% el ! funciona como un brake
```

---

# Game solving

Existen las búsquedas informadas y las búsquedas no informadas.

