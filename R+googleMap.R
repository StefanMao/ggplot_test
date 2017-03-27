install.packages("ggmap")   #¦w¸Ë
install.packages("mapproj")

library("ggmap")
library("mapproj")

map<-get_map(location = 'doulin,taiwan',
             zoom=18,
             source = 'google',
             maptype="terrain")

ggmap(map)

?get_map


