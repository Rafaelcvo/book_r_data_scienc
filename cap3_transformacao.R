library(tidyr)
library(nycflights13)
library(dplyr)

View(flights)

# filtando os dados
filter(flights, month == 1, day == 2)

# Salvando o mes de janeiro
(jan <- filter(flights, month == 1))

# Todos os voos de novembro e dezembro
(filter(flights, month == 11 | month == 12))
(filter(flights, month %in% c(11,12)))

# Encontrando voos que nao estao atrasados a mais de 2 horas.
(filter(flights, !(arr_delay > 120 | dep_delay > 120)))

# Valores NA
df <- tibble(x = c(1,NA,3))
filter(df, x > 1)
filter(df, is.na(x) | x > 1)

# Usando o select.
select(flights, year,day)
select(flights, year:day)
select(flights, -(year:day))
select(flights, contains("ba"))

# Renomeando as variaveis
rename(flights, dia = day)
select(flights, dia = day)

# Movendo as vairaveis para o começo.
select(flights, time_hour, everything())















