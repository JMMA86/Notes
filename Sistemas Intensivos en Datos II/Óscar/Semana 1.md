#SID #Sesión #Welcum #Oscar 

![[Pasted image 20240730161856.png]]

(Última generación)

### Al arrancar el docker
#### **Logearse en docker**
Iniciar el daemon con:
```Bash
sudo systemctl start docker
```

#### **Logearse como admin:**
**usr:** sys
**password:** sysadmin

#### Logearse como admin del tablespace
**usr:** oscar_dummy
**password:** sysadmin
### Como correr el SQL xe

Versión no persistente:
```Bash
sudo docker run --rm -d --name oracle-db -p 1512:1512 container-registry.oracle.com/database/express
```

Versión persistente:
```Bash
sudo docker run --mount type=bind,source=/home/osgomez/docker/volumes,target=/opt/oracle/oradata/XE -d --name oracle-db -p 1512:1512  container-registry.oracle.com/database/express
```

```Bash
sudo docker exec oracle-db ./setPassword.sh sysadmin
```
### Acceder al SQL CLI
```Bash
#Entrar a sqlplus de forma directa, no loginD
sudo docker exec -it <nombre puesto en --name> bash -c "source /home/oracle/.bashrc; sqlplus /nolog"
```

```Bash
# Entrar a la consola de la base
	sudo docker exec -it <container-id> bash
```

```bash
# Entrar como admin
sqlplus sys as sysdba
```

![[Pasted image 20240815115142.png]]
### Detener el docker

Obtener el container id de:
```Bash
sudo docker ps -a
```

```Bash
sudo docker rm <container-name>
```

```Bash
sudo docker stop <container-id>
```

---

#SID #Sesión #Oscar 

En los pcs solo existen archivos de texto plano y archivos binarios

**Gestor de bases de datos:**
- Ocultan la complejidad de abrir y cerrar archivos para una o varias personas

**Componentes:**
- Hardware (Equipo de computo)
- Software (Programas: SGDB, aplicación)
- Personas (Usuarios)
- Datos (Integrada y compartida)

### ERP (Enterprise Resource Planning)
Es la que guarda el comportamiento de una empresa

#### CRM
Es la parte que se encarga de la atención del usuario

### Bases de datos
Conjunto estructurado de datos coherentes
- Integridad (Garantizar la relevancia de los datos)
- Manejo de persistencia
- Evitar las inconsistencias cuando hay concurrencia
- Cumplir con las propiedades de la ACID (Atomicity, Consistency, Isolation, Durability)
- Soporta un modelo de datos
- Soporta un lenguaje de alto nivel
- Control de acceso

*Consistente nativamente:* Los actos realizados en un "registro" tienen que ser replicados en todos los lugares donde se use.

![[Pasted image 20240801121430.png]]

### Aplicación de las bases de datos por parte de clientes

Creció de la arquitectura de dos capas a una de tres capas

![[Pasted image 20240801122000.png]]

### Independencia de los datos

- **Física:** Podemos modificar el esquema interno sin modificar el esquema conceptual. Cambia la forma de almacenar físicamente los datos.
- **Lógica:** Los cambios en el esquema conceptual no deberían alterar el esquema externo. No afectar la visión e los usuarios por cambios en la estructura.

PGA = Donde se ejecuta el PL del PLSQL

BUSCAR LA VISTA DE ARQUITECTURA MÁS DETALLADA QUE SE PUEDA ENCONTRAR