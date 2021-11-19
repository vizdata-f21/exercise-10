# load packages ----------------------------------------------------------------

library(tidyverse)

# function: build art ----------------------------------------------------------

build_art <- function(points,
                      angle,
                      adjustment) {
  tibble(
    i = 1:points,
    t = (1:points) * angle + adjustment,
    x = sin(t),
    y = cos(t)
  )
}

# use function -----------------------------------------------------------------

build_art(
  angle = pi * (3 - sqrt(5)),
  points = 500,
  adjustment = 0
) %>%
  ggplot(aes(x = x * t, y = y * t)) +
  geom_point() +
  coord_equal() +
  theme_void()
