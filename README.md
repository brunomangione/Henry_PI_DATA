# <h1 align=center> *Proyecto Individual N° 2 - Henry* </h1>

# <h1 align=center> **Data Analysis - ENACOM** </h1>

## **Propuesta general**</h2>

**Se propone analizar la situación actual de los servicios de telecomunicaciones, haciendo énfasis en el Acceso a internet, viendo como fue su evolución y comportamiento en los últimos años a nivel nacional.**


## **Objetivos principales**</h2>

* Conocer la situación actual  y la evolución de los servicios de telecomunicaciones, en particular Internet.
* Identificar oportunidades de crecimiento.
* Desarrollar mejoras en los servicios de telecomunicaciones.

## **Desarrollo del trabajo**</h2>

## **`Introducción`**</h2>
Para nuestro trabajo, partimos de los supuestos e hipótesis de que los servicios de telecomunicaciones, en particular el Acceso a Internet ha aumentado en los últimos años, de acuerdo a las nuevas tecnologías y necesidades del mercado. Suponemos que nos vamos encontrar con un internet cada vez más avanzado con el paso de los años, como asi más llegagadas a los hogares del país.
De acuerdo a este supuesto empezaremos nuestro análisis, desarrollaremos nuestro trabajo y sacaremos las conlusiones de la información que nos brindan los datos.

## **`ETL`**</h2>

