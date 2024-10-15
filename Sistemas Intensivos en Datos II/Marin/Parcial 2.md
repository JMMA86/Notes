# SEGUNDO PARCIAL - SISTEMAS INTENSIVOS EN DATOS II
## Integrantes del grupo:
- Juan Manuel Marín Angarita - A00382037
- Óscar Andrés Gómez Lozano - A00394142
- Cristian Eduardo Botina Carpio - A00395008

## Introducción
Consideremos el caso de uso de transferencias interbancarias que se ha trabajado en clase. Para ello cada banco tiene su propia base de datos la cual contiene, al menos, una tabla de cuentas de los clientes llamada Cuentas, aquí cada registro contiene el código y el saldo de la cuenta. Durante este parcial se realizarán operaciones de consignación y retiro de fondos de las cuentas, así como traslado de fondos entre cuentas de diferentes bancos (operaciones interbancarias).

### Configuración del ambiente de trabajo
1. Cada esquema de usuario en la base de datos que participe en la práctica será considerado un banco diferente, identificándose desde la letra A en adelante.

Se crearon los siguientes bancos (usuarios):
![[Pasted image 20241010115548.png|200]]

2. Cree la tabla Cuentas en su esquema según la descripción anterior de la tabla.

Creación de la tabla CUENTAS en ambos bancos:

```SQL
create table CUENTAS (
	id number,
	saldo number
);
```

3. Inserte los registros siguientes:

* 1, $100.000$
* 2, $150.000$

```SQL
insert into cuentas values(1, 100000);
insert into cuentas values(2, 150000);
```

4. Establezca otro banco (otro esquema de usuario) de confianza para transferencias de dinero entre entidades. Para esto asígnele permisos de lectura de su tabla al otro banco:

```SQL
grant select, update on cuentas to BANCOB; -- En el banco A
grant select, update on cuentas to BANCOA; -- En el banco B
```

5. Acuerde con el otro banco que su cuenta origen es la de código 1 y destino la de código 2 del otro banco y de forma inversa que del otro banco utilicen 1 y 2 como origen y destino respectivamente.

* BANCOA:
	* Cuenta origen: Cod1
	* Cuenta destino: Cod2

* BANCOB:
	* Cuenta origen: Cod1
	* Cuenta destino: Cod2

## Caso 3
En este caso, el dueño de la cuenta origen hace un retiro de $60.000$ por cajero electrónico simultáneamente con el traslado de fondos. Dicho retiro se identificará como la transacción $T_{j}$ ejecutada desde otro banco.

Realice las siguientes tareas en el orden indicado:

#### 1. Siguiendo la estrategia $A$ caso 1, ejecute las operaciones de $T_{i}$ hasta el paso 1.
**A1**: Consultar si existe disponibilidad de fondos en la cuenta origen con una operación `SELECT`.

```SQL
select saldo
from cuentas
where id = 1;
```

![[Pasted image 20241012132828.png]]

#### 2. Ejecute $T_{j}$ actualizando el valor directamente con una instrucción `UPDATE` comprometiéndola inmediatamente (esta simulación implica que dicha transacción consultó el saldo al mismo tiempo que la transacción de traslado de fondos pero terminó antes que la misma).
```SQL
update cuentas
set saldo = saldo - 60000
where id = 1;
commit;
```
![[Pasted image 20241012134701.png]]

#### 3. Continúe con el paso 2 de $T_{i}$ hasta el final.
**A2**: Transferir el dinero a la cuenta en el otro banco sumando el valor actual más el monto transferido con una operación `UPDATE`.

En este caso se realizó una transferencia de $40.000$, ya que era el dinero que sobraba de la cuenta origen (podría haber sido cualquier valor menor a este hasta $0$).

```SQL
update BANCOA.cuentas
set saldo = saldo + 40000
where id = 2;
```

![[Pasted image 20241012134937.png]]

**A3**. Si la operación anterior es exitosa restar de la cuenta la suma transferida ejecutando una operación `UPDATE`.

```SQL
update cuentas
set saldo = saldo - 40000
where id = 1;
```

![[Pasted image 20241012135037.png]]

**A4**. Comprometer la transacción Ti con la instrucción `COMMIT`;

```SQL
comit;
```

![[Pasted image 20241012135106.png]]

