library(tidyverse)
library(gapminder)

gapminder %>%
  pivot_longer(lifeExp:gdpPercap) %>%
  filter(str_detect(continent, "Europe"),
         year > 1987) %>%
  ggplot() +
  aes(x = year,
      y = value,
      color = name) +
  geom_line() + 
  facet_wrap(~ country)