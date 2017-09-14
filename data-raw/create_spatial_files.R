library(devtools)
library(raster)
library(ggplot2)
library(maptools)
library(rgdal)

devtools::use_data_raw()

# Get Africa shapefile
africa <- readOGR('africa_shp/', 'AfricanCountires')

objects <- ls()
for (i in 1:length(objects)){
  eval(parse(text = paste0("devtools::use_data(", objects[i], ", overwrite = TRUE)")))
}
