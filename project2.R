library(rvest)
library(dplyr)
library(robotstxt)
library(stringr)
url <-"https://www.forbes.com/lists/india-billionaires/?sh=7e2596fc109b"
#path = paths_allowed(link)
web <-read_html(url)
rank <-web%>%html_nodes(".rank")%>%html_text()
View(rank)
name<-web%>%html_nodes(".name")%>%html_text()
View(name)
industry<-web%>%html_nodes(".industry")%>%html_text()
View(industry)

#creating data frame
billionarie = data.frame(rank, name,industry)
View(billionarie)
write.csv(billionarie,"forbes_billionarie.csv")
str(billionarie)