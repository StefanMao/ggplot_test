library(ggplot2)

Fdata<-read.csv(file.choose(),header = T,sep = ",")

ggplot(Fdata,aes(x=Mname,y=Trading/1e+05,fill=Mname))+
  geom_bar(stat = "identity",position = "identity",width = 0.7,size=10)

#correlations �����Y�� 

#Pearson's ���ܼƬ��s�򫬥B����Ҥث�
#Spearman's rank ���ܼ��ܼƬ����Ǥث�
#Kendall's rank ���Ŭ����Y��

cor(Age,LungCap) #default =Pearson's
cor(Age,LungCap,method ="spearman")
cor(Age,LungCap,method ="kendall")


# ��=1	�������� (Perfect correlated)
#0.7~0.99	���׬��� (Highly correlated)
#0.4~0.69	���׬��� (Moderately correlated)
#0.1~0.39	�C�׬��� (Modestly correlated)
#0.01~0.09	����L���� (Weakly correlated)
#��=0	�L����
#=========================================

#ggplot point plot
ggplot(lungcapdata,aes(x=Age,y=LungCap))+geom_point(aes(alpha=1/10),size=4)

