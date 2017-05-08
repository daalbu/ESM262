---
title: "Exploring RMarkdown using Climate Data"
author: "Dannique Aalbu"
date: "May 8, 2017"
output:
  pdf_document: default
  html_document: default
  ioslides_presentation: default
  beamer_presentation: default
  slidy_presentation: null
subtitle: Environmental Informatics
---



#Given a set of climate data for 1942 to 2016, we can explore a variety of trends. 

##Trend 1: Total Monthly Precipitation 

```r
climate <- read.table("clim.txt", header=TRUE)
clim.MonthlyRain <- aggregate(climate[,c("rain")], by = list(climate$month, climate$year), sum)
colnames(clim.MonthlyRain)=c("Month","Year","Rain")
par(mar=c(5,4,4,2))
boxplot(clim.MonthlyRain$Rain~clim.MonthlyRain$Month,
        ylab="Rain(inches)",
        xlab="Month", col="blue")
```

![](test_files/figure-latex/climate-1.pdf)<!-- --> 

##Trend 2: Average Monthly Temperature

```r
clim.tAve <- (climate$tmax + climate$tmin)/2
par(mar=c(5,4,4,2))
boxplot(clim.tAve~climate$month,
        ylab="Average Temperature(degrees Celcius)",
        xlab="Month", col="red")
```

![](test_files/figure-latex/climate2-1.pdf)<!-- --> 

##Trend 3: The Wettest Year on Record 

```r
clim.YearlyRain <- aggregate(climate[,c("rain")],by = list(climate$year), sum) 
colnames(clim.YearlyRain)=c("Year","Rain")
Wettest <- which.max(clim.YearlyRain$Rain)
clim.YearlyRain[Wettest,c("Year")]
```

```
## [1] 1982
```

##Trend 4: The Driest Year on Record

```r
Driest <- which.min(clim.YearlyRain$Rain)
clim.YearlyRain[Driest,c("Year")]
```

```
## [1] 2013
```

#Some of these trends can be further visualized through photographs. 
##The Owens River in a Wet Year {.flexbox .vcenter}
<div align="center">
<img src="wet_owens.jpg" height=500>
</div>


##The Owens River in a Dry Year {.flexbox .vcenter}
<div align="center">
<img src="dry_Owens.jpg" height=500>
</div>

#Trends can also be broken down by season.


##Trend 5: The Wettest Season 

```r
WettestSeason <- which.max(climate.byseason$rain)
climate.byseason[WettestSeason,c("season")]
```

```
## [1] 1
```
Winter is the Wettest Season.

##Trend 6: The Driest Season 

```r
DriestSeason <- which.min(climate.byseason$rain)
climate.byseason[DriestSeason,c("season")]
```

```
## [1] 3
```
Summer is the Driest Season.

##Trend 7: The Relationship between Winter Precipitation and Summer Temperature
![](test_files/figure-latex/ggplot-1.pdf)<!-- --> 

This graph expresses the relationship between Winter Precipitation and Summer Temperature. Radiative forcing alters heating which directly effects evaporation and sensible heating at the Earth's surface. In addition, increases in temperature lead to increases in the moisture-holding capacity of the atmosphere. Together, these effects alter the hydrological cycle, especially characteristics of precipitation and extremes. Hence, overall, this relationship can provide insight into patterns of the earth system that can be used to better understand shifts in climate.  

This information was gathered from the IPPC Fourth Assessment Report: Climate Change 2007: [IPCC Website](https://www.ipcc.ch/publications_and_data/ar4/wg1/en/ch3s3-3.html)



