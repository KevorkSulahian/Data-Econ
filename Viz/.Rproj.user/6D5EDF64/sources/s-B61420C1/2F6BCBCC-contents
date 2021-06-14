library(readxl)
library(plotly)
data <- read_excel("Armenia Debt.xlsx", 
                           col_names = FALSE)

Armenia <- data[c(3:26),]
Azerbijan <- data[c(30:54),]
Georgia <- data[c(58:77),]

Armenia <- Armenia[c(1:15),]
Azerbijan <- Azerbijan[c(1:15),]
Georgia <- Georgia[c(1:15),]

year <- Armenia$...1
armenia_debt <- Armenia$...2
azerbijan_debt <- Azerbijan$...2
georgia_debt <- Georgia$...2

data_value <- data.frame(year,armenia_debt,azerbijan_debt,georgia_debt)
data_value <- lapply(data_value, as.numeric)
data_value <- as.data.frame(data_value)


fig <- plot_ly(data_value, x = ~year, y = ~armenia_debt, name = 'Armenia ', type = 'scatter', mode = 'lines',
               line = list(color = 'green', width = 4,dash = 'dash')) 
fig <- fig %>% add_trace(y = ~azerbijan_debt, name = 'Azerbijan', line = list(color = 'red', width = 4, dash = 'dash')) 
fig <- fig %>% add_trace(y = ~georgia_debt, name = 'Georgia', line = list(color = 'blue', width = 4, dash = 'dash')) 
fig <- fig %>% layout(title = "Debt Number",
                      xaxis = list(title = "Year"),
                      yaxis = list (title = "Debt"))

fig


## Debt % GDP

armenia_debt_gdp <- Armenia$...3
azerbijan_debt_gdp <- Azerbijan$...3
georgia_debt_gdp <- Georgia$...3

data_value_gdp <- data.frame(year,armenia_debt_gdp,azerbijan_debt_gdp,georgia_debt_gdp)
data_value_gdp <- lapply(data_value_gdp, as.numeric)
data_value_gdp <- lapply(data_value_gdp, round,2)
data_value_gdp <- as.data.frame(data_value_gdp)


fig <- plot_ly(data_value_gdp, x = ~year, y = ~armenia_debt_gdp, name = 'Armenia ', type = 'scatter', mode = 'lines',
               line = list(color = 'green', width = 4,dash = 'dash')) 
fig <- fig %>% add_trace(y = ~azerbijan_debt_gdp, name = 'Azerbijan', line = list(color = 'red', width = 4, dash = 'dash')) 
fig <- fig %>% add_trace(y = ~georgia_debt_gdp, name = 'Georgia', line = list(color = 'blue', width = 4, dash = 'dash')) 
fig <- fig %>% layout(title = "Debt % GDP",
                      xaxis = list(title = "Year"),
                      yaxis = list (title = "Percentage"))

fig

## Debt per captia

armenia_debt_capita <- Armenia$...4
azerbijan_debt_capita <- Azerbijan$...4
georgia_debt_capita <- Georgia$...4

data_value_capita <- data.frame(year,armenia_debt_capita,azerbijan_debt_capita,georgia_debt_capita)
data_value_capita <- lapply(data_value_capita, as.numeric)
data_value_capita <- as.data.frame(data_value_capita)


fig <- plot_ly(data_value_capita, x = ~year, y = ~armenia_debt_capita, name = 'Armenia ', type = 'scatter', mode = 'lines',
               line = list(color = 'green', width = 4,dash = 'dash')) 
fig <- fig %>% add_trace(y = ~azerbijan_debt_capita, name = 'Azerbijan', line = list(color = 'red', width = 4, dash = 'dash')) 
fig <- fig %>% add_trace(y = ~georgia_debt_capita, name = 'Georgia', line = list(color = 'blue', width = 4, dash = 'dash')) 
fig <- fig %>% layout(title = "Debt Per Capita",
                      xaxis = list(title = "Year"),
                      yaxis = list (title = "Debt"))

fig
