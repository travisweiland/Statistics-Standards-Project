library(tidyverse)
library(dbplyr)
library(ggplot2)

#Figure 2
Total_LEs<- c(43, 31, 29, 45, 45, 28, 28, 28, 28, 28, 30, 28, 28, 28, 27, 28, 28, 47, 28, 28, 28, 29, 28, 15, 28, 42, 28, 29,  28, 28, 28, 28, 28, 27, 28, 35, 31, 28, 28, 28, 45, 29, 29, 38, 28, 28, 35, 28, 28, 32, 28, 33, 43, 31, 29, 45, 28, 28, 30, 27, 28, 47, 28, 28, 29, 15, 28, 42, 28, 29, 28, 27, 28, 35, 31, 28, 45, 29, 29, 38, 35, 32, 33) 
Weighting<- gl(n = 2, k = 52, length = 83, labels = c("All States", "States Not CCSSM Verbatim"))
OTL_Fig2<- data.frame(Total_LEs, Weighting)

OTL_Fig2

ggplot(data=OTL_Fig2)+geom_boxplot(mapping=aes(x=Total_LEs, y=Weighting))+ labs(y="", x = "Total LEs by State")+scale_x_continuous(breaks=seq(0,60,5))+theme_classic()

#Figure 4
counts <- c(53, 48, 1, 215, 173, 121, 514, 516, 247, 140, 385, 219)
Level <- gl(n = 3, k = 1, length = 12, labels = c("Level A", "Level B", "Level C"))
InvestigativeElements <- gl(n = 4, k = 3, length = 12, labels = c("Statistical Question", "Collect/Consider Data", "Analyze Data", "Interpret Data"))

Figure4_data <- data.frame(counts, Level, InvestigativeElements)

Figure4_data

ggplot(data = Figure4_data, aes(x = InvestigativeElements, y = counts, fill = Level)) + 
  geom_bar(stat = "identity") + 
  labs(x = "\n Statistical Investigative Process Element", y = "Counts \n",
       fill = "GAISE Level") +
  theme(plot.title = element_text(hjust = 0.5),
        axis.title.x = element_text(face="bold", colour="black", size = 12),
        axis.title.y = element_text(face="bold", colour="black", size = 12),
        legend.position = "bottom")



