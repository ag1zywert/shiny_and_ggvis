library(ggvis)
library(dplyr)

mtcars %>%
  ggvis(x = ~wt, y = ~mpg, fill = ~wt)  %>% 
  mutate (disp = disp/50) %>% 
  layer_points()

mtcars %>% 
  ggvis(~wt) %>% 
  layer_histograms(width =  input_slider(0, 2, step = 0.10, label = "width"),
                   center = input_slider(0, 2, step = 0.05, label = "center"))
