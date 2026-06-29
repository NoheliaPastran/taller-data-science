# Parte 3: Preguntas de Análisis y Reflexión (Industria 4.0)

## 1. ¿Por qué la limpieza y filtrado de datos en SQL es el paso previo indispensable antes de entrenar un modelo de Machine Learning en Python?

Antes de utilizar un modelo de Machine Learning es necesario preparar los datos mediante SQL, ya que esta etapa permite eliminar registros duplicados, corregir inconsistencias y tratar los valores faltantes. De esta manera, la información que posteriormente se procesa en Python es más precisa y confiable. Además, el filtrado facilita que el modelo trabaje únicamente con datos relevantes, mejorando su rendimiento y la calidad de las predicciones obtenidas

---

## 2. En un escenario de producción industrial con millones de filas de telemetría vehicular, ¿qué impacto tiene mapear correctamente las llaves primarias y limitar las consultas con LIMIT en lugar de traer siempre todos los datos?

En un entorno donde se generan millones de registros, definir correctamente las llaves primarias permite identificar cada dato de forma única, evitando duplicidades y manteniendo la integridad de la información. Por otra parte, utilizar la cláusula LIMIT hace posible consultar solo una parte de los datos cuando no es necesario recuperar toda la tabla. Esto disminuye el consumo de recursos, agiliza las consultas y mejora el desempeño de las aplicaciones encargadas del análisis de la información
---

## 3. Al revisar el archivo de la guía, se observó que sentencias como TRUNCATE TABLE actúan de forma fulminante eliminando datos. Si estuvieras gestionando un proyecto de analítica de datos en tiempo real, ¿en qué caso específico se justificaría usar un TRUNCATE con la instrucción IMMEDIATE en lugar de un DELETE tradicional?

La principal diferencia es que DELETE elimina los registros de manera gradual y permite establecer condiciones para seleccionar qué filas borrar, mientras que TRUNCATE IMMEDIATE vacía toda la tabla de forma rápida. En un sistema de analítica en tiempo real, este comando sería apropiado para limpiar tablas temporales o de apoyo que almacenan información momentánea, como datos de telemetría que se actualizan constantemente. En estos casos, resulta más eficiente reiniciar completamente la tabla con TRUNCATE IMMEDIATE, ya que los datos serán cargados nuevamente en poco tiempo y no es necesario conservar el contenido anterior