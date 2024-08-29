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
CREATE TABLE estudiantes (
    codigo        NUMBER(100) NOT NULL,
    nombre        VARCHAR2(150) NOT NULL,
    usuario       VARCHAR2(150) NOT NULL,
    usuario_padre VARCHAR2(150) NOT NULL
);

ALTER TABLE estudiantes ADD CONSTRAINT estudiantes_pk PRIMARY KEY ( codigo );

CREATE TABLE notas (
    id_nota            NUMBER(100) NOT NULL,
    nota               NUMBER(5, 4) NOT NULL,
    tipodenota_codigo  NUMBER(100) NOT NULL,
    estudiantes_codigo NUMBER(100) NOT NULL
);

ALTER TABLE notas
    ADD CONSTRAINT notas_pk PRIMARY KEY ( id_nota,
                                          tipodenota_codigo,
                                          estudiantes_codigo );

CREATE TABLE tipodenota (
    codigo      NUMBER(100) NOT NULL,
    descripcion VARCHAR2(150) NOT NULL
);

ALTER TABLE tipodenota ADD CONSTRAINT tipodenota_pk PRIMARY KEY ( codigo );

ALTER TABLE notas
    ADD CONSTRAINT notas_estudiantes_fk FOREIGN KEY ( estudiantes_codigo )
        REFERENCES estudiantes ( codigo );

ALTER TABLE notas
    ADD CONSTRAINT notas_tipodenota_fk FOREIGN KEY ( tipodenota_codigo )
        REFERENCES tipodenota ( codigo );

```