Para iniciar nuestro trabajo, primeros realizamos la **obtención de los datos**, a traves del ENTE nacional de Argentina ENACOM, por medio de su API. Esto nos permitió descargar todos los archvos en formato csv, de la categoria **Acceso a Internet**.
Los archivos fueron descargados en la carpeta Datastreams.
La página principal donde se obtuvieron los datos es: [ENACOM](https://datosabiertos.enacom.gob.ar/)

Como primer paso, leugo de la obtención de los datos, fue realizar una previsualización de los mismos, ver en que estados se encontraban los datos y a partir de alli realizar una limpieza. 
La limpieza de los datos se basó en eliminar datos nulos o reemplazarlos por cero, de acuerdo al caso, eliminar columnas vacias, modificacion de tipos de datos, de tal forma que quedaran correctos a la hora del análisis. 
Los datos corregidos fueron exportados en formato csv a la carpeta Datasets, para despues utilizarlo en nuestro análisis EDA.

### *`Tecnologias empleadas`*: Pandas, Numpy.


## **`EDA`**</h2>

Luego de haber trabajados los datos obtenidos en nuestro ETL. decidimos trabajar con algunos archivos para realizar nuestro análisis. En particular trabajamos con los dataset que se refieren a los Accesos de Internet fijo, teniendo en cuentas las provincias, la tecnología y los rangos de velocidad, a su vez estos dataset estan dividos por años y por trimestres. 
Tambien trabajamos con los archivos de penetración de Internet fijo por provincia, tanto por cada 100 habitantes como cada 100 hogares. 
Además agregamos unos archivos complementarios, donde pudimos evaluar como fueron los ingresos por la prestación de los servicios de internet en comparación con los servicios de telefonia fija y de telefonia movil. 
Para terminar hicimos una comparación para analizar la evolución de los accesos a internet por cada 100 habitantes en relación a los accesos a telefonia fija y telefonia movil. 

A partir del archivo ['EDA'](./EDA.ipynb), donde realizamos diferentes gráficos de lo anteriormente mencionado, podemos empezar a analizar las siguientes puntos:

1. Como fue la evolución de los accesos a internet por provincias, tanto como cada 100 habitantes como cada 100 hogares.
2. Como fue la evolución de las distintas velocidades de internet y cuales son las que se mas se usan por provincias.
3. Como fue la evolución de las diferentes tecnologías y cuales son las que mas se usan por provincias.

A continuación mostramos algunos de los análisis y conclusiones obtenidas:

### **Acceso a internet cada 100 habitantes**

<p align=center><img src=./imagenes/Acceso100hab.png><p>

<p align=center><img src=./imagenes/Acc100hab_prov.png><p>

En los accesos a internet cada 100 habitantes, se observa un crecimiento constante a nivel nacional. Es un indicador que esperábamos, ya que internet es cada vez mas imprescindible para nuestra forma de comunicarnos y trabajar. Otro dato que vemos es que desde el 2020, año en que se inició la pandemia, el crecimiento es mas fuerte. A nivel provincias, vemos incrementos similares a traves del tiempo, siendo Capital Federal la mayor cantidad de accesos a internet por cada 100 habitantes, manteniendose en un rango entre 40 y 50 personas.
A su vez, vemos 2 provincias como La Pampa y Tierra del fuego, que son las que siguen a Capital Federal. Esto tambien se debe a la densidad demografica de las provincias, ya que son provincias con pocos habitantes.


### **Acceso a internet cada 100 hogares**

<p align=center><img src=./imagenes/Acceso100hogares.png><p>

<p align=center><img src=./imagenes/Acc100hogares_prov.png><p>

En el análisis del acceso a internet cada 100 hogares, vemos un comportamiento similar al acceso a internet cada 100 habitantes, en este caso no es tan marcado los crecimientos, sino que se observan mas oscilaciones. Igualmente Capital Federal sigue siendo la provincia de mas acceso a internet cada 100 hogares como es en el analisis anterior. 
Entre las provincias grandes, siguen estando en la cima la provincia de Tierra del Fuego y La Pampa, por encima de Cordoba, Buenos Aires y Santa Fe. Averiguamos cual era la Densidad de dichas provincias. Tierra del fuego posee una densidad de 0,21 habitantes por km2 y La Pampa es de 2,55 habitantes por km2. Estos datos son muy bajos si los comparamos con Capital Federal que tiene 15155,96 habitantes por km2, Cordoba 24,14, Buenos Aires 57,43 y Santa Fe 26,69.
Otro punto interesante en nuestro análisis es el caso de San Luis, tiene un gran crecimiento a mas del triple de accesos a internet cada 100 hogares, esto se debe a que desde el año 2018 se realizaron obras en la provincia, se ampliaron las redes de fibra optica mas de 500km que beneficiaron a 26 localidades y parajes de la provincia.

### **Evolución de las tecnologías de internet**

<p align=center><img src=./imagenes/evolucion_tecnologia.png><p>

<p align=center><img src=./imagenes/fibraoptica.png><p>

Se puede visualizar a nivel nacional que las tecnologias Cablemodem y Fibra Optica van en aumento con el correr de los años, teniendo un gran crecimiento la fibra optica a partir del año 2018, siendo esta de mayor tecnologia. Tambien vemos que las conexiones ADSL, que son de tecnologia mas antiguas van decayendo con el correr de los años. 
A nivel provincias, predominan las conexiones de Cablemodem como principal tecnologia. Buenos Aires es la provincia con mayores conexiones, la siguen Capital Federal, Cordoba y Santa Fe. El resto de las provincias tiene un numero mucho menor de conexiones, ya que tambien tienen mucha menos poblacion que las provincias mencionadas. 
Otro analisis que podemos hacer es que las provincias de Mendoza, San Juan y Tucuman, predomia las conexiones ADSL, una tecnologia que fue bajando con el correr de los años como vimos en el grafico anterior.
La fibra óptica fue la que mas crecimiento tuvo en los últimos años, ya que es una de las tecnologías mas modernas que se utilizan en la actualidad y como dijimos anteriormente, a partir de la pandemia se han aumentados las conexiones con dichas tecnologías como asi tambien se han realizado mayores inversiones por parte del Estado. Igualmente analizando en las provincias, vemos que todavia falta desarrollar dicha tecnología por lo que sería un dato importante para realizar inversiones futuras en dichas provincias. 


### **Evolución de las velocidades de internet**

<p align=center><img src=./imagenes/evolucion_velocidades.png><p>

<p align=center><img src=./imagenes/velocidades_provincias.png><p>

Visualizamos que las velocidades a nivel nacional tuvo una evolución y crecimiento de las conexiones de +30Mbps, mayormente a partir del 2018, que con el correr del tiempo y tecnologia, van en constante aumento y por otra parte las conexiones con una velocidad de entre 1 y 6Mbps van disminyendo con los años. El resto de las velocidades de conexiones tienen un comportamiento moderado con relacion a los 2 rangos de velocidad mencionados. 
El gran crecimiento de las conexiones de +30Mbps tambien lo podemos relacionar con el análisis anterior y el crecimiento de la fibra óptica, ya que esta tecnología soprta mayor capcidad de velocidad. 
Las provincias con mayores conexiones siguen siendo Buenos Aires, Capital Federal, Cordoba y Santa Fe, y las conexiones se encuentran en un rango mayor a los 30Mbps (son las que predominan) y entre 1-6Mbps, mientras que en el resto de las provincias las conexiones que predominan son las de entre 1-6Mbps.

### *`Tecnologias empleadas`*: Pandas, Numpy, Seaborn, Matplotlib.




## **`Dashboard interactivo Power BI`**</h2>

Utilizamos la herramienta Power BI para explorar y visalizar los datos trabajados en los datasets y podamos mostrar nuestras conclusiones. Entre ellas vamos a poder ver: 

* Aumentar en un 2% el acceso al servicio de internet para el próximo trimestre, cada 100 hogares, por provincia.
* Aumentar el 5% el acceso a internet de un año con respecto al anterior, cada 100 habitantes, por por provincia.
* 

### *`Tecnologias empleadas`*: PowerBI, MySQL, DAX.


## **Autor: `Bruno Mangione`**</h2>










