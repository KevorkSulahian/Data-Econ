library(readxl)
library(tidyverse)
library(plotly)
tourism <- read_excel("Armenia Debt.xlsx", 
                           sheet = "Tourism")

Armenia <- tourism[tourism$ID %in% 1,]
Azerbijan <- tourism[tourism$ID %in% 2,]
Georgia <- tourism[tourism$ID %in% 3,]

Armenia <- Armenia %>% arrange(desc(Year))
Azerbijan <- Azerbijan %>% arrange(desc(Year))
Georgia <- Georgia %>% arrange(desc(Year))

data <- data.frame(Armenia$Year, Armenia$Y, Azerbijan$Y, Georgia$Y)

fig <- plot_ly(data, x = ~Armenia.Year, y = ~Armenia.Y, name = 'Armenia ', type = 'scatter', mode = 'lines',
               line = list(color = 'green', width = 4,dash = 'dash')) 
fig <- fig %>% add_trace(y = ~Azerbijan.Y, name = 'Azerbijan', line = list(color = 'red', width = 4, dash = 'dash')) 
fig <- fig %>% add_trace(y = ~Georgia.Y, name = 'Georgia', line = list(color = 'blue', width = 4, dash = 'dash')) 
fig <- fig %>% layout(title = "Tourism Number",
                      xaxis = list(title = "Year"),
                      yaxis = list (title = "Tourism"))

fig
