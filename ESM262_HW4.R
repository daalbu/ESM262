##ESM 262 HW 4: Functions and Loops
##Alex Tremblay and Danique Albu
##May 25th 2017
##################################
################################
#packages:
library(tidyr)
####################
#example prices
salmon.price <- 15
halibut.price <- 40
shark.price <- 100
tuna.price <- 200
cod.price <- 10

#example catch data
sd.catch <- c(30,40,5,60,70)
baja.catch <- c(35,90,6,65,78)
sb.catch <- c(42,54,8,73,28)
sf.catch <- c(81,40,5,63,77)

#function that takes two fish tables as inputs 
Fishies = function(fishPrice,fishCatch) { 

  #price table
  price = c(salmon.price,halibut.price,shark.price,tuna.price,cod.price)
  fishPrice = data.frame(price=price)
  FishSpecies <- rownames(fishPrice) <- c("salmon","halibut","shark","tuna","cod")
  colnames(fishPrice) <- ("Price($)")
  View(fishPrice)
  
  #catch table
  fishCatch = data.frame(cbind(sd.catch,baja.catch,sb.catch,sf.catch))
  locations <- c("San Diego","Baja","Santa Barbara","San Francisco")
  colnames(fishCatch) <-locations
  rownames(fishCatch) <- c("salmon","halibut","shark","tuna","cod")
  View(fishCatch)
  
  #calculate most frequently caught fish in each location
  #need to return the fish species associated with max catch in each locaiton
  MaxCatch <- rownames(fishCatch)[apply(fishCatch,2,which.max)]
  print("The most frequently caught fish in San Diego, Baja, Santa Barbara, & San Francisco are as follows: ")
  print(MaxCatch)
  
  #calculate total revenue for each location, starting with San Diego
  TotalRevenueSD <- sum(sd.catch*price)
  TotalRevenueSD <- as.character(TotalRevenueSD)
  print(paste0("The total revenue for San Diego is: $",TotalRevenueSD,"."))
  
  #total revenue for Baja
  TotalRevenueBaja <- sum(baja.catch*price)
  print(paste0("The total revenue for Baja is: $",TotalRevenueBaja,"."))
  
  #total revenue for Santa Barbara
  TotalRevenueSB <- sum(sb.catch*price)
  print(paste0("The total revenue for Santa Barbara is: $",TotalRevenueSB,"."))
  
  #total revenue for San Francisco
  TotalRevenueSF <- sum(sf.catch*price)
  print(paste0("The total revenue for San Francisco is: $",TotalRevenueSF,"."))
  
  #generate a total fishies sum
  FishRevenues <- as.integer(c(TotalRevenueSD,TotalRevenueBaja,TotalRevenueSB,TotalRevenueSF))
  FishMoney <- sum(FishRevenues)
  print(paste0("The total revenue for all four locations is: $",FishMoney,"."))
  
  #user requested graph of revenvue by location
  decision <- readline(prompt="Would you like to see a graph of total revenue by location(Y/N)?")
  
  if(decision == "Y"){
    Totals<-cbind(TotalRevenueSD,TotalRevenueBaja,TotalRevenueSB,TotalRevenueSF)
    colnames(Totals)<-c("San Diego","Baja","Santa Barbara","San Francisco")
    rownames(Totals)<-c("Revenue")
    barplot(Totals,
            col = "green3",
            width = 3,
            border = "black",
            ylab = "Revenue ($)",
            main = "Total Revenue by Fishing Location")
  }
} 
####################################################
###################################################



#user inputs for price table 
#salmon.price <- readline(prompt="Please enter the price for salmon (in dollars): ")
#halibut.price <- readline(prompt="Please enter the price for halibut (in dollars): ")
#shark.price <- readline(prompt="Please enter the price for shark (in dollars): ")
#tuna.price <- readline(prompt="Please enter the price for tuna (in dollars): ")
#cod.price <- readline(prompt="Please enter the price for cod (in dollars): ")

# make sure inputs are positive
# if (salmon.price < 0){
#   salmon.price <- readline(prompt="Invalid price. Please enter the price for salmon (in dollars): "
#                            ,salmon.price)
# }
# if (halibut.price < 0){
#   halibut.price <- readline(prompt="Invalid price. Please enter the price for halibut (in dollars): "
#                             ,halibut.price)
# }
# if (shark.price < 0){
#   shark.price <- readline(prompt="Invalid price. Please enter the price for salmon (in dollars): "
#                           ,shark.price)
# }
# if (tuna.price < 0){
#   tuna.price <- readline(prompt="Invalid price. Please enter the price for tuna (in dollars): "
#                          ,tuna.price)
# }
# if (cod.price < 0){
#   cod.price <- readline(prompt="Invalid price. Please enter the price for cod (in dollars): "
#                         ,cod.price)
# }

# convert characters into integers
# salmon.price <- as.integer(salmon.price)
# halibut.price <- as.integer(halibut.price)
# shark.price <- as.integer(shark.price)
# tuna.price <- as.integer(tuna.price)
# cod.price <- as.integer(cod.price)

#user inputs for catch table 
#sd.catch <- as.integer(strsplit(readline("Please enter the amount of each fish caught in San Diego 
#(in order of salmon, halibut, shark, tuna, cod) separated by commas (example: 3,4,8,6,5): "),",")[[1]])

#baja.catch <- as.integer(strsplit(readline("Please enter the amount of each fish caught in Baja 
#(in order of salmon, halibut, shark, tuna, cod) separated by commas (example: 3,4,8,6,5): "),",")[[1]])

#sb.catch <- as.integer(strsplit(readline("Please enter the amount of each fish caught in Santa Barbara
#(in order of salmon, halibut, shark, tuna, cod) separated by commas (example: 3,4,8,6,5): "),",")[[1]])

#sf.catch <- as.integer(strsplit(readline("Please enter the amount of each fish caught in San Francisco
#(in order of salmon, halibut, shark, tuna, cod) separated by commas (example: 3,4,8,6,5): "),",")[[1]])

########!!!!!!add error chekc for catch table inputs!!!!!
###if (salmon.price < 0){
##salmon.price <- readline(prompt="Invalid price. Please enter the price for salmon (in dollars): "
###,salmon.price)
#}
