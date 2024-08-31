#SID #Oscar 

Recordar que en el diseño el usuario realmente se tienen que hacer desde la base de datos.

![[Semana 5 2024-08-27 11.37.43.excalidraw]]

# Atributo de calidad Rendimiento

No se trata de que las cosas sean más rápidas sino que consuman menos recursos. Dado que el tiempo de ejecución va directamente relacionado con el consumo en recursos.

A toda llave primaria oracle le crea un índice

## Afinamiento

Si toda su aplicación no funciona de manera óptima, o si está intentando reducir la CPU general o la carga de E/S en el servidor de la base de datos, identificar SQL que consume muchos recursos implican los siguientes casos:
- Determine que periodo del día le gustaría examinar; normalmente este es el tiempo máximo de procesamiento de su aplicación.
- Recopile estadísticas del sistema operativo y de Oracle al principio y al final de ese período.

**Cost driver:** La variable que si aumento o disminuyo el costo aumenta o disminuye.

**Cost drivers de una base de datos local:**
- *I/0* = Siempre va relacionado con 
- *CPU* = Consumo de recursos
- *RED* = Dado que la base de datos está compuesta de al menos dos capas de red (Cliente, Servidor), para dar este servicio se tiene que comunicar con paquetes TCP/IP para mantener su separación.

```SQL
select oi.order_id as value 
from orders o 
join order_items oi 
on oi.order_id = o.order_id 
where o.status = 'Shipped';

select o.order_id, sum(i.quantity * i.unit_price)
from orders o, order_items i
where o.order_id = i.order_id
and o.status = 'Shipped'
group by o.order_id;
```

Estas dos dan diferentes complejidades.

