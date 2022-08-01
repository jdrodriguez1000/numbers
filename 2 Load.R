# Activacion de librerias
library(ggplot2)
library(lubridate)
library(dplyr)

# Carga el set de datos para trabajo
dtf_resultadosB <- resultB_transf %>% 
  select(fecha, diasem, number1, number2, number3, number4, number5, superbal)