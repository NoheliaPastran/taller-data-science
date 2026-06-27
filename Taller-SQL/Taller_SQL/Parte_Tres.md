# Parte 3: Preguntas de Análisis y Reflexión (Industria 4.0)

## 1. ¿Por qué la limpieza y filtrado de datos en SQL es el paso previo indispensable antes de entrenar un modelo de Machine Learning en Python?

La limpieza y filtrado en SQL es fundamental porque garantiza la **calidad de los datos**. Un modelo de Machine Learning solo puede aprender patrones correctos si los datos están libres de duplicados, inconsistencias y valores nulos. Además, SQL permite aplicar reglas de negocio y normalizar la información antes de exportarla a Python, lo que reduce el tiempo de entrenamiento y asegura que las variables sean confiables. En resumen, SQL actúa como el filtro que depura la información antes de que Python la procese.

---

## 2. En un escenario de producción industrial con millones de filas de telemetría vehicular, ¿qué impacto tiene mapear correctamente las llaves primarias y limitar las consultas con LIMIT en lugar de traer siempre todos los datos?

En este contexto, **mapear correctamente las llaves primarias** evita duplicados y asegura que cada registro de telemetría esté asociado de forma única a un vehículo o sensor, lo que mejora la integridad y velocidad de las consultas.  
Por otro lado, el uso de **LIMIT** permite trabajar con muestras representativas sin necesidad de cargar millones de filas en memoria. Esto optimiza el rendimiento de los sistemas, reduce costos computacionales y mejora la experiencia en dashboards o análisis exploratorios. El impacto es directo en la **escalabilidad y eficiencia** del sistema industrial.

---

## 3. Al revisar el archivo de la guía, se observó que sentencias como TRUNCATE TABLE actúan de forma fulminante eliminando datos. Si estuvieras gestionando un proyecto de analítica de datos en tiempo real, ¿en qué caso específico se justificaría usar un TRUNCATE con la instrucción IMMEDIATE en lugar de un DELETE tradicional?

El comando **DELETE** elimina fila por fila y permite condiciones, mientras que **TRUNCATE IMMEDIATE** borra toda la tabla de manera instantánea y sin posibilidad de recuperación detallada.  
En un proyecto de analítica de datos en tiempo real, se justificaría usar TRUNCATE IMMEDIATE en **tablas temporales o de staging** que almacenan datos de telemetría en streaming, donde lo importante es la última lectura y no el historial. Por ejemplo, reiniciar una tabla de caché que se regenera cada minuto. En este caso, TRUNCATE es más rápido y eficiente que DELETE, y no compromete la integridad del sistema porque los datos se vuelven a generar continuamente.
