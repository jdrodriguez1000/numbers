# Calidad de datos

# Activacion librerias
library(readr)
library(dplyr)
library(ggplot2)
library(lubridate)


#  --------------  1. Exploracion general  --------------

glimpse(set_datos_original)

# RESULTADOS: 
#     Filas 264.
#     Columnas 7
#     Fecha de carga original 4-agosto-2022



#  --------------  2. Tipos de datos  -------------- 

# Variable1: FECHA          Tipo: Fecha     Numerica      Continua
# Variable2: `NRO 1`        Tipo: Numero    Numerica      Discreta   
# Variable3: `NRO 2`        Tipo: Numero    Numerica      Discreta   
# Variable4: `NRO 3`        Tipo: Numero    Numerica      Discreta   
# Variable5: `NRO 4`        Tipo: Numero    Numerica      Discreta 
# Variable6: `NRO 5`        Tipo: Numero    Numerica      Discreta 
# Variable7: `NRO 6`        Tipo: Numero    Numerica      Discreta  


#  --------------  3. Analisis inicial de totales y faltantes  -------------- 

# Consulta para determinar los valores totales y faltantes
set_datos_original %>% 
  summarise(total_var1 = sum(!is.na(FECHA)),
            falta_var1 = sum(is.na(FECHA)),
            total_var2 = sum(!is.na(`NRO 1`)),
            falta_var2 = sum(is.na(`NRO 1`)),
            total_var3 = sum(!is.na(`NRO 2`)),
            falta_var3 = sum(is.na(`NRO 2`)),
            total_var4 = sum(!is.na(`NRO 3`)),
            falta_var4 = sum(is.na(`NRO 3`)),
            total_var5 = sum(!is.na(`NRO 4`)),
            falta_var5 = sum(is.na(`NRO 4`)),
            total_var6 = sum(!is.na(`NRO 5`)),
            falta_var6 = sum(is.na(`NRO 5`)),
            total_var7 = sum(!is.na(`NRO 6`)),
            falta_var7 = sum(is.na(`NRO 6`)),) %>% 
  View()

# RESULTADOS
#     1. No se encontraron valores faltantes



#  --------------  4. Revision del contenido de las variables con datos faltantes  -------------- 

# RESULTADOS
#     1. No se requiere este analisis.



#  --------------  5. Revision del contenido de las otras variables   -------------- 


# Variable1: FECHA - Fecha maxima y minima
set_datos_original %>% 
  mutate(FECHA = as.Date(FECHA, origin = "1899-12-30")) %>% 
  summarise(minima = min(FECHA),
            maxima = max(FECHA)) %>% 
  View()

# RESULATADOS
#     1. No se encontró ningun resultado significativo.

# RECOMENDACIONES: 
#     1. Cambiar el nombre de la columna a fechaorig
#     2. Agregar columna con la fecha tipo date.
#     3. Agregar el nombre del dia, especificando miercoles y sabados



# Variable2: `NRO 1` - Valor maximo y minimo
set_datos_original %>% 
  summarise(minimo = min(`NRO 1`),
            maximo = max(`NRO 1`)) %>% 
  View()

# RESULATADOS
#     1. Resultados correctos, valores entre 1 y 43.

# RECOMENDACIONES:
#     1. Cambiar el nombre de la columna a nmb1




# Variable3: `NRO 2` - Valor maximo y minimo
set_datos_original %>% 
  summarise(minimo = min(`NRO 2`),
            maximo = max(`NRO 2`)) %>% 
  View()

# RESULATADOS
#     1. Resultados correctos, valores entre 1 y 43.

# RECOMENDACIONES:
#     1. Cambiar el nombre de la columna a nmb2



# Variable4: `NRO 3` - Valor maximo y minimo
set_datos_original %>% 
  summarise(minimo = min(`NRO 3`),
            maximo = max(`NRO 3`)) %>% 
  View()

# RESULATADOS
#     1. Resultados correctos, valores entre 1 y 43.

# RECOMENDACIONES:
#     1. Cambiar el nombre de la columna a nmb3




# Variable5: `NRO 4` - Valor maximo y minimo
set_datos_original %>% 
  summarise(minimo = min(`NRO 4`),
            maximo = max(`NRO 4`)) %>% 
  View()

# RESULATADOS
#     1. Resultados correctos, valores entre 1 y 43.

# RECOMENDACIONES:
#     1. Cambiar el nombre de la columna a nmb4



# Variable6: `NRO 5` - Valor maximo y minimo
set_datos_original %>% 
  summarise(minimo = min(`NRO 5`),
            maximo = max(`NRO 5`)) %>% 
  View()

# RESULATADOS
#     1. Resultados correctos, valores entre 1 y 43.

# RECOMENDACIONES:
#     1. Cambiar el nombre de la columna a nmb5



# Variable7: `NRO 6` - Valor maximo y minimo
set_datos_original %>% 
  summarise(minimo = min(`NRO 6`),
            maximo = max(`NRO 6`)) %>% 
  View()

# RESULATADOS
#     1. Resultados correctos, valores entre 1 y 16.

# RECOMENDACIONES:
#     1. Cambiar el nombre de la columna a superb

