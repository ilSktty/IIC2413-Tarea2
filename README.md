# IIC2413-Tarea2
Tarea n°2 de Base de Datos 2026-1.

Integrantes:
- Scarlette
- Matilde Baeza
- Sofía Guzmán
- Joaquín Toro

Versión de PostgreSQL: 18

***

### Pasos a seguir
Para crear la base de datos, cargarla y medir los tiempos de ejecucion de consultas antes y después de su optimización, se deben escribir los siguientes comandos en consola:
1. ``createdb bookstore_g5``
2. ``psql -d bookstore_g5 -f schema.sql``
3. ``psql -d bookstore_g5 -f load.sql``
4. `py run_workload.py --csv times_baseline.csv --db bookstore_g5`  
*(correr 2 veces este comando para medir en caliente)*

5. `psql -d bookstore_g5 -f matview.sql`
6. `psql -d bookstore_g5 -f indexes.sql`
7. `py run_workload.py --csv times_after.csv --db bookstore_g5 --workload workload_after.sql` 
*(correr 2 veces este comando para medir en caliente)*