#Sesión #Discretas 

$L = (aba* \cup bc+a)b*$ over $\Sigma = \{ a, b, c \}$

```yaml
# Maquina de Turing para el lenguaje L = (aba* ∪ bc+a)b*
input: "ababca"
blank: " "
start state: q0
table:
  q0:
    a: {R: q1}
    b: {R: q2}
    ' ': {R: q_accept}

  q1: 
    b: {R: q2}
    a: {R: q1}
    ' ': {R: q_accept}

  q2:
    c: {R: q3}
    a: {L: q_reject}
    b: {R: q4}
    ' ': {R: q_accept}

  q3:
    c: {R: q3}
    a: {R: q4}
    b: {L: q_reject}
    ' ': {R: q_accept}

  q4:
    b: {R: q4}
    ' ': {R: q_accept}

  q_accept:
    ' ': {R: q_accept}

  q_reject:
    ' ': {R: q_reject}
```