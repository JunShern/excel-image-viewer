# install.packages("png")
library(png)
img = readPNG("C:/Users/junshern/Desktop/charmander.png")
grayscale = (img[,,1] + img[,,2] + img[,,3]) / 3

# Sample only every 
sampleIndices = seq.int(3, dim(img)[1], 4) # Keep only every 4th row/col, starting from [3,3]
resized = grayscale[sampleIndices, sampleIndices]

write.csv(resized, file = "charmanderMatrix.csv")
