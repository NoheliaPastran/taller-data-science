-- Parte 2: Consultas SQL Analíticas
-- 1. Verificar que la importación fue exitosa

SELECT * FROM fuel_consumption;

-- 2. Limitar el resultado a las primeras 15 filas

SELECT * FROM fuel_consumption 
LIMIT 15;

-- 3. Listado limpio y único de los fabricantes (marcas) de vehículos

SELECT DISTINCT MAKE 
FROM fuel_consumption 
ORDER BY MAKE ASC;

-- 4. Filtrar vehículos con tamaño de motor mayor a 3.0 litros

SELECT MAKE, MODEL, ENGINESIZE, CYLINDERS, CO2EMISSIONS 
FROM fuel_consumption 
WHERE ENGINESIZE > 3.0 
ORDER BY ENGINESIZE DESC;

-- 5. Filtrar vehículos por el año de fabricación analizado en clase

SELECT * 
FROM fuel_consumption 
WHERE MODELYEAR = 2014;

-- 6. Contar la cantidad de vehículos de marcas específicas (Ej. CHEVROLET y FORD)

-- Ejemplo para CHEVROLET:

SELECT COUNT(*) AS total_chevrolet 
FROM fuel_consumption 
WHERE MAKE = 'CHEVROLET';

-- Ejemplo para FORD:

SELECT COUNT(*) AS total_ford 
FROM fuel_consumption 
WHERE MAKE = 'FORD';

-- 7. Encontrar vehículos con consumo de combustible en ciudad inusualmente bajo o alto

SELECT MAKE, MODEL, VEHICLECLASS, FUELCONSUMPTION_CITY, CO2EMISSIONS
FROM fuel_consumption
WHERE FUELCONSUMPTION_CITY <= 6.0 
   OR FUELCONSUMPTION_CITY >= 25.0
ORDER BY FUELCONSUMPTION_CITY ASC;