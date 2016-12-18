#Q7(a)
bikes <- read.csv('bikes.csv')
# - temp : Normalized temperature in Celsius. 
# The values are derived via (t-t_min)/(t_max-t_min), t_min=-8, t_max=+39 (only in hourly scale)

#- atemp: Normalized feeling temperature in Celsius. 
# The values are derived via (t-t_min)/(t_max-t_min), t_min=-16, t_max=+50 (only in hourly scale)
unNorm <- function(n,flag){
  if(flag==1){
    min=-8
    max=39
  }
  if(flag==2){
    min=-16
    max=50
  }
  c <- n*(max-min)+min
  return(c)
}
bikes$temp <- sapply(bikes$temp,unNorm,flag=1)
bikes$atemp <- sapply(bikes$atemp,unNorm,flag=2)
#Q7(b)
bikes$hum <- bikes$hum*100
#Q7(c)
bikes$windspeed <- bikes$windspeed*67
#Q7(d)
model1 <- lm(cnt~yr+temp+hum+season,data=bikes)
bikes$season <- as.factor(bikes$season)
model2 <- lm(cnt~yr+temp+hum+season,data=bikes)
# The regression models use categorical variables 
# differently than numeric variables. Thus changing
# season to categorical changes the intercepts of the 
# model
#Q7(e)
# When the season is changed to categorical variable
# the model treats the each season seperately and 
# finds the intercepts for each season instead of 
# just one intercept for the season column.
#Q7(f)
ggplot(data=bikes,aes(x=season,y=cnt,color=season)) + geom_boxplot()+geom_jitter()
#Q7(g)
count <- sapply(1:12,function(x) sum(bikes[bikes$mnth==x,'cnt']))
count <- data.frame(count = count,mnth = 1:12)
ggplot(data=count,aes(x=mnth,y=count,color=mnth))+geom_point()
# Bikeshare count increase and stays more or less 
# the same mid year and the by the end of the year 
# it decreases. No a linear model would not fit this
# well as change in bikeshare count is not linear.