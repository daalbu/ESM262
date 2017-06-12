# ESM 262 - Informatics
# Assignment 5: a Shiny web application. 
# Dannique Aalbu 
# June 10, 2017

# install needed packages
library(shiny)
library(raster)
library(rgdal)
library(tidyverse)
library(leaflet)
library(maps)

#working with the gazatteer data
setwd("C:/Users/dannique/Dropbox/Informatics")
CA <- read.delim("CA.csv",sep="|")


#######################SHINY###############
# Define UI for application that draws a histogram
ui <- fluidPage(leafletOutput("Dams"))

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  #subset of CA to include latitudes and longitudes of dam locations
  dams_subset <- CA %>%
    #filter(county == "Santa Barbara") %>%
    filter(class == "Dam") %>%
    select(lon,lat) 
  
  #spatial reference to dams
  Dams_in_CA <- SpatialPointsDataFrame(dams_subset,dams_subset,proj4string = crs("+proj=longlat +ellps=GRS80 +datum=NAD83 +no_defs"))
  
  output$Dams <- renderLeaflet({
    leaflet() %>%
      addTiles() %>%  # Add default tiles
      addMarkers(Dams_in_CA$lon,Dams_in_CA$lat, popup="Dam location")
      Map_markers  # Print the map  
  })
}
# Run the application 
shinyApp(ui = ui, server = server)

