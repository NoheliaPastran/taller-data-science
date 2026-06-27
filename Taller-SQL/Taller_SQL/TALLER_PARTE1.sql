-- Parte 1: Creación de la Base de Datos e Importación
-- Paso 1.1: Crear la base de datos ejercicios

CREATE DATABASE ejercicios;

-- Paso 1.2: Crear la tabla fuel_consumption de forma manual

USE ejercicios;

CREATE TABLE fuel_consumption (
    MODELYEAR INT,                         -- Año de fabricación (ej. 2014)
    MAKE VARCHAR(50),                      -- Fabricante / Marca (ej. ACURA)
    MODEL VARCHAR(100),                    -- Modelo del vehículo (ej. ILX)
    VEHICLECLASS VARCHAR(50),              -- Clase de vehículo (ej. COMPACT)
    ENGINESIZE DECIMAL(3,1),               -- Tamaño del motor en litros (ej. 2.0)
    CYLINDERS INT,                         -- Número de cilindros (ej. 4)
    TRANSMISSION VARCHAR(10),              -- Tipo de transmisión (ej. AS5, M6)
    FUELTYPE VARCHAR(5),                   -- Tipo de combustible (ej. Z, D, X)
    FUELCONSUMPTION_CITY DECIMAL(4,1),     -- Consumo en ciudad (L/100 km)
    FUELCONSUMPTION_HWY DECIMAL(4,1),      -- Consumo en carretera (L/100 km)
    FUELCONSUMPTION_COMB DECIMAL(4,1),     -- Consumo combinado (L/100 km)
    FUELCONSUMPTION_COMB_MPG INT,          -- Consumo combinado en Millas por Galón (mpg)
    CO2EMISSIONS INT                       -- Emisiones de CO2 (g/km)
);

-- Paso 1.3 Importación del dataset en MySQL Workbench: Se usó dando clic derecho la opción de Table Data Import Wizard.