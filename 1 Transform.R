# Activacion de librerias
library(dplyr)
library(lubridate)
library(ggplot2)

# Creacion del set de trabajo dtf_resultadosb
dtf_resultadosb <- resultadosB

# Cambiar los nombres de las columnas
dtf_resultadosb <- dtf_resultadosb %>% 
  rename(fnumerica = "FECHA",
         number1 = "NRO 1",
         number2 = "NRO 2",
         number3 = "NRO 3",
         number4 = "NRO 4",
         number5 = "NRO 5",
         superbal = "NRO 6")


# Agregar la columna fecha al archivo
dtf_resultadosb <- dtf_resultadosb %>% 
  mutate(fecha = as.Date(fnumerica, origin = "1899-12-30"))

