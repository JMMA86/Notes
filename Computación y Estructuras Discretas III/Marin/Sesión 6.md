# Máquinas de Turing.

## Ejercicio 1
![[Pasted image 20241008172105.png]]
### Código:
```
input: '1'
blank: ' '
start state: q0
table:
  q0:
    1: {write: ' ', R: q1}
    ' ': {write: 0, R: qf}
  q1:
    1: {write: ' ', R: q2}
    ' ': {write: 1, R: qf}
  q2:
    1: {write: ' ', R: q0}
    ' ': {write: 2, R: qf}
  qf:
    ' ': {write: ' ', L: qf}
```

