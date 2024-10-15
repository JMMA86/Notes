Hay 3 personas, A, B, C. La persona A tiene un e-commerce muy activo en el que varias personas pueden hacer compras a la vez, pero la persona A solo tiene una cuenta bancaria común dedicada al e-commerce, por lo que recepción, transferencia y retiro se hacen en la misma cuenta (como una cuenta de ahorros). Todas las personas tienen sus cuentas bancarias en el mismo banco, inicialmente hay 50 dólares en la cuenta de la persona A.

Transacciones:
1. Las personas B y C intentan hacer la compra de un objeto, todas intentan transferir a la cuenta de la persona A a la vez con montos de 100, 200 respectivamente.
2. Primero, a la persona C se le descuentan los 200 sin ser confirmada la transacción.
3. Luego, la persona B envía los 100, **pero estos se quedan en espera por que la base de datos tiene transacciones sin terminar con la persona C.**
4. La persona C tiene problemas con el internet, por lo que el banco decide revertir la operación previa y termina la transacción.
5. La transacción de la persona B comienza y se realiza con éxito.
6.  La persona A decide retirar 350. **pero está a la espera de que termine la transacción de la persona B y C.**
7. La transacción de la persona A comienza, pero intenta retirar más dinero del que tiene (Es una cuenta de ahorros) por lo que se cancela la operación.