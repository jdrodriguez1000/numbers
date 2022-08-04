# Archivo de carga del set de datos

# Activacion librerias
library(readr)
library(dplyr)
library(ggplot2)
library(lubridate)

# Ruta y carga del set de datos origininal
ruta_arch2 <- file.choose()
set_datos_original <- read_csv(ruta_arch2)