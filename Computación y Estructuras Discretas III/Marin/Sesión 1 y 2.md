# Definiciones

**Alfabeto**: Conjunto finito de símbolos, definido por$\sum$.

Ejemplo: Alfabeto binario ->$\sum=\{0,1\}$

**Palabra**: Secuencia finita de símbolos de un alfabeto.

Ejemplo: 01101 es un String del alfabeto binario.

**Empty String**: Palabra con ningún símbolo, definido por$\lambda$.

**Tamaño de un String**: Número de símbolos contenidos, definido por$|w|$(siendo$w$un String).

**Potencia de un alfabeto**: Conjunto de posibles palabras de un conjunto de tamaño$n$.

Ejemplo: Si$\sum=\{a, b, c\}$,$\sum ^{2}=\{aa,ab,ac,ba,bb,\dots,cc\}$.

Nota:$u^{0}=\lambda$, siendo$u$un alfabeto.

**Kleene Star**: Es el conjunto de todos los posibles Strings de un alfabeto.

Ejemplo: Si$\sum=\{a, b, c\}$,$\sum ^{*}=\{\lambda,a,b,c,aa,ab,\dots\}$.

**Closure (Cierre)**: Lo mismo que el asterisco pero excluyendo el String vacío.

Ejemplo: Si$\sum=\{a, b, c\}$,$\sum ^{+}=\{a,b,c,aa,ab,\dots\}$.

**Concatenación de Strings**: Unir dos Strings, se representa con el$\cdot$.

Ejemplo:$u\cdot v=uv$,$u\cdot(va)=(u\cdot v)a$

**Reverso de un String**: Se expresa con$u^{R}$, siendo$u$un String.

**Substring**: Es una sub-palabra de un String.

**Preffix**: Prefijo o conjunto de símbolos iniciales de un String.

**Suffix**: Sufijo o conjunto de símbolos finales de un String.

Nota: El String vacío$\lambda$es un prefijo y sufijo al mismo tiempo de cualquier String.

**Language**: Un lenguaje es un subconjunto de un alfabeto (conjunto de Strings).

Ejemplo:$\sum=\{a,b,c\}, L=\{a,aba,aca\}$

# Operaciones

Las operaciones son:

$A \cup B$: **Union**
$A\cap B$: **Intersection**
$A-B$: **Difference**
$\overline{A}=\sum ^{*}-A$: **Complement**

if$u,v\in \sum ^{*}$, show that$(uv)^{R}=v^{R}u^{R}$

## Ejercicios

![[Pasted image 20240801141130.png]]

**Solución**

1.
$$
\sum*=a,b,aa,ab,\dots
$$
2.
$$
u^n = \begin{cases}
\lambda, & \text{si } n = 0 \\
u \cdot u^{n-1}, & \text{si } n > 0
\end{cases}
$$
3.
$$
|u| = \begin{cases}
0, & \text{si } u = \lambda \\
1 + |v|, & \text{si } u = av \text{ para algún } a \in \Sigma \text{ y } v \in \Sigma^*
\end{cases}
$$
4.
$$
u^R = \begin{cases}
\lambda, & \text{si } u = \lambda \\
av^R, & \text{si } u = va \text{ para algún } v \in \Sigma^* \text{ y } a \in \Sigma
\end{cases}
$$
5.
$$
\begin{align}
(u\lambda)^R &= \lambda^R u^R \\
u^R &= u^R
\end{align}
$$
6.
$$
\begin{align}
(u\lambda a)^R &= (\lambda a)^R u^R \\
&= a (\lambda u)^R \\
&= a \lambda^R u^R \\
&= a \lambda u^R
\end{align}
$$
7.
$$
\begin{align}
(uva)^R &= a (uv)^R \\
&= a u^R v^R \\
&= (ua)^R v^R
\end{align}
$$
8.
$$
\begin{align}
\{ \lambda \} \cdot A &= \{ u \lambda \mid u \in A \} \\
&= \{ u \mid u \in A \} \\
&= A
\end{align}
$$
9.
$$
\begin{align}
A \cdot \{ \lambda \} &= \{ u \lambda \mid u \in A \} \\
&= \{ u \mid u \in A \} \\
&= A
\end{align}
$$
## Operaciones (Ejercicios)
$$
\begin{align}
& A=\{ab,aab\} \\
& B=\{ba,bba\}
\end{align}
$$
1.$A\cup B$
$$
\{ab,aab,ba,bba\}
$$
2.$A\cap B$
$$
\{\lambda\}
$$
3.$A\cdot B$
$$\{abba,abbba,aabba,aabbba\}$$
4.$A^{3}$
$$
\{ab,aab\}\cdot\{ab,aab\}\cdot\{ab,aab\}
$$
$$
\{ab,aab\}\cdot\{abab,abaab,aabab,aabaab\}
$$
$$
\{ababab,ababaab,abaabab,abaabaab,aababab,aababaab,aabaabab,aabaabaab\}
$$

