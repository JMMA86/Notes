#Modelación #Oscar 

Ejercicios dejados en la clase pasada:
https://icesiedu-my.sharepoint.com/:x:/g/personal/1126597295_u_icesi_edu_co1/Ef1tUvOM7Y5HnVaHFi04rNgBcevU20lwZ-aEBO6YQLUIZA?e=2HUZfS

# Crédito

**VA** = siempre formula VP.
**Cuotas** = PAGADAS -> Se paga el crédito.
**Total pagados** = Total pagado  - VP | $\Sigma$ Columnas alícuotas Sistemas de amortización
**Proporción intereses pagados** = $\frac{\text{Intereses pagados}}{VP}$ | $\Sigma$ Columnas intereses Sistemas de amortización

# Ahorro

**VA** = Siempre tendrá formula VF (Cuotas ahorradas o apartadas)
**Total ahorrado** = $[VA * \text{Número de cuotas ahorradas}]$ (Recordar incluir la cuota del momento 0)
**Proporción de intereses ganados** =$VF - \text{total ahorrado} \rightarrow \Sigma \ \text{Columna de intereses}$
**Interés ganado** = $\frac{\text{Intereses Ganados}}{\text{Total ahorrado}}$

# Periodo muerto y periodo de gracia
Esto es un evento que solo ocurren con los créditos.
## PM (periodo muerto)
Lapso de tiempo en el que no se hacen pagos y no se causan intereses.

Entonces:
$\text{Saldo VP momento 0} = \text{Saldo del crédito después de PM}$

Donde:
- $VA_{PM} = VP * \frac{ip\% * (1 + ip\%)^{nplazo - PM}}{(1 + ip\%)^{nplazo - PM} - 1}$
## PG (periodo de gracia)
Lapso de tiempo donde no hay pagos pero si se causan intereses.

Entonces:
$\text{Saldo VP mom 0} < \text{Saldo del crédito después PG}$
(El saldo aumenta durante el PG)

- $VA_{PG} = VP*\frac{ip\% * (1+ip\%)^{nplazo}}{(1 + ip\%)^{nplazo - PG} - 1}$

