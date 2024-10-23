Los comandos de control de transacciones (TCL, por sus siglas en inglés) son un conjunto de instrucciones utilizadas en bases de datos relacionales para gestionar las transacciones, asegurando que las operaciones realizadas sean consistentes y coherentes. Los principales comandos TCL son:

1. **COMMIT**: Guarda todos los cambios realizados en una transacción de forma permanente en la base de datos.
    
    Ejemplo:
    `COMMIT;`
2. **ROLLBACK**: Revierte todos los cambios realizados por la transacción actual, regresando la base de datos al estado anterior antes de que se iniciara la transacción.
    
    `ROLLBACK;`
3. **SAVEPOINT**: Crea un punto dentro de una transacción que permite realizar un ROLLBACK parcial hasta ese punto sin afectar al resto de la transacción.
    
    `SAVEPOINT sp1;`
4. **RELEASE SAVEPOINT**: Elimina un punto de guardado específico.
    
    `RELEASE SAVEPOINT sp1;`
5. **SET TRANSACTION**: Define características de la transacción, como el nivel de aislamiento o si es de solo lectura.
    
    `SET TRANSACTION READ ONLY;`
    

Estos comandos permiten controlar cómo y cuándo se confirman o revierten los cambios en una base de datos para garantizar la integridad de los datos.

```Python
for i in range(10):
	print(i + 1)
a = [x + 1 for x in range(10)]
```