## Expresiones Regulares

### Definición

Las **expresiones regulares** son secuencias de símbolos y caracteres que expresan un Lenguaje Regular y se utilizan como cadenas o patrones para ser buscados dentro de un texto más largo.

#### Expresiones Regulares Básicas
1. ∅ es una expresión regular que representa el lenguaje ∅.
2. λ es una expresión regular que representa el lenguaje {λ}.
3. a es una expresión regular que representa el lenguaje {a}, donde a ∈ Σ.

#### Combinaciones de Expresiones Regulares
Si$R$y$S$son expresiones regulares sobre Σ, entonces las siguientes también son regulares:
-$(R)(S)$
-$(R \cup S)$
-$(R)^\ast$

### Ejemplos de Expresiones Regulares
Dado el alfabeto$\Sigma = \{a, b, c\}$, la expresión regular:

$(a \cup b^\ast) a^\ast (bc)^\ast$

representa el lenguaje:

$\{a\} \cup \{b\}^\ast \cdot \{a\}^\ast \cdot \{bc\}^\ast$

### Metacaracteres
Los **metacaracteres** son caracteres que tienen un significado especial durante el procesamiento de patrones en expresiones regulares. Se usan para definir los criterios de búsqueda y cualquier manipulación de texto.

#### Ejemplos de Metacaracteres
- El punto (.) coincide con cualquier carácter único de cualquier tipo (excepto un salto de línea). 
  - Ejemplo: `.at` significa cualquier letra, seguida de la letra "a" seguida de la letra "t".

### Clases de Caracteres
Las **clases de caracteres** permiten definir un carácter que coincidirá si cualquiera de los caracteres definidos en el conjunto está presente. Se definen usando corchetes.

#### Ejemplos de Clases de Caracteres
- `[a-z]` coincide con cualquier letra minúscula.
- `[0-9]` coincide con cualquier dígito.
- `[0-9a-zA-Z]` coincide con cualquier carácter alfanumérico.

### Cuantificadores
Los **cuantificadores** especifican cuántas veces debe aparecer un elemento en la cadena para que coincida.

#### Ejemplos de Cuantificadores
- `*` coincide con cero o más repeticiones.
- `+` coincide con una o más repeticiones.
- `?` coincide con cero o una repetición.
- `{n}` coincide exactamente con n repeticiones.
- `{n,}` coincide con al menos n repeticiones.
- `{n,m}` coincide con entre n y m repeticiones.

### Cuantificadores Codiciosos y Perezosos
- Los cuantificadores **codiciosos** tratan de hacer coincidir la mayor cantidad posible (por defecto).
  - Ejemplo: `.+` coincide con la mayor cantidad posible de caracteres.
- Los cuantificadores **perezosos** intentan hacer coincidir la menor cantidad posible añadiendo un signo de interrogación al cuantificador.
  - Ejemplo: `.+?` coincide con la menor cantidad posible de caracteres.

### Operadores de Frontera
Los **operadores de frontera** identifican posiciones específicas en la entrada.
- `^` coincide al comienzo de una línea.
- `$` coincide al final de una línea.
- `\b` coincide con un límite de palabra.
- `\B` es lo opuesto a `\b`.
- `\A` coincide con el comienzo de la entrada.
- `\Z` coincide con el final de la entrada.

### Expresiones Regulares en Python

#### Operación `groups`
Devuelve una tupla con todos los subgrupos en la coincidencia.
```python
pattern = re.compile(r"(\w+) (\w+)")
match = pattern.search("Hello world")
match.groups()  # ('Hello', 'world')
```

#### Operación `groupdict`
Devuelve un diccionario con todos los grupos nombrados que fueron encontrados.
```python
pattern = re.compile(r"(?P<first>\w+) (?P<second>\w+)")
match = pattern.search("Hello world")
match.groupdict()  # {'first': 'Hello', 'second': 'world'}
```

#### Operaciones `start`, `end` y `span`
- **start**: devuelve el índice donde el patrón coincide.
- **end**: devuelve el final de la subcadena coincidente.
- **span**: da una tupla con los valores de `start` y `end`.

### Ejemplos en Python

#### Uso de `findall`
Retorna una lista con todas las ocurrencias no superpuestas de un patrón.
```python
pattern = re.compile(r"\w+")
pattern.findall("hello world")  # ['hello', 'world']
```

#### Uso de `finditer`
Funciona esencialmente como `findall`, pero devuelve un iterador donde cada elemento es un `MatchObject`.
```python
pattern = re.compile(r"\w+")
matches = pattern.finditer("hello world")
for match in matches:
    print(match.group())
    # 'hello'
    # 'world'
```

