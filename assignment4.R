

##################Assignment 4##################

#example prices
salmon.price <- 1
halibut.price <- 2
shark.price <- 3
tuna.price <- 4
cod.price <- 5

#example catch data
sd.catch <- c(3,4,5,6,7)
baja.catch <- c(3,9,5,6,7)
sb.catch <- c(4,5,8,7,2)
sf.catch <- c(8,4,5,6,7)

#function that takes two fish tables as inputs 
Fishies = function(fishPrice,fishCatch) { 
  
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
  
  #price table
  price = c(salmon.price,halibut.price,shark.price,tuna.price,cod.price)
  fishPrice = data.frame(price=price)
  FishSpecies <- rownames(fishPrice) <- c("salmon","halibut","shark","tuna","cod")
  colnames(fishPrice) <- ("Price($)")
  View(fishPrice)
  
  #catch table
  fishCatch = data.frame(cbind(sd.catch,baja.catch,sb.catch,sf.catch))
  colnames(fishCatch) <- c("San Diego","Baja","Santa Barbara","San Francisco")
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
  
  #store all location revenues in a list
  #Revenues <- list(SD=TotalRevenueSD,Baja=TotalRevenueBaja,SB=TotalRevenueSB,SF=TotalRevenueSF)
  
  #generate a total fishies sum
  FishMoney <- c(TotalRevenueSD,TotalRevenueBaja,TotalRevenueSB,TotalRevenueSF)
  FishMoney <- as.integer(FishMoney)
  FishMoney <- sum(FishMoney)
  print(paste0("The total revenue for all four locations is: $",FishMoney,"."))

  #user requested graph of revenvue by location
  #plot(aes(Revenues,))
} 

