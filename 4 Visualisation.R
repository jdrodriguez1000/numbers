# Activacion de librerias
library(ggplot2)
library(lubridate)
library(dplyr)


ggplot(dtf_resultadosB) +
  geom_bar(aes(number1), color = "blue", fill = "red") +
  theme_bw() 

ggplot(dtf_resultadosB) +
  geom_count(aes(number1, number2))

dtf_resultadosB %>% 
  filter(number3 == 7 & diasem == "Wed") 
  ggplot(dtf_resultadosB) +
  geom_count(aes(number3, number4))
  
ggplot(dtf_resultadosB) +
  geom_point(aes(number1, number2))

ggplot(dtf_resultadosB) +
  geom_boxplot(aes(number1, number2))