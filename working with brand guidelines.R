#### not working JoyPlot with brand guidelines ######



library(ggplot2)
library(ggjoy)
library(readr)
library(cairo)
library(extrafont)



font_import(paths = NULL, recursive = TRUE, prompt = TRUE,pattern = "Trebuchet MS")





X2017salarytwo3 <- read_csv("C:/Users/mmccrae/Downloads/2017 Canadian Mine Salaries, Wages and Benefits Report to joy plot  - Data for R.csv")



#CairoPNG('working101.png', width = 800, height = 700)

ggplot(X2017salarytwo3, aes(x = pay, y = reorder(positionwavg, pay))) +
  geom_joy2(col = "black", fill = "lightblue", scale = 2.4) + 
  theme_minimal () +
  theme(text=element_text(family="Trebuchet MS")) +
  scale_y_discrete(name=NULL, expand = c(0.03, 0)) +   # will generally have to set the `expand` option
  scale_x_continuous(name="Pay", limits=c(0, 350000), expand = c(0, 0), labels=scales::dollar)    # for both axes to remove unneeded padding
#dev.off()


