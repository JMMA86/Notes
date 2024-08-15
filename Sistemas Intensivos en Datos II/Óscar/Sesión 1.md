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
