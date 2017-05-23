

##################Assignment 4


#function that takes two fish tables as inputs 
#example function
Fishies = function(fishPrice,fishCatch) { 
  
  #user inputs for price table 
  salmon.price <- readline(prompt="Please enter the price for salmon (in dollars): ")
  halibut.price <- readline(prompt="Please enter the price for halibut (in dollars): ")
  shark.price <- readline(prompt="Please enter the price for shark (in dollars): ")
  tuna.price <- readline(prompt="Please enter the price for tuna (in dollars): ")
  cod.price <- readline(prompt="Please enter the price for cod (in dollars): ")
  
  # make sure inputs are positive
  if (salmon.price < 0){
    salmon.price <- readline(prompt="Invalid price. Please enter the price for salmon (in dollars): "
    ,salmon.price)
  }
  if (halibut.price < 0){
    halibut.price <- readline(prompt="Invalid price. Please enter the price for halibut (in dollars): "
    ,halibut.price)
  }
  if (shark.price < 0){
    shark.price <- readline(prompt="Invalid price. Please enter the price for salmon (in dollars): "
    ,shark.price)
  }
  if (tuna.price < 0){
    tuna.price <- readline(prompt="Invalid price. Please enter the price for tuna (in dollars): "
    ,tuna.price)
  }
  if (cod.price < 0){
    cod.price <- readline(prompt="Invalid price. Please enter the price for cod (in dollars): "
    ,cod.price)
  }
  
  # convert characters into integers
  salmon.price <- as.integer(salmon.price)
  halibut.price <- as.integer(halibut.price)
  shark.price <- as.integer(shark.price)
  tuna.price <- as.integer(tuna.price)
  cod.price <- as.integer(cod.price)
  
  #price table
  price = c(salmon.price,halibut.price,shark.price,tuna.price,cod.price)
  fishPrice = data.frame(price=price)
  FishSpecies <- rownames(fishPrice) <- c("salmon","halibut","shark","tuna","cod")
  colnames(fishPrice) <- ("Price(in dollars)")
  View(fishPrice)
  
  #user inputs for catch table 
  sd.catch <- as.integer(strsplit(readline("Please enter the amount of each fish caught in San Diego 
  (in order of salmon, halibut, shark, tuna, cod) separated by commas (example: 3,4,8,6,5): "),",")[[1]])
  
  baja.catch <- as.integer(strsplit(readline("Please enter the amount of each fish caught in Baja 
  (in order of salmon, halibut, shark, tuna, cod) separated by commas (example: 3,4,8,6,5): "),",")[[1]])
  
  sb.catch <- as.integer(strsplit(readline("Please enter the amount of each fish caught in Santa Barbara
  (in order of salmon, halibut, shark, tuna, cod) separated by commas (example: 3,4,8,6,5): "),",")[[1]])
  
  sf.catch <- as.integer(strsplit(readline("Please enter the amount of each fish caught in San Francisco
  (in order of salmon, halibut, shark, tuna, cod) separated by commas (example: 3,4,8,6,5): "),",")[[1]])
  
  ########!!!!!!add error chekc for catch table inputs!!!!!
  ###if (salmon.price < 0){
  ##salmon.price <- readline(prompt="Invalid price. Please enter the price for salmon (in dollars): "
  ###,salmon.price)
  #}
  
  #catch table
  fishCatch = data.frame(cbind(sd.catch,baja.catch,sb.catch,sf.catch))
  colnames(fishCatch) <- c("San Diego","Baja","Santa Barbara","San Francisco")
  rownames(fishCatch) <- c("salmon","halibut","shark","tuna","cod")
  View(fishCatch)
  
  # make sure inputs are positive
  if (fishPrice < 0) return(NA)
  if (fishCatch < 0) return(NA)
  
  # calculate most frequently caught fish in each location
  maxCatchSD <- which.max(fishCatch$`San Diego`) #returns most frequently caught fish in San Diego
  #need to return the fish species associated with the catch not the catch value
  return("The most frequently caught fish in San Diego was: ")
  #return(maxCatchSD == FishSpecies)????
  
  maxCatchBaja <- which.max(fishCatch$`Baja`) #returns most frequently caught fish in Baja
  return("The most frequently caught fish in Baja was: ")
  return(maxCatchBaja)
  
  maxCatchSB <- which.max(fishCatch$`San Barbara`) #returns most frequently caught fish in San Barbara
  return("The most frequently caught fish in San Barbara was: ")
  return(maxCatchSB)
  
  maxCatchSF <- which.max(fishCatch$`San Francisco`) #returns most frequently caught fish in San Francisco
  return("The most frequently caught fish in San Francisco was: ")
  return(maxCatchSF)

  #calculate total revenue for each location
  totalRevenueSD <- sum(fishCatch$`San Diego`*fishPrice)
  return("The total revenue for San Diego is: ")
  return(totalRevenueSD)
  
  totalRevenueBaja <- sum(fishCatch$`Baja`*fishPrice)
  return("The total revenue for Baja is: ")
  return(totalRevenueBaja)
  
  totalRevenueSB <- sum(fishCatch$`San Barbara`*fishPrice)
  return("The total revenue for Santa Barbara is: ")
  return(totalRevenueSB)
  
  totalRevenueSF <- sum(fishCatch$`San Francisco`*fishPrice)
  return("The total revenue for San Francisco: ")
  return(totalRevenueSF)
  
  #store all revenues in a list
  
  #call list to get total fisheries revenue
  ###totalFisheriesRevenue <- sum(totalRevenueBaja )

  #user requested graph of revenvue by location
  } 

###
# Outputs are:
#1. most frequently caught fish in each location
#2. total revenue for each location 
#3. total fisheries sum 
#4. if user requests it graph revenue by location and add total to the plot 
# 
# Store your function in an *.R file 
# Generate some example data for your function; and show how this is created and used in an R markdown document 
# 
# Submit as usual as a git link on gauchospace
