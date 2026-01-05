# Movie Data Analysis

![Python](https://img.shields.io/badge/Python-3.x-blue)
![Pandas](https://img.shields.io/badge/pandas-data%20analysis-green)
![SQL](https://img.shields.io/badge/SQL-SQLite-lightgrey)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange)
![Status](https://img.shields.io/badge/Status-Completed-success)


## Tabla de contenidos

- [Descripción General](#descripción-general)
- [Dataset](#dataset)
- [Tecnologías utilizadas](#tecnologías-utilizadas)
- [Estructura del proyecto](#estructura-del-proyecto)
- [Análisis con SQL](#análisis-con-sql)
- [KPIs analizados](#kpis-analizados)
- [Cómo ejecutar el proyecto](#cómo-ejecutar-el-proyecto)
- [Conclusiones](#conclusiones)
- [Visualizacion del Notebook](#notebook)

---
## Descripción General

Proyecto de **análisis exploratorio de datos** realizado sobre un dataset de
películas y series de Netflix.  
El objetivo es identificar **métricas clave (KPIs)** y **tendencias**
relacionadas con el tipo de contenido, la evolución temporal del catálogo
y la duración de las películas.

El proyecto está orientado a **demostrar habilidades de análisis de datos
a nivel junior**, combinando SQL y Python de forma práctica y realista.

---

## Dataset

Se utilizó el dataset **Netflix Movies and TV Shows**, en formato CSV,
que contiene información sobre títulos disponibles en la plataforma.

Principales variables:
- Tipo de contenido (Movie / TV Show)
- Año de lanzamiento
- País de origen
- Géneros
- Duración
- Clasificación por edad

📌 El dataset corresponde a un **corte temporal** y contiene información
hasta el año **2021**.

---

## Tecnologías utilizadas

- **Python**
  - pandas
  - matplotlib
- **SQL**
  - SQLite
- **Jupyter Notebook**
- **Git / GitHub**

---

## Estructura del proyecto

```text
movie-data-analysis/
├── data/
│   └── movies.csv
├── sql/
│   ├── create_tables.sql
│   └── queries.sql
├── notebooks/
│   └── analysis.ipynb
└── README.md
````

---

## Análisis con SQL

Previo al análisis exploratorio en Python, se realizaron consultas SQL
sobre una base de datos SQLite con el objetivo de validar métricas clave
y obtener una primera aproximación a los datos.

Las consultas se encuentran en el archivo:

sql/queries.sql


Entre los análisis realizados mediante SQL se incluyen:

- Cantidad total de títulos
- Distribución por tipo de contenido (películas vs series)
- Cantidad de títulos por año de lanzamiento
- Géneros más frecuentes
- Países con mayor cantidad de títulos
- Identificación de años con un volumen de títulos superior al promedio
  mediante el uso de subconsultas

Estas consultas permiten contrastar y respaldar los resultados obtenidos
posteriormente en el análisis con Python.

---

## KPIs analizados

### KPI 1 – Distribución por tipo de contenido
- Análisis de la cantidad de películas y series.
- Resultado: predominio del formato **película** frente a las series.

### KPI 2 – Evolución temporal del catálogo
- Cantidad de títulos por año de lanzamiento.
- Crecimiento sostenido a partir de 2010.
- La disminución observada en 2021 se debe a un corte temporal del dataset
  y no a una caída real de la producción.

### KPI 3 – Duración promedio de las películas
- Limpieza y transformación del campo `duration`.
- Cálculo de duración promedio.
- Mayor concentración de títulos entre **80 y 120 minutos**, acorde al
  estándar del formato cinematográfico.

---

## Cómo ejecutar el proyecto

### Requisitos
- Python 3.x
- Jupyter Notebook
- SQLite

### Instalación de dependencias

```bash
pip install pandas matplotlib jupyter
```

### Ejecución del notebook

Clonar el repositorio:

```bash
git clone https://github.com/tu-usuario/movie-data-analysis.git
cd movie-data-analysis
```

Iniciar Jupyter Notebook:

```bash
jupyter notebook
```

Abrir el archivo de análisis:

```bash
notebook/analysis.ipynb
```

## Conclusiones

Conclusiones

Del análisis realizado sobre el dataset del catálogo se desprenden las siguientes conclusiones principales:

### Composición del catálogo

El catálogo analizado presenta una mayor proporción de películas en relación con las series de televisión, lo que indica una clara predominancia del formato cinematográfico dentro del conjunto de títulos evaluados. Esto sugiere que, al menos en el alcance del dataset analizado, la plataforma prioriza la oferta de películas frente a otros formatos de contenido.

### Evolución temporal del catálogo

El análisis temporal evidencia un crecimiento sostenido en la incorporación de títulos a partir del año 2010, con un incremento especialmente marcado durante la última década. Este comportamiento refleja una estrategia de expansión del catálogo en respuesta al crecimiento del consumo de contenido bajo demanda.

La disminución observada en el año 2021 no debe interpretarse como una caída real en la producción o incorporación de contenidos, sino como una consecuencia del corte temporal del dataset, que contiene información únicamente hasta una parte de dicho año.

### Duración promedio de las películas

Luego del proceso de limpieza y normalización del campo de duración, se determinó que las películas presentan una duración promedio cercana a los 90 minutos. La distribución muestra una mayor concentración de títulos entre 80 y 120 minutos, lo que se encuentra alineado con los estándares tradicionales del formato cinematográfico. Esto sugiere una consistencia en la duración de los contenidos y una orientación hacia formatos ampliamente aceptados por el público.

### Conclusión general

El análisis permite identificar patrones claros en la composición, evolución y características del catálogo, aportando una visión estructurada sobre la estrategia de contenido y su alineación con tendencias del mercado audiovisual. Estos insights pueden servir como base para la toma de decisiones relacionadas con adquisición de contenidos, planificación de catálogo o análisis comparativo con otras plataformas.

## Notebook

[Ver Notebook](/notebooks/analysis.ipynb)