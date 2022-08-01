# Activacion de librerias
library(dplyr)
library(lubridate)
library(ggplot2)

# Creacion del set de trabajo dtf_resultadosb
resultB_transf <- resultB_orig

# Cambiar los nombres de las columnas
resultB_transf <- resultB_transf %>% 
  rename(fnumerica = "FECHA",
         number1 = "NRO 1",
         number2 = "NRO 2",
         number3 = "NRO 3",
         number4 = "NRO 4",
         number5 = "NRO 5",
         superbal = "NRO 6")


# Se debe actualizar la fecha maxima desviada
resultB_transf <- resultB_transf %>% 
  mutate(fnumerica = ifelse(fnumerica == 46727, 43075, fnumerica))


# Agregar la columna fecha al archivo
resultB_transf <- resultB_transf %>% 
  mutate(fecha = as.Date(fnumerica, origin = "1899-12-30"))

# Agrega el nombre del dia de la semana
resultB_transf <- resultB_transf %>% 
  mutate(diasem = wday(fecha, label = TRUE))

##  ----- Analisis de la variable fecha ---------

# Número de registros informados en la variable fecha
resultB_transf %>% 
  summarise(total = sum(!is.na(fecha))) %>% 
  View()

# Valor maximo y minimo de la fecha
resultB_transf %>% 
  summarise(fecha_min = min(fecha),
            fecha_max = max(fecha)) %>% 
  View()

## ------- ANALISIS DE LA VARIABLE DIASEM --------

# Numero de registros informados
resultB_transf %>% 
  summarise(total = sum(!is.na(diasem))) %>% 
  View()

# Informacion registrada en la variable
resultB_transf %>% 
  group_by(diasem) %>% 
  summarise(total = sum(!is.na(diasem))) %>% 
  View()

# ------ ANALISIS DE LA VARIABLE NUMBER 1 ------

# Numero de registros almacenados en la variable
resultB_transf %>% 
  summarise(total = sum(!is.na(number1))) %>% 
  View()

# Valor maximo y valor minimo
resultB_transf %>% 
  summarise(valor_min = min(number1),
            valor_max = max(number1)) %>% 
  View()

# Informacion almacenada en la variable
resultB_transf %>% 
  group_by(number1) %>% 
  summarise(total = sum(!is.na(number1))) %>% 
  View()


# ------ ANALISIS DE LA VARIABLE NUMBER 2 ------

# Numero de registros almacenados en la variable
resultB_transf %>% 
  summarise(total = sum(!is.na(number2))) %>% 
  View()

# Valor maximo y valor minimo
resultB_transf %>% 
  summarise(valor_min = min(number2),
            valor_max = max(number2)) %>% 
  View()

# Informacion almacenada en la variable
resultB_transf %>% 
  group_by(number2) %>% 
  summarise(total = sum(!is.na(number2))) %>% 
  View()


# ------ ANALISIS DE LA VARIABLE NUMBER 3 ------

# Numero de registros almacenados en la variable
resultB_transf %>% 
  summarise(total = sum(!is.na(number3))) %>% 
  View()

# Valor maximo y valor minimo
resultB_transf %>% 
  summarise(valor_min = min(number3),
            valor_max = max(number3)) %>% 
  View()

# Informacion almacenada en la variable
resultB_transf %>% 
  group_by(number3) %>% 
  summarise(total = sum(!is.na(number3))) %>% 
  View()

# ------ ANALISIS INICIAL DE LA VARIABLE NUMBER 4 ------

# Numero de registros almacenados en la variable
resultB_transf %>% 
  summarise(total = sum(!is.na(number4))) %>% 
  View()

# Valor maximo y valor minimo
resultB_transf %>% 
  summarise(valor_min = min(number4),
            valor_max = max(number4)) %>% 
  View()

# Informacion almacenada en la variable
resultB_transf %>% 
  group_by(number4) %>% 
  summarise(total = sum(!is.na(number4))) %>% 
  View()

# ------ ANALISIS INICIAL DE LA VARIABLE NUMBER 5 ------

# Numero de registros almacenados en la variable
resultB_transf %>% 
  summarise(total = sum(!is.na(number5))) %>% 
  View()

# Valor maximo y valor minimo
resultB_transf %>% 
  summarise(valor_min = min(number5),
            valor_max = max(number5)) %>% 
  View()

# Informacion almacenada en la variable
resultB_transf %>% 
  group_by(number5) %>% 
  summarise(total = sum(!is.na(number5))) %>% 
  View()


# ------ ANALISIS INICIAL DE LA VARIABLE SUPER BAL ------

# Numero de registros almacenados en la variable
resultB_transf %>% 
  summarise(total = sum(!is.na(superbal))) %>% 
  View()

# Valor maximo y valor minimo
resultB_transf %>% 
  summarise(valor_min = min(superbal),
            valor_max = max(superbal)) %>% 
  View()

# Informacion almacenada en la variable
resultB_transf %>% 
  group_by(superbal) %>% 
  summarise(total = sum(!is.na(superbal))) %>% 
  View()


