# Óscar Andrés Gómez Lozano

1. ![[Pasted image 20240927152008.png]]
```python
input: "abbbbbbb"
blank: " "
start state: q0
table:
  # Estado inicial, procesando la primera parte
  q0:
    a: {R: q1}     # Si empieza con 'a', procesa 'aba*'
    b: {R: q2}     # Si empieza con 'b', procesa 'bc+a'

  # Procesando "aba*"
  q1:
    b: {R: q1b}    # Después de 'a', debe seguir 'b'

  q1b:
    a: {R: q1b}
    b: {R: q1b}
    ' ': {R: q_accept}

  # Procesando "bc+a"
  q2:
    c: {R: q3}     # Después de 'b', debe seguir 'c+'
    ' ': {R: q_reject}

  q3:
    c: {R: q3}     # Continua con 'c+'
    a: {R: q4}     # Luego debe seguir 'a'
    ' ': {R: q_reject}

  q4:
    b: {R: q4}     # Continua procesando 'b*'
    ' ': {R: q_accept}

  # Estados de aceptación y rechazo
  q_accept:
    ' ': {R: q_accept}  # Acepta si encuentra un blanco

  q_reject:
    ' ': {R: q_reject}  # Rechaza si encuentra un blanco
```

---

Ejercicio 2:

![[Pasted image 20240927161752.png]]

```python
input: 'baaacaaacbaaaa'
blank: ' '
start state: q0
table:
  # Estado inicial, busca la 'b' al inicio de la cadena
  q0:
    'b': {write: 'Y', R: q1}
    
  q1:
    'a': {write: 'X', R: q2}
    'Z': {write: 'Z', R: q11}
  
  q2:
    'a': {R: q2}  
    'c': {write: 'Z', R: q3}
    'Z': {write: 'Z', R: q3}

  q3:
    'a': {write: 'X', R: q4} 
    'X': {R: q3}

  q4:
    'a': {R: q4}
    'c': {write: 'Z', R: q5}
    'Z': {write: 'Z', R: q5}

  q5:
    'b': {write: 'Y', R: q6} 
    'Y': {write: 'Y', R: q6}

  q6:
    'a': {write: 'X', L: q7}
    'X': {R: q6}

  q7:
    'Y': {L: q8}  
    'X': {L: q7}  
    'a': {L: q7}

  q8:
    'Z': {write: 'Z', L: q9}

  q9:
    'X': {L: q9}
    'a': {L: q9}
    'Z': {write: 'Z', L: q10}

  q10:
    'a': {L: q10}
    'X': {write: 'X', R: q1}
    
  q11:
    'X': {write: 'X', R: q11}
    'Y': {write: 'Y', R: q11}
    'Z': {write: 'Z', R: q11}
    ' ': {R: q12}

  q12:
```