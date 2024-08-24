#Discretas #Sesión #Welcum #Oscar 

### Alphabets
This are finite sets of symbols, the symbol $\Sigma$ is used to represent them. (always use the {} to delimit them)

### Strings
Sequence of symbols chosen from an alphabet, the minimal string is $\lambda$ which is a set with no symbols from an alphabet. A string has a length, and its exactly what it means. 

### String's power
Is the concatenation of a single element: $a^2 = aa$. 

### Alphabets power
Represents all the possibilities to form a string with an n length: $\Sigma = \{a, b\}$ $\Sigma^2 = \{aa, bb, ab, ba\}$

$\Sigma^*$ Means all the elements with all the possible powers that can be made.

Sigma plus: $\Sigma^+ = \Sigma^* - \lambda$ 

Concatenations works as in mathematics.

Substrings = cp substring

### Languages
A language L over an alphabet $\Sigma$ is a subset of $\Sigma^*$, a set of specific combinations. It has all the operations of a set.

A,B = AB = BA = A = {a, aa} B = {aa, a} {a, aa, aa, a} {aa, a, a, aa}

A language can be decomposited in this way: $A = uv$

---

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

