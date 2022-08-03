# Activacion de librerias
library(ggplot2)
library(lubridate)
library(dplyr)

# Numero de veces que se repite un numero
dtf_resultadosB %>% 
  filter(number1== 30 | number2 == 30 | number3 == 30 | number4 == 30 | number5 == 30) %>% 
  summarise(n =n()) %>% 
  View()


# Numero 1 que se repite mas los miercoles
dtf_resultadosB %>% 
  filter(diasem == "Wed") %>% 
  group_by(number1) %>% 
  summarise(total = sum(!is.na(number1))) %>% 
  arrange(desc(total)) %>% 
  View()


# Numero 1 que se repite mas los sabados
dtf_resultadosB %>% 
  filter(diasem == "Sat") %>% 
  group_by(number1) %>% 
  summarise(total = sum(!is.na(number1))) %>% 
  arrange(desc(total)) %>% 
  View()


# Numero 2 que se repite mas los miercoles
dtf_resultadosB %>% 
  filter(diasem == "Wed") %>% 
  group_by(number2) %>% 
  summarise(total = sum(!is.na(number2))) %>% 
  arrange(desc(total)) %>% 
  View()

# Numero 2 que se repite mas los sabados
dtf_resultadosB %>% 
  filter(diasem == "Sat") %>% 
  group_by(number2) %>% 
  summarise(total = sum(!is.na(number2))) %>%  
  arrange(desc(total)) %>% 
  View()

# Numero 3 que se repite mas los miercoles
dtf_resultadosB %>% 
  filter(diasem == "Wed") %>% 
  group_by(number3) %>% 
  summarise(total = sum(!is.na(number3))) %>% 
  arrange(desc(total)) %>% 
  View()

# Numero 3 que se repite mas los sabados
dtf_resultadosB %>% 
  filter(diasem == "Sat") %>% 
  group_by(number3) %>% 
  summarise(total = sum(!is.na(number3))) %>% 
  arrange(desc(total)) %>% 
  View()

# Numero 4 que se repite mas los miercoles
dtf_resultadosB %>% 
  filter(diasem == "Wed") %>% 
  group_by(number4) %>% 
  summarise(total = sum(!is.na(number4))) %>% 
  arrange(desc(total)) %>% 
  View()

# Numero 4 que se repite mas los sabados
dtf_resultadosB %>% 
  filter(diasem == "Sat") %>% 
  group_by(number4) %>% 
  summarise(total = sum(!is.na(number4))) %>% 
  arrange(desc(total)) %>% 
  View()

# Numero 5 que se repite mas los miercoles
dtf_resultadosB %>% 
  filter(diasem == "Wed") %>% 
  group_by(number5) %>% 
  summarise(total = sum(!is.na(number5))) %>% 
  arrange(desc(total)) %>% 
  View()

# Numero 5 que se repite mas los sabados
dtf_resultadosB %>% 
  filter(diasem == "Sat") %>% 
  group_by(number5) %>% 
  summarise(total = sum(!is.na(number5))) %>% 
  arrange(desc(total)) %>% 
  View()

# Numero 6 que se repite mas los miercoles
dtf_resultadosB %>% 
  filter(diasem == "Wed") %>% 
  group_by(superbal) %>% 
  summarise(total = sum(!is.na(superbal))) %>% 
  arrange(desc(total)) %>% 
  View()

# Numero 6 que se repite mas los sabados
dtf_resultadosB %>% 
  filter(diasem == "Sat") %>% 
  group_by(superbal) %>% 
  summarise(total = sum(!is.na(superbal))) %>% 
  arrange(desc(total)) %>% 
  View()

# Ultimo resultado miercoles
dtf_resultadosB %>% 
  filter(diasem == "Wed") %>% 
  arrange(desc(fecha)) %>% 
  head(1) %>% 
  View()
  
# Ultimo resultado sabado
dtf_resultadosB %>% 
  filter(diasem == "Sat") %>% 
  arrange(desc(fecha)) %>% 
  head(1) %>% 
  View()  
  


