#SID #Sesión #Oscar 

```SQL
select count(*) countries from countries;
```

### Seguridad

Por roles / permisos -> Permisos a otros usuarios para trabajar con mis objetos -> tablas -> crear otro usuario

Usuario sin privilegios (tiene que ser creado d)
```SQL
alter session set"_ORACLE_SCRIPT"=true;
-- USER SQL
CREATE USER "OT2" IDENTIFIED BY "ot"  
DEFAULT TABLESPACE "TS_SID2"
TEMPORARY TABLESPACE "TEMP";

-- QUOTAS
ALTER USER "OT2" QUOTA UNLIMITED ON "TS_SID2";

-- ROLES
GRANT "CONNECT" TO "OT2" ;
GRANT "RESOURCE" TO "OT2" ;
```

Dar privilegios de una tabla a un usuario:
```SQL
grant select on employees to OT2;
```

Todos los permisos que se pueden otorgar son:
- SELECT
- UPDATE
- DELETE
- INSERT
- ALL

Estamos en una empresa de cosas humanas, que permisos le debería de dar a los usuarios para consultar datos? SELECT (bien trivial)

### Por objetos de la base de datos

Contiene las vistas y lo sinónimos

Crear vistas
```SQL
CREATE VIEW v_empleados as SELECT * from employees;
```

```SQL
create or replace view v_empleados as SELECT * from employees where job_title = 'Accountant';
```

Usar la vista
```SQL
select * from ot.v_empleados;
```

---

#SID #Sesión #Oscar 

```SQL
-- Eliminar la tabla estudiantes si existe
DROP TABLE ESTUDIANTES CASCADE CONSTRAINTS;
DROP TABLE TIPONOTA CASCADE CONSTRAINTS;
DROP TABLE NOTAS CASCADE CONSTRAINTS;

-- Crear la tabla estudiantes
CREATE TABLE ESTUDIANTES (
    CODIGO VARCHAR2(9) PRIMARY KEY,
    NOMBRE VARCHAR2(100) NOT NULL,
    USUARIO VARCHAR2(100) NOT NULL
);

-- Insertar dos registros en la tabla estudiantes
INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, USUARIO) VALUES ('A00382037', 'Juan Pérez', 'juan.perez20');
INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, USUARIO) VALUES ('A00395009', 'María Gómez', 'maria.gomez21');

-- Crear la tabla tiponota
CREATE TABLE TIPONOTA (
    CODIGO NUMBER PRIMARY KEY,
    DESCRIPCION VARCHAR2(100) NOT NULL
);

-- Insertar dos tipos de notas
INSERT INTO TIPONOTA (CODIGO, DESCRIPCION) VALUES (1, 'Examen Parcial');
INSERT INTO TIPONOTA (CODIGO, DESCRIPCION) VALUES (2, 'Examen Final');

-- Crear la tabla notas
CREATE TABLE NOTAS (
    ID_NOTA NUMBER PRIMARY KEY,
    NOTA NUMBER(5, 2) NOT NULL,
    CODIGO_ESTUDIANTE VARCHAR2(9) NOT NULL,
    CODIGO_TIPONOTA NUMBER NOT NULL,
    FOREIGN KEY (CODIGO_ESTUDIANTE) REFERENCES ESTUDIANTES(CODIGO),
    FOREIGN KEY (CODIGO_TIPONOTA) REFERENCES TIPONOTA(CODIGO)
);

-- Insertar diez registros en la tabla notas
INSERT INTO NOTAS (ID_NOTA, NOTA, CODIGO_ESTUDIANTE, CODIGO_TIPONOTA) VALUES (1, 4.5, 'A00382037', 1);
INSERT INTO NOTAS (ID_NOTA, NOTA, CODIGO_ESTUDIANTE, CODIGO_TIPONOTA) VALUES (2, 4.0, 'A00382037', 2);
INSERT INTO NOTAS (ID_NOTA, NOTA, CODIGO_ESTUDIANTE, CODIGO_TIPONOTA) VALUES (3, 3.5, 'A00395009', 1);
INSERT INTO NOTAS (ID_NOTA, NOTA, CODIGO_ESTUDIANTE, CODIGO_TIPONOTA) VALUES (4, 3.0, 'A00395009', 2);
INSERT INTO NOTAS (ID_NOTA, NOTA, CODIGO_ESTUDIANTE, CODIGO_TIPONOTA) VALUES (5, 4.0, 'A00382037', 1);
INSERT INTO NOTAS (ID_NOTA, NOTA, CODIGO_ESTUDIANTE, CODIGO_TIPONOTA) VALUES (6, 5.0, 'A00382037', 2);
INSERT INTO NOTAS (ID_NOTA, NOTA, CODIGO_ESTUDIANTE, CODIGO_TIPONOTA) VALUES (7, 3.6, 'A00395009', 1);
INSERT INTO NOTAS (ID_NOTA, NOTA, CODIGO_ESTUDIANTE, CODIGO_TIPONOTA) VALUES (8, 4.1, 'A00395009', 2);
INSERT INTO NOTAS (ID_NOTA, NOTA, CODIGO_ESTUDIANTE, CODIGO_TIPONOTA) VALUES (9, 2.7, 'A00382037', 1);
INSERT INTO NOTAS (ID_NOTA, NOTA, CODIGO_ESTUDIANTE, CODIGO_TIPONOTA) VALUES (10, 5.0, 'A00395009', 2);
```

