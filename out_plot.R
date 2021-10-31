library(tidyverse)

glimpse(mpg)

mpg %>% 
  ggplot() +
  geom_point(aes(x = displ, 
                 y = hwy,
                 color = factor(class))) +
  labs(title = "Car MPG by Displacement",
       x="Displacement", 
       y="Highway MPG",
       color = "Car Class") +
  ggthemes::theme_solarized() +
  ggthemes::scale_color_solarized()
