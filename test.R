# http://catalogue-hrm.opendata.arcgis.com/datasets/f6921c5b12e64d17b5cd173cafb23677_0


library(readr)
library(dplyr)
library(leaflet)


crime <- read_csv("~/Sites/NS-Crime/Crime.csv", locale = locale(asciify = TRUE))

m <- leaflet()
m <- addTiles(m)

m <- addMarkers(m, lat=as.numeric(crime$lat), lng=as.numeric(crime$lng), popup=crime$desc)

print(m)
