#載入檔案
lungcapdata<-read.table(file.choose(),header = T,sep = ",")
attach(lungcapdata)
names(lungcapdata)

#請確認檔案正確載入=====
#================================
#ggplot 繪圖
install.packages('ggplot2',dep=T) #安裝 ~ 
library(ggplot2)
library(gcookbook)

#圖表===============
#geom
#boxplot
#histogram 直方圖
#density 密度圖
#bar
#===================

ggplot(lungcapdata,aes(x=Age,y=Gender),fill=LungCap)+
  +   geom_bar(stat = "identity",position = "dodge")

#postition5個參數:
#dodge
#fill
#identity
#jitter
#stack
#===========================================================

#makeing a bar graph of count

#用age分類 y為各age總和
#geom()省略 stat= bin
ggplot(lungcapdata,aes(x=Age))+geom_bar() 
#============================================================

#using colors in bar graph

data_f_ten<-subset(lungcapdata,rank(LungCap)<15) #lungcap資料排序前15筆
ggplot(data_f_ten,aes(x=Age))+geom_bar()

#排序、樣式、間距 

ggplot(data_f_ten,aes(x=reorder(Age,Height),y=Height,fill=Gender))+
  geom_bar(stat = "identity",width = 0.6,position=position_dodge(0.7))+ #間距 樣式
  geom_text(aes(label=Height),vjust=0.2,color="black",position = position_dodge(0.7),size=5)+  #text label color 間距
  ylim(0,max(Height)*1.05)# y軸間距


