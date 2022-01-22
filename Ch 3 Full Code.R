#R script to help with chapter 3 homework problems.

#Function to create a frequency table
#Run lines 5-9 once
binFreqTable <- function(x, bins) {
  freq = hist(x, breaks=bins, include.lowest=TRUE, plot=FALSE)
  ranges = paste(head(freq$breaks,-1), freq$breaks[-1], sep=" - ")
  return(data.frame(range = ranges, frequency = freq$counts))
}

#3.6################
lmb = data.frame(length =c(210,325,285,402,350,240,409,330,295,325,
                           241,383,361,355,200,432,130,114,170,135,
                           371,307,207,175,177,261,166,376,216,152,
                           347,322,387,233,284,394,297,321,281,66,
                           90,115,250,201,175,320,370,312,370,320,
                           175,201,250,115,95,70,289,312,322,258,
                           188,192,350,200,199,180,190,180,200,200,
                           349,192,189,260,320,432,456,331,418,357,
                           304,316,336,368,415,370,336,315,305,420,
                           310,397,193,394,199,338,296,312,269,203))

#hist(dataset$variable)
hist(lmb$length)

#binFreqTable(dataset$variable,bins=N)
binFreqTable(lmb$length,bins=10)

#3.7###############
#Read data using code - or use RStudio "Import Dataset" button and 
#paste generated code in .R file
#The below code is used on my machine with the data file located in the
#working directory
Mosquitofish <- read.csv("Digital Appendix 2 Mosquitofish.csv")

#hist(dataset$variable,breaks=seq(minimum,maximum,interval))
hist(Mosquitofish$FishLength,xlab="Total Length (mm)",breaks=seq(15,60,4))

#3.8
chironomid = data.frame(larvae_leaf=c(0,1,2,3,4,5,6,7,8,9,10),
                        num_le_with_larvae_leaf=c(10,15,27,18,38,57,22,5,2,3,0))

#a) Bar graph
#barplot(dataset$variable_for_y~dataset$variable_for_x)
barplot(chironomid$num_le_with_larvae_leaf~chironomid$larvae_leaf)

#b) total number of chironomids
sum(chironomid$larvae_leaf * chironomid$num_le_with_larvae_leaf)

#c) Cumulative frequency Distribution
#cumsum(dataset$variable)

cumsum(chironomid$num_le_with_larvae_leaf) 

#3.9 Construct cumulative frequency distribution by hand following table 3.5 in book
