#Inspire a Better Tomorrow
set.seed(11)

#Packages
library(tidyverse)    #Gravy
library(fmsb)

# Data Source:
# http://www.cfbstats.com/2018/team/513/index.html
# http://www.cfbstats.com/2018/team/367/index.html


DataFrame <- as.data.frame(matrix(nrow = 2 , ncol = 8))
colnames(DataFrame) <- c("Avg PF" , 
                    "Avg PA" , 
                    "Avg 1st Downs" , 
                    "Total Rushing TD" , 
                    "Total Passing TD" ,
                    "Field Goal Pct",
                    "Avg Yards per Play",
                    "Redzone Score Pct")
rownames(DataFrame) <- c("NotreDame","Louisville")


DataFrame[1,] = c(31.4, # Avg PF
                                  18.2, #Avg PA
                                  304/13, #Avg 1st downs
                                  27, # Total Rushing TD
                                  23, # Total passing TD
                                  81.8/2,  #Field Goal Pct
                                  6.0, #Avg Yards per play
                                  86.54/2) #Red zone score pct
DataFrame[2,] = c(19.8, # Avg PF
                                   44.1, # Avg PA
                                   225/12, # Avg 1st downs
                                   18, # Total Rushing TD
                                   10, # Total passing TD
                                   83.3/2, #Field Goal Pct
                                   5.31, #Avg Yards per play
                                   80.56/2 #Red zone score pct
                                   )

DataFrame <- rbind(rep(50,5) , rep(0,10) , DataFrame)

# Color vector
SchoolColors =c("Navy","Red")



radarchart(DataFrame,
           pcol = SchoolColors,
           cglcol = "grey",
           cglwd = 0.8,
           cglty = 1)

legend(x=0.9, y=1.3, legend = rownames(DataFrame[-c(1,2),]), col = SchoolColors, bty = "n", pch=20 , text.col = "grey", cex=1.2, pt.cex=3)
