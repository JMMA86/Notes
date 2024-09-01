#Modelación #Sesión #Oscar 

# Créditos, ahorros y préstamos
![[WhatsApp Image 2024-08-22 at 5.11.59 PM.jpeg]]
# Equivalencia de flujos Alícuotas o Anualidades

Hace referencia al calculo de diferentes transacciones realizadas en el mismo periodo. La forma en la que se comporta puede ser derivada de la serie que la relaciona con el valor presente.

$$VP = \sum_{j = 1}^{n} \frac{FF_j}{(1+i)^j}$$
Que se termina convirtiendo en:

$$VP = \frac{A[(1 + i)^n - 1]}{[i (1 + i)^n]}$$
Donde:
- $VP$ Valor presente ($)
- $A$ Monto de cada alícuota ($)
- $i$ Tasa de interés para aplicar en cada periodo (%periodo/100)
- $n$ Números de periodo de la serie alícuota

**Ejemplo:**
Para cancelar un préstamo al 2,5% mensual Ud. tiene que pagar 20 cuotas mensuales de $256.589 cada una; ¿cuánto dinero le prestaron?

$A = \$256.589$
$i = 2.5\% = 0.025$
$n = 20 \ \text{meses}$

$VP = 256.589 \times [(1 + 0.025)^{20} - 1] / [0.025 \times (1 + 0.025)^{20}]$
$VP = \$4.000.000$

## Alícuota de un flujo presente

Al despejar la fórmula de la alícuota, el valor original de esta se puede obtener si encontramos los otros datos.

$$VA = P [i (1 + i)^n] / [(1 + i)^n - 1]$$
Donde:
- $VA$ Es el valor de la alícuota($)
- $P$ Es el flujo presente ($)
- $i$ Tasa de interés para aplicar en cada período (%periodo/100)
- $n$ Número de periodos de la serie alícuota

![[Pasted image 20240822221029.png]]

## Alícuota y valor futuro 

Al igual que con los otros métodos, se emplea la relación entre la Alícuota y el valor presente, y el valor presente con el valor futuro.

$$VF = P(1 + i)^n$$
Que se resume en
$$VF = A[(1 + i)^n - 1] / i$$
Donde:
- $VF$ Valor futuro ($)
- $A$ Monto de cada alícuota ($)
- $i$ Tasa de interés para aplicar en cada periodo (%periodo/100)
- $n$ Números de periodo de la serie alícuota

Que nuevamente despejando, podemos decir que:
$$VA = F \frac{i}{[(1 + i)^n - 1]}$$
Donde:
- $VA$ Valor alícuota ($)
- $F$ Flujo futuro ($)
- $i$ Tasa de interés para aplicar en cada periodo (%periodo/100)
- $n$ Números de periodo de la serie alícuota

![[Pasted image 20240822223213.png]]

![[Pasted image 20240822223929.png]]

## Valor presente de una alícuota o perpetuidad

Muchas veces es útil considerar la vida de un negocio como perpetua (más o menos 20 años Colombia y 50 Estados Unidos)

Proviene de:
$$VP = A[(1 + i)^n - 1] / [i (1 + i)^n]$$
Y cuando se toma en cuenta la perpetuidad:
$$\lim_{n \to \omega} VP = A[1 - 1/\omega]/i$$
Al final de todo nos queda:
$$VP_{n \to \omega} = A / i$$
Donde:
- $VP$ Valor presente ($)
- $A$ Monto de cada alícuota ($)
- $i$ Tasa de interés para aplicar en cada periodo (%periodo/100)
- $n$ $\omega$ (infinito) números de periodo de la serie alícuota

![[Pasted image 20240822224632.png]]

## Valor presente de una alícuota anticipada

![[Pasted image 20240822224737.png]]

![[Pasted image 20240822224756.png]]

![[Pasted image 20240822224813.png]]

## Plazo muerto y periodo de gracia

### Plazo muerto
Es un momento en el que no se realizan pagos ni se contabilizan intereses. Se corre el capital sin modificar pero el número de periodos para pago de cuotas se disminuye lo que dure el plazo muerto.
### Periodo de gracia
Es un periodo en el que no se realizan pagos pero si se contabilizan intereses.

![[Pasted image 20240822225309.png]]

![[Pasted image 20240822225319.png]]

![[Pasted image 20240822225331.png]]

---

> Para un ahorro se usa una alícuota con valor futuro.
> Con un crédito o préstamo se usa el valor presente.

![[Pasted image 20240823092745.png]]


### Ejercicios de alícuotas

https://docs.google.com/spreadsheets/d/1mFqp6WEyNk45NN3M9GQ68ZAqbRhq2CvL1VS2oDedqSw/edit?gid=0#gid=0

