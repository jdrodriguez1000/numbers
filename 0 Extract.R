# Activacion de librerias
library(readr)
library(dplyr)

# ruta y carga del archivo Resultados B
ruta_arch1 <- file.choose()
resultadosB <- read_csv(ruta_arch1)

glimpse(resultadosB)

resultadosB %>% 
  mutate(fechaInicial = as.Date(FECHA, origin = "1899-12-30"))%>% 
           View()
         

         
