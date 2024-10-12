# Recuperación de datos
La recuperación es la reconstrucción de una base de datos o espacio de tabla después de un problema como, por ejemplo, anomalía de almacenamiento, interrupción de alimentación o anomalía de la aplicación. Si ha realizado una copia de seguridad de la base de datos o de espacios de tabla individuales, puede reconstruirlos en caso de que se dañen de alguna manera.

**Hay cuatro tipos de recuperación**:
- La recuperación de bloqueo protege una base de datos de que se deja en un estado incoherente o inutilizable cuando las transacciones (también llamadas unidades de trabajo) se interrumpen de forma inesperada.
- La recuperación tras desastre consiste en el proceso de restaurar una base de datos en caso de incendio, terremoto, vandalismo u otros sucesos catastróficos.
- La recuperación de versiones es la restauración de una versión anterior de la base de datos, utilizando una imagen que se creó durante una operación de copia de seguridad.
- La recuperación en avance se puede utilizar para volver a aplicar los cambios realizados por las transacciones que se han confirmado después de realizar una copia de seguridad.

*Oracle* ofrece varios mecanismos para garantizar la recuperación de datos:
1. **Redologs**: Los redologs guardan todas las transacciones que se realizan en la base de datos. En caso de fallo, Oracle puede aplicar los redologs para restaurar las transacciones no confirmadas.
2. **Archivelogs**: Si la base de datos está en modo _archivelog_, los redologs son archivados para permitir la recuperación ante fallos severos, como la pérdida de un archivo de datos. Permite la recuperación hasta un punto específico en el tiempo.
3. **Undo Tablespace**: Oracle usa el espacio de _undo_ para mantener la información necesaria para revertir transacciones. Esto es útil para recuperar una transacción que no se completó correctamente o se deshizo.
4. **Backup y Recovery con RMAN**: Oracle ofrece _Recovery Manager_ (RMAN) para crear y gestionar copias de seguridad. RMAN permite hacer restauraciones completas e incrementales de la base de datos.
5. **Punto de recuperación garantizado (Guaranteed Restore Points)**: Permiten a los administradores de Oracle marcar un punto en el tiempo al que se puede volver sin perder datos, ideal para pruebas o cambios arriesgados.
En caso de un fallo, Oracle intenta primero recuperar automáticamente las transacciones mediante los redologs. Si esto no es suficiente, se puede usar un archivo de respaldo y los archivelogs con RMAN para restaurar los datos y aplicar todas las transacciones hasta el momento del fallo.