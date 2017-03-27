
#step1.
#安裝package
install.packages(c("grDevices","vcd","grid"))

#step2
#read in the file

#載入 CSV檔案
Taiwan_farmdata<-read.csv("~/R/Data-R/Taiwan_farmdata.csv")#要打路徑
data1<-read.csv(file.choose(),header = TRUE)           #選擇路徑 建議使用
data2<-read.table(file.choose(),header = TRUE,sep=",")
#===============================================================
#載入 .txt 檔案
data3<-read.delim(file.choose(),header = TRUE)
data4<-read.table(file.choose(),header = TRUE,sep = "\t")
#===============================================================
#長條圖
barplot(count)
barplot(percent,main = "男女比例",xlab="性別",ylab="%",las=1)
barplot(percent,main = "Title",ylab="Gender",xlab="%",las=1,names.arg=c("Female","Male"),horiz = TRUE)

#圓餅圖
pie(count)
pie(count,main = "Title Here")
box()

#boxplot
boxplot(LungCap) # numeric
quantile(LungCap,probs = c(0,0.25,0.5,0.75,1)) #四分量圖

#cut :: 用法 
http://www.inside-r.org/r-doc/base/cut
cut(Age,breaks=c(0,13,15,17,25),labels = c("<13","14/15","16/17","18+"))

#一般長條圖範例==========================================================
barplot(all_percent,main = "整份資料男女比例 、抽菸比例",xlab="test",ylab="percent",las=1,ylim =c(0,1),beside = T,col = c("darkblue","red"),names.arg = c("Female","Male","Non-smoke","smoke"))

