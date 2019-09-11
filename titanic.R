library(ggplot2)

df <- read.csv('dataset/train.csv')

ggplot(data = df) +
  geom_point(mapping = aes(x = Age, y = Fare, color = Sex))


