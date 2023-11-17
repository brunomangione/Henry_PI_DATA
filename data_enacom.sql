CREATE DATABASE PI_DATA_ENACOM;
USE PI_DATA_ENACOM;


CREATE TABLE acceso_internet_ancho_banda_provincias (
    año INT,
    trimestre INT,
    provincia VARCHAR(50),
    banda_ancha_fija INT,
    dial_up FLOAT(20,2),
    total INT,
    provincia_id INT,
    año_id INT
);

LOAD DATA LOCAL INFILE '/Users/brunomangione/Library/CloudStorage/GoogleDrive-brunomangione@gmail.com/My Drive/PROGRAMACION/Henry/Data Science/PI - DataAnalysis/data_sql/sql_acc_bandas_provincias.csv' 
INTO TABLE acceso_internet_ancho_banda_provincias
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE acceso_internet_100_hab (
	año INT,
    trimestre INT, 
    provincia VARCHAR(50),
    accesos_por_cada_100_hab INT,
    provincia_id INT,
    año_id INT
);


LOAD DATA LOCAL INFILE '/Users/brunomangione/Library/CloudStorage/GoogleDrive-brunomangione@gmail.com/My Drive/PROGRAMACION/Henry/Data Science/PI - DataAnalysis/data_sql/sql_acc_internet_100_hab.csv'
INTO TABLE acceso_internet_100_hab
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE acceso_internet_100_hogares (
	año INT,
    trimestre INT,
    provincia VARCHAR(50),
    accesos_por_cada_100_hogares INT,
    provincia_id INT,
    año_id INT
);

LOAD DATA LOCAL INFILE '/Users/brunomangione/Library/CloudStorage/GoogleDrive-brunomangione@gmail.com/My Drive/PROGRAMACION/Henry/Data Science/PI - DataAnalysis/data_sql/sql_acc_internet_100_hogares.csv'
INTO TABLE acceso_internet_100_hogares
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE acceso_internet_velocidad (
	año INT,
    trimestre INT,
    provincia VARCHAR(50),
    hasta_512_kbps FLOAT,
    512_kbps_a_1_mbps FLOAT,
    1_mbps_a_6_mbps FLOAT,
    6_mbps_a_10_mbps FLOAT,
    10_mbps_a_20_mbps FLOAT,
    20_mbps_a_30_mbps FLOAT,
    mas_30_mbps FLOAT,
    otros FLOAT,
    total FLOAT,
    provincia_id INT,
    año_id INT
);


LOAD DATA LOCAL INFILE '/Users/brunomangione/Library/CloudStorage/GoogleDrive-brunomangione@gmail.com/My Drive/PROGRAMACION/Henry/Data Science/PI - DataAnalysis/data_sql/sql_acc_internet_velocidad.csv'
INTO TABLE acceso_internet_velocidad
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE acceso_internet_tecnologia (
	año INT,
    trimestre INT,
    provincia VARCHAR (50),
    adsl INT,
    cablemodem INT,
    fibra_optica INT,
    wireless INT,
    otros INT,
    total INT,
    provincia_id INT,
    año_id INT
);
    
LOAD DATA LOCAL INFILE '/Users/brunomangione/Library/CloudStorage/GoogleDrive-brunomangione@gmail.com/My Drive/PROGRAMACION/Henry/Data Science/PI - DataAnalysis/data_sql/sql_acc_internet_tecnologia.csv'
INTO TABLE acceso_internet_tecnologia
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



CREATE TABLE comparacion_internet_telefonias (
	año INT,
    acceso_telefonia_fija_cada_100_hab INT,
	acceso_telefonia_movil_cada_100_hab INT,
	acceso_internet_cada_100_hab INT,
    año_id INT
);

LOAD DATA LOCAL INFILE '/Users/brunomangione/Library/CloudStorage/GoogleDrive-brunomangione@gmail.com/My Drive/PROGRAMACION/Henry/Data Science/PI - DataAnalysis/data_sql/sql_comparacion_acc_internet_y_telefonias.csv'
INTO TABLE comparacion_internet_telefonias
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



CREATE TABLE ingresos (
	año INT,
    trimestre INT,
    ingresos_internet INT,
    ingresos_telefonia_fija BIGINT,
    ingresos_telefonia_movil INT,
    año_id INT
);

LOAD DATA LOCAL INFILE '/Users/brunomangione/Library/CloudStorage/GoogleDrive-brunomangione@gmail.com/My Drive/PROGRAMACION/Henry/Data Science/PI - DataAnalysis/data_sql/sql_ingresos_servicios.csv'
INTO TABLE ingresos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE provincias (
	nombre_provincia VARCHAR(50),
    provincia_id INT
);

LOAD DATA LOCAL INFILE '/Users/brunomangione/Library/CloudStorage/GoogleDrive-brunomangione@gmail.com/My Drive/PROGRAMACION/Henry/Data Science/PI - DataAnalysis/data_sql/provincias.csv'
INTO TABLE provincias
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

