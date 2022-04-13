library(ggplot2)

ggplot(faithful) +
  geom_point(aes(x = eruptions, y = waiting), color = an_colors$orange) +
  labs(title = "This is my Title", subtitle = "we love subtitles", caption = "source: R defaults? your friendly local volcano?") +
  theme_an()
