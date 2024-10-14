## Caso 4
### Ejecución de TI hasta el paso 3 (Sin comprometerla)
Hasta el momento hemos ejecutado las instrucciones hasta el paso 3, hemos hecho un LOCK TABLE en EXCLUSIVE MODE que nos permitirá que nadie pueda actualizar nuestra tabla hasta que la liberemos, sin embargo, esta deja la opción de hacer select sobre la tabla previa al LOCK.
![[Pasted image 20241013214436.png]]

### Ejecución de Tj con el LOCK de NOWAIT
Ahora, dado que CUENTAS de BANCOA está bloqueado, BANCOB no puede tomar permisos sobre CUENTAS dado el tipo de bloqueo que hicimos previamente que impide adueñarse de la tabla para hacer UPDATE más no para hacer SELECT, falla gracias a la naturaleza del NOWAIT que no espera a que el bloqueo se acabe sino que falla inmediatamente.
![[Pasted image 20241013214815.png]]

Aquí vemos como podemos hacer selects trayendo una versión vieja de la tabla
![[Pasted image 20241014124929.png]]
### Ejecución de Tj aún sin confirmar
Como no pudimos tomar permisos sobre CUENTAS el retiro no se puede realizar.
![[Pasted image 20241013215005.png]]

### Confirmación de Ti
Confirmamos TI y lo liberamos.
![[Pasted image 20241013215054.png]]

### Reintento de Tj
Ahora TJ se puede bloquear nuevamente y podemos modificar sus valores.
![[Pasted image 20241013215433.png]]

![[Pasted image 20241013215451.png]]

![[Pasted image 20241013215536.png]]

### Consultando el valor de la cuenta desde el banco de origen
Vemos finalmente que la transacción de TI y TJ fueron un éxito y que el resultado es el que se esperaba.
![[Pasted image 20241013215650.png]]

### Esquema de transacciones
![[transaction diagram.png]]

