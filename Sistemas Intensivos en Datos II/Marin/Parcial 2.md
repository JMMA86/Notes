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

Establezca otro banco (otro esquema de usuario) de confianza para transferencias de dinero entre entidades. Para esto asígnele permisos de lectura de su tabla al otro banco:

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

##### 1. Siguiendo la estrategia $A$ caso 1, ejecute las operaciones de $T_{i}$ hasta el paso 1.
**A1**: Consultar si existe disponibilidad de fondos en la cuenta origen con una operación SELECT.

```SQL
select saldo
from cuentas
where id = 1;
```

![[Pasted image 20241012132828.png]]

##### 2. Ejecute $T_{j}$ actualizando el valor directamente con una instrucción UPDATE comprometiéndola inmediatamente (esta simulación implica que dicha transacción consultó el saldo al mismo tiempo que la transacción de traslado de fondos pero terminó antes que la misma).
```SQL
update cuentas
set saldo = saldo - 60000
where id = 1;
commit;
```

![[Pasted image 20241012134701.png]]

##### 3. Continúe con el paso 2 de $T_{i}$ hasta el final.
**A2**: Transferir el dinero a la cuenta en el otro banco sumando el valor actual más el monto transferido con una operación UPDATE.

```SQL
update BANCOA.cuentas
set saldo = saldo + 40000
where id = 2;
```

![[Pasted image 20241012134937.png]]

**A3**. Si la operación anterior es exitosa restar de la cuenta la suma transferida ejecutando una operación UPDATE.

```SQL
update cuentas
set saldo = saldo - 40000
where id = 1;
```

![[Pasted image 20241012135037.png]]

**A4**. Comprometer la transacción Ti con la instrucción COMMIT;

```SQL
commit;
```

![[Pasted image 20241012135106.png]]

##### 4. ¿Qué pasa con los valores finales de la cuenta origen y destino?
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

##### 5. Restaure los valores y repita desde el inicio siguiendo la estrategia B. ¿Varió el comportamiento de $T_{j}$?
**B1**: Consultar si existe disponibilidad de fondos en la cuenta origen con una operación SELECT.

```SQL
select saldo
from cuentas
where id = 1;
```

![[Pasted image 20241012161051.png]]

- Ejecute $T_{j}$ actualizando el valor directamente con una instrucción UPDATE comprometiéndola inmediatamente

```SQL
update cuentas
set saldo = saldo - 60000
where id = 1;
commit;
```

![[Pasted image 20241012161303.png]]

**B2**: Restar el dinero a transferir de la cuenta origen con una operación UPDATE.

```SQL
update cuentas
set saldo = saldo - 40000
where id = 1;
```

![[Pasted image 20241012161440.png]]

**B3**: Si la operación no es exitosa devolver a la cuenta origen a su estado inicial. De lo contrario sumar al saldo de la cuenta destino el valor a transferir con una instrucción UPDATE.

```SQL
update BANCOA.cuentas
set saldo = saldo + 40000
where id = 2;
```

![[Pasted image 20241012161659.png]]

**B4**: Comprometer la transacción Tj con la instrucción COMMIT;

```SQL
commit;
```

![[Pasted image 20241012161800.png]]

**R/**  Analicemos los saldos usando esta estrategia:

Banco A:

![[Pasted image 20241012161919.png]]

Banco B:

![[Pasted image 20241012161933.png]]

Como podemos observar, los saldos son los mismos y no se presentó ningún inconveniente. Esto sucede porque el dinero transferido en cada caso siempre fue suficiente independientemente del orden en que se hacían los pasos. Por lo tanto, en este sentido podemos decir que ambas estrategias son válidas.