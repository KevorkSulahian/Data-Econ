library(readxl)
library(plotly)

data <- read_excel("Inflation World Bank.xlsx")

data = data[data$Year %in% c(2005:2020),]

Armenia_value = data[data$Country.Name %in% "Armenia",]
Armenia_value = Armenia_value$value

Azerbijan_value = data[data$Country.Name %in% "Azerbaijan",]
Azerbijan_value = Azerbijan_value$value

Georgia_value = data[data$Country.Name %in% "Georgia",]
Georgia_value = Georgia_value$value

year = unique(data$Year)

data_value <- data.frame(year, Armenia_value, Azerbijan_value, Georgia_value)
data_value <- lapply(data_value, as.numeric)
data_value <- as.data.frame(data_value)

fig <- plot_ly(data_value, x = ~year, y = ~Armenia_value, name = 'Armenia ', type = 'scatter', mode = 'lines',
               line = list(color = 'green', width = 4,dash = 'dash')) 
fig <- fig %>% add_trace(y = ~Azerbijan_value, name = 'Azerbijan', line = list(color = 'red', width = 4, dash = 'dash')) 
fig <- fig %>% add_trace(y = ~Georgia_value, name = 'Georgia', line = list(color = 'blue', width = 4, dash = 'dash')) 
# fig <- fig %>% add_trace(y = ~Iran, name = 'Iran', line = list(color = 'yellow', width = 4, dash = 'dot')) 
# fig <- fig %>% add_trace(y = ~Turkey, name = 'Turkey', line = list(color = 'purple', width = 4, dash = 'dot')) 
fig <- fig %>% layout(title = "Inflation Number",
                      xaxis = list(title = "Year"),
                      yaxis = list (title = "inflation"))

fig



Armenia_percent = data[data$Country.Name %in% "Armenia",]
Armenia_percent = Armenia_percent$`Inflation Percent`

Azerbijan_percent = data[data$Country.Name %in% "Azerbaijan",]
Azerbijan_percent = Azerbijan_percent$`Inflation Percent`

Georgia_percent = data[data$Country.Name %in% "Georgia",]
Georgia_percent = Georgia_percent$`Inflation Percent`

year = unique(data$Year)

data_value <- data.frame(year, Armenia_percent, Azerbijan_percent, Georgia_percent)
data_value <- lapply(data_value, as.numeric)
data_value <- as.data.frame(data_value)

fig <- plot_ly(data_value, x = ~year, y = ~Armenia_percent, name = 'Armenia ', type = 'scatter', mode = 'lines',
               line = list(color = 'green', width = 4,dash = 'dash')) 
fig <- fig %>% add_trace(y = ~Azerbijan_percent, name = 'Azerbijan', line = list(color = 'red', width = 4, dash = 'dash')) 
fig <- fig %>% add_trace(y = ~Georgia_percent, name = 'Georgia', line = list(color = 'blue', width = 4, dash = 'dash')) 
# fig <- fig %>% add_trace(y = ~Iran, name = 'Iran', line = list(color = 'yellow', width = 4, dash = 'dot')) 
# fig <- fig %>% add_trace(y = ~Turkey, name = 'Turkey', line = list(color = 'purple', width = 4, dash = 'dot')) 
fig <- fig %>% layout(title = "Inflation percentage",
                      xaxis = list(title = "Year"),
                      yaxis = list (title = "inflation"))

fig
