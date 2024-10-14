Hay 3 personas, A, B, C, La persona A tiene un e-commerce muy activo en el que varias personas pueden hacer compras a la vez, pero la persona A solo tiene una cuenta bancaria común dedicada al e-commerce, por lo que recepción, transferencia y retiro se hacen en la misma cuenta, todas las personas tienen sus cuentas bancarias en el mismo banco, inicialmente hay 50 dolares en el banco.

Transacciones:
1. Las personas B y C intentan hacer la compra de un objeto, todas intentan transferir a la cuenta de la persona A a la vez con montos de 100, 200 respectivamente.
2. La persona C se le descuentan los 200 sin ser confirmada la transacción.
4. La persona B envía los 150, pero estos se quedan en espera por que la base de datos tiene transacciones sin terminar con la persona C.
5. La persona A accede a los datos de su cuenta y se entera que hay una consignación de 200, por lo que decide retirar 250.
6. La transacción de la persona A comienza, pero está a la espera de que termine la transacción de la persona B y C.
7. La persona C tiene problemas con el internet, por lo que el banco decide revertir la operación previa y termina la transacción.
8. La transacción de la persona B comienza y se realiza con éxito.
9. La transacción de la persona A comienza, pero intenta retirar más dinero del que tiene (Es una cuenta de ahorros) por lo que se cancela la operación.