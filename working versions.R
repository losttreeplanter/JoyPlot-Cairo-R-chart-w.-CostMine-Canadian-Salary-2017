
library(ggplot2)
library(ggjoy)
library(readr)
library(cairo)

X2017salarytwo3 <- read_csv("C:/Users/mmccrae/Downloads/2017 Canadian Mine Salaries, Wages and Benefits Report to joy plot  - Data for R.csv")




X2017salarytwo3$position <- factor(X2017salarytwo3$position, levels = c("General Manager", "Mine Manager", "Mine Superintendent", "Mill Superintendent", "Mech/El Superintendent", "Mine Foreman", "Mill Foreman", "Chief Engineer", "Mine Engineer", "Senior Geologist", "Mine Geologist", "Metallurgist", "Chemist", "Environmental Coordinator", "Environmental Technician", "Safety/Health", "Engineering Technician", "Surveyor", "Personnel Manager", "Accountant", "Accounting Clerk", "Administrative Assistant", "Secretary", "Purchasing Agent", "Warehouse Clerk", "Expeditor", "Buyer"))

X2017salarytwo3$position <- factor(X2017salarytwo3$position, levels = rev(levels(X2017salarytwo3$position)))

CairoPNG('working101.png', width = 800, height = 700)

ggplot(X2017salarytwo3, aes(x = pay, y = positionwavg)) +
  geom_joy(scale = 2) + theme_minimal() +
  scale_fill_cyclical(values = c("#3030D0", "#9090F0"))+
  scale_y_discrete(name=NULL, expand = c(0.03, 0)) +   # will generally have to set the `expand` option
  scale_x_continuous(name="Pay", limits=c(0, 350000), expand = c(0, 0), labels=scales::dollar)    # for both axes to remove unneeded padding
dev.off()


############## WORKING WITH COLOUR


library(ggplot2)
library(ggjoy)
library(readr)
library(cairo)


X2017salarytwo3 <- read_csv("C:/Users/mmccrae/Downloads/2017 Canadian Mine Salaries, Wages and Benefits Report to joy plot  - Data for R.csv")



CairoPNG('working101.png', width = 800, height = 700)

ggplot(X2017salarytwo3, aes(x = pay, y = reorder(positionwavg, pay))) +
  geom_joy2(col = "black", fill = "lightblue", scale = 2.4) + 
  theme_minimal() +
  scale_y_discrete(name=NULL, expand = c(0.03, 0)) +   # will generally have to set the `expand` option
  scale_x_continuous(name="Pay", limits=c(0, 350000), expand = c(0, 0), labels=scales::dollar)    # for both axes to remove unneeded padding
dev.off()

############## trying to alternate colour COULDN'T GET TO WORK


library(ggplot2)
library(ggjoy)
library(readr)
library(cairo)


X2017salarytwo3 <- read_csv("C:/Users/mmccrae/Downloads/2017 Canadian Mine Salaries, Wages and Benefits Report to joy plot  - Data for R.csv")



#CairoPNG('working101.png', width = 800, height = 700)

ggplot(X2017salarytwo3, aes(x = pay, y = reorder(positionwavg, pay))) +
  geom_joy2 (scale = 2.4) + 
  theme_minimal() +
  scale_fill_manual(values=rep(c('gray', 'lightblue'), length(unique(X2017salarytwo3$order))/2)) +
  scale_y_discrete(name=NULL, expand = c(0.03, 0)) +   # will generally have to set the `expand` option
  scale_x_continuous(name="Pay", limits=c(0, 350000), expand = c(0, 0), labels=scales::dollar)    # for both axes to remove unneeded padding
#dev.off()

WD



