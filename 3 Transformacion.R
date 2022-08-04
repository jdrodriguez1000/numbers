# Archivo de transformacion y construccion del set de datos de trabajo


# Activacion de librerias
library(readr)
library(dplyr)
library(ggplot2)
library(lubridate)


# Creacion del archivo de trabajo
dtf_datos <- set_datos_original


# Actualizacion del nombre de columnas
dtf_datos <- dtf_datos %>% 
  rename(fechaorig = "FECHA",
         nmb1 = `NRO 1`,
         nmb2 = `NRO 2`,
         nmb3 = `NRO 3`,
         nmb4 = `NRO 4`,
         nmb5 = `NRO 5`,
         superb = `NRO 6`)


# Adicion de la columna fecha como tipo date
dtf_datos <- dtf_datos %>% 
  mutate(fecha = as.Date(fechaorig, origin = "1899-12-30"))


# Adicion de la columna dia de la semana
dtf_datos <- dtf_datos %>% 
  mutate(diasem = wday(fecha, label = TRUE))


# orden y seleccion de columnas
dtf_datos <- dtf_datos %>% 
  select(fecha, diasem, nmb1, nmb2, nmb3, nmb4, nmb5, superb)


# Adicion columna repetidos (la superb es igual a algun numero)
dtf_datos <-  dtf_datos %>%
  mutate(repetidos = ifelse((superb == nmb1 | superb == nmb2 | superb == nmb3 | superb == nmb4 | superb == nmb5), "SI", "NO")) 

  



