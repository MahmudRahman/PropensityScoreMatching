library("MatchIt")
library("optmatch")
mydata<-read.csv("C:/Users/LENOVO/Desktop/PSM/loc.csv")
attach(mydata)
m.out=matchit(IS_BUS~SEAT+IS_HARBOR+Q_AUTO+Q_NON_AUTO+STOP_LOCATION,data=mydata,method = "nearest",ratio=1,distance = "logit")
summary(m.out)


plot(m.out,type="jitter")
#plot(m.out,type="hist")
#m.data<-match.data(m.out)
#write.csv(m.data,file = "C:/Users/LENOVO/Desktop/PSM/Result_changeharbor.csv")

#ps.model<-glm(IS_BUS~SEAT+IS_HARBOR+Q_AUTO+Q_NON_AUTO+STOP_LOCATION,data = 
#                mydata,family = binomial(link = "logit"),na.action=na.pass
#              )
#
#summary(ps.model)

#mlogit.data<-as.data.frame(ps.model)
#write.csv(mlogit.data,file = "C:/Users/LENOVO/Desktop/PSM/logit_coef_1hr.csv")
#plot(ps.model)