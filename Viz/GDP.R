library(readxl)
library(plotly)

df <- read_excel("World Bank GDP.xlsx")

t_df <- t(df)

colnames(t_df) <- t_df[3,]
t_df <- t_df[-c(1:6),]
df <- as.data.frame(t_df)

Armenia = df$Armenia
Azerbijan = df$Azerbaijan
Georgia = df$Georgia
Iran = df$`Iran, Islamic Rep.`
Turkey = df$Turkey
year = rownames(df)

data <- data.frame(year, Armenia, Azerbijan, Georgia, Iran, Turkey)
data <- lapply(data, as.numeric)
data$year = round(data$year)
data <- as.data.frame(data)
data_2005 <- data[c(45:61),]

fig <- plot_ly(data_2005, x = ~year, y = ~Armenia, name = 'Armenia ', type = 'scatter', mode = 'lines',
               line = list(color = 'green', width = 4,dash = 'dash')) 
fig <- fig %>% add_trace(y = ~Azerbijan, name = 'Azerbijan', line = list(color = 'red', width = 4, dash = 'dash')) 
fig <- fig %>% add_trace(y = ~Georgia, name = 'Georgia', line = list(color = 'blue', width = 4, dash = 'dash')) 
# fig <- fig %>% add_trace(y = ~Iran, name = 'Iran', line = list(color = 'yellow', width = 4, dash = 'dot')) 
# fig <- fig %>% add_trace(y = ~Turkey, name = 'Turkey', line = list(color = 'purple', width = 4, dash = 'dot')) 
fig <- fig %>% layout(title = "GDP",
                      xaxis = list(title = "Year"),
                      yaxis = list (title = "GDP in Dollars"))

fig
