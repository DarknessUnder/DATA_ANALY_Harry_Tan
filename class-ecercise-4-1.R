help(diamonds)
#

ggplot(data = diamonds, mapping = aes(x = x)) + geom_histogram(binwidth = 0.01)
ggplot(data = diamonds, mapping = aes(x = y)) + geom_histogram(binwidth = 0.01)
ggplot(data = diamonds, mapping = aes(x = z)) + geom_histogram(binwidth = 0.01)

#x is width
ggplot(data = diamonds, mapping = aes(x = price)) + geom_histogram(binwidth = 10) 
ggplot(data = diamonds, mapping = aes(x = price)) + geom_histogram(binwidth = 1) + xlim(1400,1600)
#missing price range from 1460 to 1540

ggplot(data = diamonds, mapping = aes(x = carat)) + geom_histogram(binwidth = 0.01)  + xlim(0.9,1.0) + ylim(0,200) 

# 2250 of 1 Carat, 24 count of 0.99 carat

ggplot(data = diamonds, mapping = aes(x = price)) + geom_histogram() + coord_cartesian()

ggplot(data = diamonds, mapping = aes(x = carat)) + geom_histogram(binwidth = 0.01)  + xlim(0.9,1.0) + ylim(0,200) 
ggplot(data = diamonds, mapping = aes(x = carat)) + geom_histogram(binwidth = 0.01)  + coord_cartesian(xlim = c(0.9,1.0), ylim = c(0,200) )
ggplot(data = diamonds, mapping = aes(x = carat)) + geom_histogram()  + coord_cartesian()
#They are very different, but xlim() hides the outside values while coord_cartesian includes them