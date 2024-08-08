#Discretas #Sesión #Oscar 

# Expresiones regulares e introducción a los autómatas

**Power of a language:** Represent all the strings that possibly can be made at that power. $A = \{a , b\}$ So $A^2 = \{aa, bb, ab, ba\}$. It is important to consider that we have to consider the whole string, so $A^2 = \{a, ab\} \implies \{aa, aab, abab, ...\}$ 

### Regular languages

Are all those languages that I can build from the basic languages $\emptyset, \{\lambda\}, \{a\}, a \in \Sigma$, using union, concatenation and Kleene closure.

### Regular expression

Any character that has any letter (possibly 0) from the alphabet that starts with an 'a'.
```Python
a\w*
```

### Literals

Simplest forms of pattern matching. e.g. Look for the letter AND.

555-555-5555 555 555 5555 5555555555 = [0-9]{3}[-\s]? (y esto hacerlo hasta que completemos todos los números)

Recordar que yo le digo hola y ella me dice gudbai ".+" (Cualquier elemento que tenga ", todos) ".+?" (Primer elemento que tenga ")