#### 4. ¿Qué pasa con los valores finales de la cuenta origen y destino?
**R/** Analicemos los saldos en ambas cuentas:

Saldo en cuentas 1 (origen) y 2 (destino) del banco A:

![[Pasted image 20241012135311.png]]

Saldo en cuentas 1 (origen) y 2 (destino) del banco B:

![[Pasted image 20241012135934.png]]

Teniendo en cuenta que ambas cuentas comenzaron con los valores de $100.000$ en la cuenta 1 y $150.000$ en la cuenta 2, los resultados parecen ser coherentes con las transacciones que se realizaron:

1. Se consultó el saldo del Banco B ($100.000$ origen y $150.000$ destino).
2. Se retiraron $60.000$ de la cuenta origen del banco B (quedaron $40.000$ de la cuenta origen).
3. Se enviaron $40.000$ a la cuenta destino del banco A (la cuenta pasó de $150.000$ a $190.000$).
4. Se restaron los $40.000$ de la cuenta origen del banco B (la cuenta origen quedó en $0$).

Por lo tanto, los valores finales de las cuentas de los bancos al seguir todos los pasos son consistentes.

#### 5. Restaure los valores y repita desde el inicio siguiendo la estrategia B. ¿Varió el comportamiento de $T_{j}$?
**B1**: Consultar si existe disponibilidad de fondos en la cuenta origen con una operación `SELECT`.

```SQL
select saldo
from cuentas
where id = 1;
```

![[Pasted image 20241012161051.png]]

- Ejecute $T_{j}$ actualizando el valor directamente con una instrucción `UPDATE` comprometiéndola inmediatamente

```SQL
update cuentas
set saldo = saldo - 60000
where id = 1;
commit;
```

![[Pasted image 20241012161303.png]]

**B2**: Restar el dinero a transferir de la cuenta origen con una operación `UPDATE`.

```SQL
update cuentas
set saldo = saldo - 40000
where id = 1;
```

![[Pasted image 20241012161440.png]]

**B3**: Si la operación no es exitosa devolver a la cuenta origen a su estado inicial. De lo contrario sumar al saldo de la cuenta destino el valor a transferir con una instrucción `UPDATE`.

```SQL
update BANCOA.cuentas
set saldo = saldo + 40000
where id = 2;
```

![[Pasted image 20241012161659.png]]

**B4**: Comprometer la transacción $T_j$ con la instrucción `COMMIT`;

```SQL
comit;
```

![[Pasted image 20241012161800.png]]

**R/**  Analicemos los saldos usando esta estrategia:

Banco A:

![[Pasted image 20241012161919.png]]

Banco B:

![[Pasted image 20241012161933.png]]

Como podemos observar, los saldos son los mismos y no se presentó ningún inconveniente. Esto sucede porque el dinero transferido en cada caso siempre fue suficiente independientemente del orden en que se hacían los pasos. Además, las transacciones se realizaron en el mismo banco B, por lo que no hubo conflictos por transacciones pendientes. Por lo tanto, en este sentido podemos decir que ambas estrategias son válidas. 

#### 6. Compare los resultados. Explique mediante esquema de planificación de transacciones.
##### Estrategia A: Esquema de planificación
1. **$T_i$ Paso A1**: Verificación del saldo de la cuenta origen en BANCOA (consulta `SELECT`).  
   - $T_i$: `SELECT saldo FROM cuentas WHERE id = 1;`
   - **Estado de la cuenta Cod1 en BANCOB: 100,000**

2. **$T_j$**: Retiro de $60,000$ de la cuenta origen en BANCOA y confirmación de la transacción (`UPDATE` + `COMMIT`).  
   - $T_j$: `UPDATE cuentas SET saldo = saldo - 60000 WHERE id = 1;`  
   - **Nuevo estado de la cuenta Cod1 en BANCOB: 40,000**  

3. **$T_i$ Paso A2**: Transferencia de $40,000$ de la cuenta origen en BANCOB (Cod1) a la cuenta destino en BANCOA (Cod2).  
   - $T_i$: `UPDATE cuentas SET saldo = saldo - 40000 WHERE id = 1;`  
   - **Nuevo estado de la cuenta Cod1 en BANCOB: 0**  

4. **$T_i$ Paso A3**: Aumento del saldo en la cuenta destino (Cod2) de BANCOA.  
   - $T_i$: `UPDATE BANCOA.cuentas SET saldo = saldo + 40000 WHERE id = 2;`  
   - **Nuevo estado de la cuenta Cod2 en BANCOA: 190,000**  

5. **$T_i$ Paso A4**: Confirmación de la transacción $T_i$ (`COMMIT`).  

##### Esquema de transacciones
![[Pasted image 20241014180605.png]]

##### Estrategia B: Esquema de planificación
1. **$T_j$**: Retiro de $60,000$ de la cuenta origen en BANCOB y confirmación inmediata (`UPDATE` + `COMMIT`).  
   - $T_j$: `UPDATE cuentas SET saldo = saldo - 60000 WHERE id = 1;`  
   - **Nuevo estado de la cuenta Cod1 en BANCOB: 40,000**

2. **$T_i$ Paso B2**: Intento de restar los $40,000$ de la cuenta origen en BANCOB (Cod1).  
   - $T_i$: `UPDATE cuentas SET saldo = saldo - 40000 WHERE id = 1;`  
   - **Nuevo estado de la cuenta Cod1 en BANCOB: 0**  

3. **$T_i$ Paso B3**: Aumento del saldo en la cuenta destino (Cod2) en BANCOA.  
   - $T_i$: `UPDATE BANCOA.cuentas SET saldo = saldo + 40000 WHERE id = 2;`  
   - **Nuevo estado de la cuenta Cod2 en BANCOA: 190,000**  

4. **$T_i$ Paso B4**: Confirmación de la transacción $T_i$ (`COMMIT`).  

##### Esquema de transacciones
![[Pasted image 20241014180651.png]]

##### Comparación de resultados
Ambas estrategias producen los mismos resultados finales, lo que indica que, en este caso, el orden de las operaciones no afectó la consistencia de los datos. Sin embargo, esto fue posible porque siempre hubo fondos suficientes para realizar todas las transacciones.

##### Análisis de planificación
- **Estrategia A**: Aquí se verificó el saldo en $T_i$ antes del retiro de $T_j$, pero el retiro se completó antes de la transferencia en $T_i$, lo que permitió que el monto disponible disminuyera antes de la operación final.
- **Estrategia B**: El retiro de $T_j$ se hizo primero, por lo que la transferencia en $T_i$ pudo completarse sin problemas ya que aún quedaba el saldo suficiente para realizarla.

#### 7. Restaure los montos iniciales antes de proseguir con el siguiente caso.
```SQL
drop table cuentas;
create table CUENTAS ( id number, saldo number );
insert into cuentas values(1, 100000);
insert into cuentas values(2, 150000);
grant select, update on cuentas to BANCOB; -- Desde banco A
grant select, update on cuentas to BANCOA; -- Desde banco B
```

## Caso 4
Se desea mejorar el funcionamiento de las transacciones para el caso anterior. Para esto se hará uso de las instrucciones `LOCK` y `SELECT` … `FOR UPDATE` (ver Anexo A para la sintaxis de `LOCK`).

#### Ejecución de $T_{i}$ hasta el paso 3 (Sin comprometerla)
Hasta el momento hemos ejecutado las instrucciones hasta el paso 3, hemos hecho un `LOCK TABLE` en `EXCLUSIVE MODE` que nos permitirá que nadie pueda actualizar nuestra tabla hasta que la liberemos, sin embargo, esta deja la opción de hacer `SELECT` sobre la tabla previa al `LOCK`.

![[Pasted image 20241013214436.png]]

#### Ejecución de $T_{j}$ con el `LOCK` de `NOWAIT`
Ahora, dado que CUENTAS de BANCOA está bloqueado, BANCOB no puede tomar permisos sobre CUENTAS dado el tipo de bloqueo que hicimos previamente que impide adueñarse de la tabla para hacer `UPDATE` más no para hacer `SELECT`, falla gracias a la naturaleza del `NOWAIT` que no espera a que el bloqueo se acabe sino que falla inmediatamente.

![[Pasted image 20241013214815.png]]

Aquí vemos como podemos hacer `SELECT` trayendo una versión vieja de la tabla:

![[Pasted image 20241014124929.png]]

#### Ejecución de $T_{j}$ aún sin confirmar
Como no pudimos tomar permisos sobre CUENTAS el retiro no se puede realizar.

![[Pasted image 20241013215005.png]]

#### Confirmación de $T_{i}$
Confirmamos $T_{i}$ y lo liberamos, esto debería permitir que $T_{j}$ realice su transacción.

![[Pasted image 20241013215054.png]]

#### Reintento de $T_{j}$
Ahora $T_{j}$ se puede bloquear nuevamente y podemos modificar sus valores.

![[Pasted image 20241013215433.png]]

![[Pasted image 20241013215451.png]]

![[Pasted image 20241013215536.png]]

#### Consultando el valor de la cuenta desde el banco de origen
Vemos finalmente que la transacción de $T_{i}$ y $T_{j}$ fueron un éxito y que el resultado es el que se esperaba.

![[Pasted image 20241013215650.png]]

#### Esquema de transacciones
![[transaction diagram.png]]

#### ¿Cómo describiría el tipo de bloqueo usado?
1. **Bloqueo exclusivo (Exclusive Lock)**: Es el bloqueo que adquiere una transacción cuando quiere modificar una fila o recurso. Este tipo de bloqueo impide que otras transacciones realicen escrituras sobre un recurso hasta que se libere. Este bloqueo es usado por default por Oracle XE con la clausula `ROW` para no adueñarse de todo el recurso sino de una sola fila.
2. **Bloqueo exclusivo con NOWAIT**: Es una variante del bloqueo exclusivo, donde si el recurso (fila o tabla) ya está bloqueado, la transacción no espera, sino que falla inmediatamente con un error.

Ambos tipos de bloqueo son pesimistas, ya que asumen que habrá conflictos y bloquean los recursos de inmediato para prevenir problemas de concurrencia.

## Caso 5
### Contexto
Hay 3 personas, A, B, C. La persona A tiene un e-commerce muy activo en el que varias personas pueden hacer compras a la vez, pero la persona A solo tiene una cuenta bancaria común dedicada al e-commerce, por lo que recepción, transferencia y retiro se hacen en la misma cuenta (como una cuenta de ahorros). Todas las personas tienen sus cuentas bancarias en el mismo banco, inicialmente hay $\$50$ dólares en la cuenta de la persona A, $\$100$ en la cuenta de la persona B y $\$200$ en la cuenta de la persona C.

### Configuración de la BD
Crear una tabla Cuentas en el usuario BANCO con las columnas id, nombre y valor:

```SQL
create table CUENTAS (
	id number,
	saldo number check (saldo >= 0)
); 
```

Insertar los valores de las cuentas de cada persona (A, B y C):

```SQL
insert into cuentas values(1, 50);
insert into cuentas values(2, 100);
insert into cuentas values(2, 200);
```

Establecer los permisos necesarios para que los clientes del banco puedan interactuar con las cuentas (se asume que solo podrán realizar retiros de sus propias cuentas y transacciones a otras cuentas).

```SQL
grant select, update on cuentas to PERSONA_A;
grant select, update on cuentas to PERSONA_B;
grant select, update on cuentas to PERSONA_C;
```

### Transacciones:
#### 1. Las personas B y C van a hacer la compra de un objeto, por lo que verifican el saldo de su cuenta.
```SQL
select * from BANCO.CUENTAS where id = 2;
select * from BANCO.CUENTAS where id = 3;
```

Saldo en la cuenta de la persona B:

![[Pasted image 20241014184355.png]]

Saldo en la cuenta de la persona C:

![[Pasted image 20241014184411.png]]

#### 2. Primero, la persona C transfiere los $\$200$ a la persona A sin ser confirmada la transacción.
```SQL
update BANCO.CUENTAS
set saldo = saldo - 200
where id = 3;

update BANCO.CUENTAS
set saldo = saldo + 200
where id = 1;
```

![[Pasted image 20241014185215.png]]

#### 3. Luego, la persona B transfiere $\$100$ a la persona A.
```SQL
update BANCO.CUENTAS
set saldo = saldo - 100
where id = 2;

update BANCO.CUENTAS
set saldo = saldo + 100
where id = 1;
```

![[Pasted image 20241014190026.png]]

Como se puede observar, la primera transacción se ejecuta correctamente, mientras que la segunda queda en espera debido a la no confirmación de la transacción de la persona C.

#### 4. La persona C tiene problemas con el internet, por lo que el banco decide revertir la operación previa y termina la transacción.
```SQL
ROLLBACK;
```

![[Pasted image 20241014190627.png]]

#### 5. La transacción de la persona B comienza y se realiza con éxito.
La transacción que antes estaba pendiente se ejecutó con éxito.

![[Pasted image 20241014192247.png]]

#### 6.  La persona A decide retirar $\$350$.
```SQL
update BANCO.CUENTAS
set saldo = saldo - 350
where id = 1;
```

![[Pasted image 20241014192544.png]]

La transacción queda en espera, puesto que la persona B no ha confirmado su transacción.

#### 7. La persona B confirma su transacción.
```SQL
commit;
```

![[Pasted image 20241014192857.png]]

#### 8. La transacción de la persona A comienza, pero intenta retirar más dinero del que tiene (es una cuenta de ahorros).

![[Pasted image 20241014192915.png]]

En este caso, sale que hubo un error por una restricción violada. Si buscamos cuál es esa restricción, encontramos que el saldo debe ser mayor o igual a $0$:

![[Pasted image 20241014193200.png]]

### Esquema de transacciones
![[Pasted image 20241014193459.png]]

#### Demostración de las propiedades ACID
La aplicación de las propiedades ACID (Atomicidad, Consistencia, Aislamiento y Durabilidad) en las transacciones del caso descrito se puede demostrar de la siguiente manera:

##### 1. Atomicidad
La atomicidad garantiza que todas las operaciones en una transacción se completan con éxito o, en caso contrario, ninguna de ellas se aplica. En este caso:

- **Transacción de C:** La persona C intenta transferir $\$200$ a la cuenta de la persona A. Aunque la operación de deducción del saldo se realiza, la transacción no se confirma debido a un supuesto problema con la conexión a Internet. En caso de un fallo (como un `ROLLBACK`), ninguna parte de la transacción se aplicará, es decir, ni el saldo de C se disminuirá ni el de A aumentará.
  
- **Transacción de B:** La persona B intenta transferir $\$100$ a la cuenta de la persona A. Esta transacción queda en espera hasta que la transacción de C sea confirmada. Si la transacción de C se aborta (`ROLLBACK`), la transacción de B se ejecuta correctamente. Esto demuestra que si cualquiera de las transacciones falla, los cambios no se aplican.

##### 2. Consistencia
La consistencia asegura que la base de datos pase de un estado válido a otro estado válido. En este caso:

- Las operaciones de `UPDATE` deben cumplir con las restricciones de la base de datos, como no permitir que el saldo de las cuentas sea menor a 0.
- Cuando la persona A intenta retirar $\$350$, la operación se rechaza debido a que su saldo se vuelve negativo, lo que garantiza que la base de datos se mantenga en un estado consistente. Las restricciones impuestas por el esquema de la base de datos se cumplen en todo momento.

##### 3. Aislamiento
El aislamiento asegura que las transacciones concurrentes se ejecuten como si fueran secuenciales, evitando que las transacciones intermedias afecten el resultado de otras transacciones. En este caso:

- La transacción de la persona C se realiza y se queda en espera hasta que se confirme o se realice un `ROLLBACK`. Mientras tanto, la transacción de la persona B queda pendiente hasta que la transacción de C se complete. Esto demuestra que las operaciones no afectan el saldo final hasta que se completa la transacción correspondiente.
- La transacción de la persona A no puede completarse hasta que la transacción de la persona B se confirme, garantizando así que los cambios no se reflejan hasta que todas las condiciones se cumplen.

##### 4. Durabilidad
La durabilidad asegura que una vez que una transacción ha sido confirmada (con `COMMIT`), sus cambios persistirán en la base de datos, incluso en caso de fallos del sistema. En este caso:

- Cuando la persona B confirma su transacción (`COMMIT`), su cambio en el saldo se hace permanente. A partir de este momento, la transacción de B es duradera y no puede ser revertida. Si, después de un `COMMIT`, ocurre un fallo del sistema, el saldo actualizado de la cuenta de la persona A y B permanecerá en la base de datos.
