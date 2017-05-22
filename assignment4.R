

# ****Assignment 4

# Write a function that takes as input... 
# a table that has prices for different fish 

#user inputs for price table 
salmon.price <- readline(prompt="Enter price for salmon: ")
halibut.price <- readline(prompt="Enter price for halibut: ")
shark.price <- readline(prompt="Enter price for shark: ")
tuna.price <- readline(prompt="Enter price for tuna: ")
cod.price <- readline(prompt="Enter price for cod: ")
# convert character into integer
salmon.price <- as.integer(salmon.price)
halibut.price <- as.integer(halibut.price)
shark.price <- as.integer(shark.price)
tuna.price <- as.integer(tuna.price)
cod.price <- as.integer(cod.price)
#price table
price = c(salmon.price,halibut.price,shark.price,tuna.price,cod.price)
fishPrice = data.frame(price=price)
row.names(fishPrice) <- c("salmon","halibut","shark","tuna","cod")
View(fishPrice)


#user inputs for amount table 
sd.catch <- as.integer(strsplit(readline("Please enter the amouhnt of each fish caught in San Diego (in order of salmon, halibut, shark, tuna, cod) separated by a space: \n")," ")[[1]])

baja.catch <- as.integer(strsplit(readline("Please enter the amouhnt of each fish caught in Baja (in order of salmon, halibut, shark, tuna, cod) separated by a space: \n")," ")[[1]])

sb.catch <- as.integer(strsplit(readline("Please enter the amouhnt of each fish caught in Santa Barbara (in order of salmon, halibut, shark, tuna, cod) separated by a space: \n")," ")[[1]])

sf.catch <- as.integer(strsplit(readline("Please enter the amouhnt of each fish caught in San Francisco (in order of salmon, halibut, shark, tuna, cod) separated by a space: \n")," ")[[1]])


#location table
fishAmount = data.frame(cbind(sd.catch,baja.catch,sb.catch,sf.catch)
colnames(fishAmount) <- c("San Diego","Baja","Santa Barbara","San Francisco")
rownames(fishAmount) <- c("salmon","halibut","shark","tuna","cod")
View(fishAmount)


#example
Fishies = function(price, amount) { 
  
  # make sure inputs are positive
  if (price < 0) return(NA)
  if (amount < 0) return(NA)
  
  # calculate power
  p = rho * height * flow * g * Keff
  
  return(p)
} 


# Function output will be 
# * most frequently caught fish in each location 
# * total revenue for each location 
# * total fisheries sum 
# * if user requests it graph revenue by location and add total to the plot 
# 
# Store your function in an *.R file 
# 
# Generate some example data for your function; and show how this is created and used in an R markdown document 
# 
# Submit as usual as a git link on gauchospace
