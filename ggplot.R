#���J�ɮ�
lungcapdata<-read.table(file.choose(),header = T,sep = ",")
attach(lungcapdata)
names(lungcapdata)

#�нT�{�ɮץ��T���J=====
#================================
#ggplot ø��
install.packages('ggplot2',dep=T) #�w�� ~ 
library(ggplot2)
library(gcookbook)

#�Ϫ�===============
#geom
#boxplot
#histogram �����
#density �K�׹�
#bar
#===================

ggplot(lungcapdata,aes(x=Age,y=Gender),fill=LungCap)+
  +   geom_bar(stat = "identity",position = "dodge")

#postition5�ӰѼ�:
#dodge
#fill
#identity
#jitter
#stack
#===========================================================

#makeing a bar graph of count

#��age���� y���Uage�`�M
#geom()�ٲ� stat= bin
ggplot(lungcapdata,aes(x=Age))+geom_bar() 
#============================================================

#using colors in bar graph

data_f_ten<-subset(lungcapdata,rank(LungCap)<15) #lungcap��ƱƧǫe15��
ggplot(data_f_ten,aes(x=Age))+geom_bar()

#�ƧǡB�˦��B���Z 

ggplot(data_f_ten,aes(x=reorder(Age,Height),y=Height,fill=Gender))+
  geom_bar(stat = "identity",width = 0.6,position=position_dodge(0.7))+ #���Z �˦�
  geom_text(aes(label=Height),vjust=0.2,color="black",position = position_dodge(0.7),size=5)+  #text label color ���Z
  ylim(0,max(Height)*1.05)# y�b���Z

