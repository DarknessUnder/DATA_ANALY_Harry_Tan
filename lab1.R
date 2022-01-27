
EPI <- read.csv(file.choose(), header=TRUE)

names(EPI) <- as.matrix(EPI[1, ])
EPI <- EPI[-1, ]

summary(EPI)

attach(EPI) 

EPIshort <- as.numeric(as.character(EPI$EPI)) 
EPIshort

summary(EPIshort)
fivenum(EPIshort,na.rm=TRUE)
stem(EPIshort)
hist(EPIshort)
hist(EPIshort, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPIshort,na.rm=TRUE,bw=1.)) 
rug(EPIshort) 

plot(ecdf(EPIshort), do.points=FALSE, verticals=TRUE) 
par(pty="s")

qqnorm(EPIshort)
qqline(EPIshort)

x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)
######


EPIWater <- as.numeric(as.character(EPI$EPI)) 
EPIWater

summary(EPIWater)
fivenum(EPIWater,na.rm=TRUE)
stem(EPIWater)
hist(EPIWater)
hist(EPIWater, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPIWater,na.rm=TRUE,bw=1.)) 
rug(EPIWater) 

plot(ecdf(EPIWater), do.points=FALSE, verticals=TRUE) 
par(pty="s")

qqnorm(EPIWater)
qqline(EPIWater)

x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)

#####


EPI$Landlock
EPILand<-EPI[EPI$Landlock == 1,]
EPILand
EPIOcean<-EPI[EPI$Landlock == 0,]
hist(EPILand)
