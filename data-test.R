
#step1.
#�w��package
install.packages(c("grDevices","vcd","grid"))

#step2
#read in the file

#���J CSV�ɮ�
Taiwan_farmdata<-read.csv("~/R/Data-R/Taiwan_farmdata.csv")#�n�����|
data1<-read.csv(file.choose(),header = TRUE)           #��ܸ��| ��ĳ�ϥ�
data2<-read.table(file.choose(),header = TRUE,sep=",")
#===============================================================
#���J .txt �ɮ�
data3<-read.delim(file.choose(),header = TRUE)
data4<-read.table(file.choose(),header = TRUE,sep = "\t")
#===============================================================
#������
barplot(count)
barplot(percent,main = "�k�k���",xlab="�ʧO",ylab="%",las=1)
barplot(percent,main = "Title",ylab="Gender",xlab="%",las=1,names.arg=c("Female","Male"),horiz = TRUE)

#����
pie(count)
pie(count,main = "Title Here")
box()

#boxplot
boxplot(LungCap) # numeric
quantile(LungCap,probs = c(0,0.25,0.5,0.75,1)) #�|���q��

#cut :: �Ϊk 
http://www.inside-r.org/r-doc/base/cut
cut(Age,breaks=c(0,13,15,17,25),labels = c("<13","14/15","16/17","18+"))

#�@������Ͻd��==========================================================
barplot(all_percent,main = "�����ƨk�k��� �B��Ҥ��",xlab="test",ylab="percent",las=1,ylim =c(0,1),beside = T,col = c("darkblue","red"),names.arg = c("Female","Male","Non-smoke","smoke"))
