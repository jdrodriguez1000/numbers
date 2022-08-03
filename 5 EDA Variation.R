# Activacion de librerias
library(ggplot2)
library(lubridate)
library(dplyr)
library(stats)


# Estadistica descriptiva variable number1
dtf_resultadosB %>% 
  summarise(num_minimo = min(number1, na.rm = TRUE),
            num_maximo = max(number1, na.rm = TRUE),
            num_media = mean(number1, na.rm = TRUE),
            num_desv_estandar = sd(number1, na.rm = TRUE),
            num_varianza = var(number1, na.rm = TRUE),
            num_mediana = median(number1, na.rm = TRUE),
            num_percentil25 = quantile(number1, 0.25, na.rm = TRUE),
            num_percentil50 = quantile(number1, 0.5, na.rm = TRUE),
            num_percentil75 = quantile(number1, 0.75, na.rm = TRUE),
            num_rangoIC = num_percentil75 - num_percentil25) %>% 
  View()

# Estadistica descriptiva variable number2
dtf_resultadosB %>% 
  summarise(num_minimo = min(number2, na.rm = TRUE),
            num_maximo = max(number2, na.rm = TRUE),
            num_media = mean(number2, na.rm = TRUE),
            num_desv_estandar = sd(number2, na.rm = TRUE),
            num_varianza = var(number2, na.rm = TRUE),
            num_mediana = median(number2, na.rm = TRUE),
            num_percentil25 = quantile(number2, 0.25, na.rm = TRUE),
            num_percentil50 = quantile(number2, 0.5, na.rm = TRUE),
            num_percentil75 = quantile(number2, 0.75, na.rm = TRUE),
            num_rangoIC = num_percentil75 - num_percentil25) %>% 
  View()

# Estadistica descriptiva variable number3
dtf_resultadosB %>% 
  summarise(num_minimo = min(number3, na.rm = TRUE),
            num_maximo = max(number3, na.rm = TRUE),
            num_media = mean(number3, na.rm = TRUE),
            num_desv_estandar = sd(number3, na.rm = TRUE),
            num_varianza = var(number3, na.rm = TRUE),
            num_mediana = median(number3, na.rm = TRUE),
            num_percentil25 = quantile(number3, 0.25, na.rm = TRUE),
            num_percentil50 = quantile(number3, 0.5, na.rm = TRUE),
            num_percentil75 = quantile(number3, 0.75, na.rm = TRUE),
            num_rangoIC = num_percentil75 - num_percentil25) %>% 
  View()

# Estadistica descriptiva variable number4
dtf_resultadosB %>% 
  summarise(num_minimo = min(number4, na.rm = TRUE),
            num_maximo = max(number4, na.rm = TRUE),
            num_media = mean(number4, na.rm = TRUE),
            num_desv_estandar = sd(number4, na.rm = TRUE),
            num_varianza = var(number4, na.rm = TRUE),
            num_mediana = median(number4, na.rm = TRUE),
            num_percentil25 = quantile(number4, 0.25, na.rm = TRUE),
            num_percentil50 = quantile(number4, 0.5, na.rm = TRUE),
            num_percentil75 = quantile(number4, 0.75, na.rm = TRUE),
            num_rangoIC = num_percentil75 - num_percentil25) %>% 
  View()

# Estadistica descriptiva variable number5
dtf_resultadosB %>% 
  summarise(num_minimo = min(number5, na.rm = TRUE),
            num_maximo = max(number5, na.rm = TRUE),
            num_media = mean(number5, na.rm = TRUE),
            num_desv_estandar = sd(number5, na.rm = TRUE),
            num_varianza = var(number5, na.rm = TRUE),
            num_mediana = median(number5, na.rm = TRUE),
            num_percentil25 = quantile(number5, 0.25, na.rm = TRUE),
            num_percentil50 = quantile(number5, 0.5, na.rm = TRUE),
            num_percentil75 = quantile(number5, 0.75, na.rm = TRUE),
            num_rangoIC = num_percentil75 - num_percentil25) %>% 
  View()

# Estadistica descriptiva variable superbal
dtf_resultadosB %>% 
  summarise(num_minimo = min(superbal, na.rm = TRUE),
            num_maximo = max(superbal, na.rm = TRUE),
            num_media = mean(superbal, na.rm = TRUE),
            num_desv_estandar = sd(superbal, na.rm = TRUE),
            num_varianza = var(superbal, na.rm = TRUE),
            num_mediana = median(superbal, na.rm = TRUE),
            num_percentil25 = quantile(superbal, 0.25, na.rm = TRUE),
            num_percentil50 = quantile(superbal, 0.5, na.rm = TRUE),
            num_percentil75 = quantile(superbal, 0.75, na.rm = TRUE),
            num_rangoIC = num_percentil75 - num_percentil25) %>% 
  View()

# ejemplo de correlacion
cor(x=dtf_resultadosB$number1, y=dtf_resultadosB$number2)
cor(x=dtf_resultadosB$number1, y=dtf_resultadosB$number2, method = "pearson")
cor(x=dtf_resultadosB$number1, y=dtf_resultadosB$number2, method = "kendal")
cor(x=dtf_resultadosB$number1, y=dtf_resultadosB$number2, method = "spearman")



