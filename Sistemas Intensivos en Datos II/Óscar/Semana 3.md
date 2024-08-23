#Sesión #SID #Oscar 

# Postgreando la postgresización de la postgregriza

**En postgre siempre se interactúa con el postmaster**

### Atributos de calidad

- **Exactitud(Usuario):** Los datos precisos son esenciales para tomar decisiones informadas.
- **Completitud(Usurios):** Los datos completos son necesarios para tener una imagen completa de la situación.
- **Actualidad(Usuario, Cliente, Analistas/Desarrollador):** Los datos actualizados garantizan que las decisiones estén basadas en la información más reciente.
- ***Consistencia(Analista, DBA):*** Los datos consistentes evitan errores y malentendidos.
- **Integridad(Analista, DBA):** Los datos íntegros aseguran que los datos cumplan con los requisitos de la empresa.
- **Usabilidad(Analista):** Los datos fáciles de usar hacen que la base de datos sea más accesible para los usuarios.
- ***Eficiencia(Analista, DBA):*** Los datos eficientes mejoran el rendimiento de la base de datos y reducen los costos.
- ***Seguridad():*** Los datos seguros protegen la información de los usuarios y evitan el acceso no autorizado.

---
TI
- **Disponibilidad:** Los datos disponibles permiten tomar decisiones en el momento adecuado. 7x24
- **Universalidad:** Los datos pueden pertenecer a diferentes dominios. Múltiples tipos de datos. Multimedia
- **Portabilidad:** Los datos y las funcionalidades sobre ellos deben permanecer aún cuando se cambie de versión del SGBD
- **Interoperabilidad:** Los SGBD pueden operar sobre diferentes o múltiples  plataformas / Sistemas operativos
- **Escalabilidad:** La gestión de los datos debe permitir el incremento de los recursos invertidos.
- **Escalabilidad flexible:** Incremento o decremento de los recursos invertidos.

*Todas las cosas que no sean funcionales las responde el DBA.*

Cosas que aumentan los costos en las bases de datos:
- I/O storage
- Tiempo de ejecución
- Computación
- Networking
- Memoria

---

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

