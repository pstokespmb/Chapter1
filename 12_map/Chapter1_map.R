library(ggplot2)
library(ggmap)
library(maps)
library(mapdata)

myMap_usa <- map_data("usa")
myMap_mexico <- map_data("worldHires","Mexico")
myMap_canada <- map_data("worldHires","Canada")
myMap_guatemala <- map_data("worldHires","Guatemala")
myMap_belize <- map_data("worldHires","Belize")
myMap_honduras <- map_data("worldHires","Honduras")
myMap_elsalvador <- map_data("worldHires","El Salvador")


NA_Map <- ggplot() + 
  geom_polygon( data = myMap_usa , 
                aes(x=long, y = lat, group = group), 
                fill = "white", 
                color="black") + 
  geom_polygon( data = myMap_mexico , 
                aes(x=long, y = lat, group = group), 
                fill = "white", 
                color="black") +
  geom_polygon( data = myMap_canada , 
                aes(x=long, y = lat, group = group), 
                fill = "white", 
                color="black") +
  geom_polygon( data = myMap_guatemala , 
                aes(x=long, y = lat, group = group), 
                fill = "white", 
                color="black") +
  geom_polygon( data = myMap_belize , 
                aes(x=long, y = lat, group = group), 
                fill = "white", 
                color="black") +
  geom_polygon( data = myMap_honduras , 
                aes(x=long, y = lat, group = group), 
                fill = "white", 
                color="black") +
  geom_polygon( data = myMap_elsalvador , 
                aes(x=long, y = lat, group = group), 
                fill = "white", 
                color="black") +
  coord_fixed(xlim = c(-124, -70),  ylim = c(17, 51), ratio = 1.3) +
  theme(line = element_blank(),
        panel.background = element_rect(fill = "lightblue")) 

NA_Map


#demography map

NA_Map +
  geom_point(data = Chapter1_map,aes(x = Longitude , y = Latitude, color=Pop), shape = 19,alpha = .5)

