#SID #Sesión #Oscar 

La IP está en octales. :O 

Una base de datos es la que tiene una SGA.

El listener se comunica por un archivo que se llama tnsnames.

REDO01.log son los archivos que conservan las operaciones que alteran la base de datos.

La forma en la que está seccionada el almacenamiento:

```SQL
alter session set"_ORACLE_SCRIPT"=true;
-- USER SQL
CREATE USER "OT" IDENTIFIED BY "ot"  
DEFAULT TABLESPACE "TS_SID2"
TEMPORARY TABLESPACE "TEMP";

-- QUOTAS
ALTER USER "OT" QUOTA UNLIMITED ON "TS_SID2";

-- ROLES
GRANT "CONNECT" TO "OT" ;
GRANT "RESOURCE" TO "OT" ;

-- SYSTEM PRIVILEGES
GRANT CREATE ANY SYNONYM TO "OT" ;
GRANT CREATE SEQUENCE TO "OT" ;
GRANT CREATE ANY VIEW TO "OT" ;
GRANT CREATE ANY TRIGGER TO "OT" ;
GRANT CREATE ANY TABLE TO "OT" ;
```

```SQL
# TO check language
SELECT TO_CHAR(SYSDATE, 'MONTH') FROM DUAL;
```

