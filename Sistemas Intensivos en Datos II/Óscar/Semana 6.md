#SID #Oscar 

# Afinamiento de las consultas

```SQL
SELECT '12345.6' FROM DUAL;

SELECT INSTR('12345.6', '.') FROM DUAL;

SELECT SUBSTR('12345.6', 1, 2) FROM DUAL;

SELECT SUBSTR('12345.6', INSTR('12345.6', '.') -1) FROM DUAL;
```

En SQL las formas en las que se representan los datos siempre es de número a caracter. En cualquier inserción, actualización o eliminación los indices se tienen que reorganizar, lo que vuelve lenta la inserción.

```SQL
create table X(year number);

begin
for i in 1900..3000 loop
insert into X values(i);
end loop;
end;

select * from X;

select * from X
where year = 2024;

select * from X
where year = '2024';

select * from X
where year = to_char(sysdate,'YYYY');
```

usar predicados en el where tiene que ser evitado.

Así es como se pasan valores por parámetro.
```SQL
select * from x
where year = :a;
```

Así es como se evitan los valores nulos en una base de datos.
```SQL
select sum(nvl(year, 1)) from x;
```

