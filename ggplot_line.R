library(ggplot2)

Fdata<-read.csv(file.choose(),header = T,sep = ",")

ggplot(Fdata,aes(x=Mname,y=Trading/1e+05,fill=Mname))+
  geom_bar(stat = "identity",position = "identity",width = 0.7,size=10)

#correlations 相關係數 

#Pearson's 兩變數為連續型且為比例尺度
#Spearman's rank 兩變數變數為順序尺度
#Kendall's rank 等級相關係數

cor(Age,LungCap) #default =Pearson's
cor(Age,LungCap,method ="spearman")
cor(Age,LungCap,method ="kendall")


# 約=1	完全相關 (Perfect correlated)
#0.7~0.99	高度相關 (Highly correlated)
#0.4~0.69	中度相關 (Moderately correlated)
#0.1~0.39	低度相關 (Modestly correlated)
#0.01~0.09	接近無相關 (Weakly correlated)
#約=0	無相關
#=========================================

#ggplot point plot
ggplot(lungcapdata,aes(x=Age,y=LungCap))+geom_point(aes(alpha=1/10),size=4)


