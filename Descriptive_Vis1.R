##Home work
e_quakes<-datasets::quakes
#e_quake= read.csv('path/quakes.csv',header=TRUE, sep=",")
e_quakes<-datasets::quakes
####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)
######Columns
e_quakes[,c(1,2)]

df<-e_quakes[,-1]

summary(e_quakes[,1])

e_quakes$mag

summary(e_quakes$mag)

###########Summary of the data#########

summary(e_quakes)
summary(e_quakes$depth) 

#####################
plot(e_quakes$mag)
plot(e_quakes$mag,e_quakes$depth,type="p")
plot(e_quakes)
# points and lines 
plot(e_quakes$mag, type= "l") # p: points, l: lines,b: both
plot(e_quakes$mag, xlab = 'No. of Instances', 
     ylab = 'scale', main = 'Earth quake summary',
     col = 'blue')
# Horizontal bar plot
barplot(e_quakes$mag, main = 'Earth quake summary',
        ylab = 'scale', col= 'blue',horiz = F,axes=T)
#Histogram
hist(e_quakes$depth)
hist(e_quakes$depth, 
     main = 'Earth quake summary',
     xlab = 'depth', col='blue')

#Single box plot
boxplot(e_quakes$mag,main="Boxplot")
boxplot.stats(e_quakes$mag)$out
# Multiple box plots
boxplot(e_quakes[,1:5],main='Multiple')out
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(e_quakes$mag)
plot(e_quakes$mag, e_quakes$depth)
plot(e_quakes$mag, type= "l")
plot(e_quakes$mag, type= "l")
plot(e_quakes$mag, type= "l")
barplot(e_quakes$mag, main = 'Earth quake summary',
        xlab = 'magnitude in Richter Scale', col='green',horiz = TRUE)
hist(e_quakes$stations)
boxplot(e_quakes$stations)
boxplot(e_quakes[,0:5], main='Multiple Box plots')



sd(e_quakes$mag,na.rm = T)

#var
var(e_quakes$mag)
var(e_quakes$depth)
#skewness
skewness(e_quakes$mag)
skewness(e_quakes$depth)
#kurtosis
kurtosis(e_quakes$mag)
kurtosis(e_quakes$depth)









