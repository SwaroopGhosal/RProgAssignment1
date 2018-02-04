pollutantmean <- function(directory, pollutant, id = 1:332) {
    ## need to set working directory to directory?
    dir1 <- getwd()
    setwd(directory)
    
    ## files are present here, now need to open each csv based on id
    ## read into a data frame, calculate mean for the specific pollutant
    ## move to next csv
    #i <- id
    # fnames <- c(rep(" ",length(i)))
    # for(i in id) {
    #    if(i<10) {
    #         fnames[i] <- paste("00",i,".csv",sep = "")
    #     }else if(i >= 10 && i <=99) {
    #         fnames[i] <- paste("0",i,".csv",sep = "")
    #     }else {
    #         fnames[i] <- paste(i,".csv",sep = "")
    #     }
    # }
    fnames <- list.files(getwd(),pattern = "\\.csv")
    setwd(dir1)
    sublistFiles <- fnames[id]
    dataread <- lapply(sublistFiles, read.csv, header = TRUE, comment.char = "") 
    pollutantData <- do.call(rbind, dataread)
    
    pollSubset <- pollutantData[,pollutant]
    meanPoll <- mean(pollSubset,na.rm = TRUE)
    
    ##Part1 - mean of specified pollutant in specified range
    
    ## set working directory back to original
    
}



# calcmean <- function(table,pollutant,id) {
#     mean(table)
# }

# read <- function(filename) {
#     ## read into a data frame
#     count <- 1
#     
#     while (count <= length(filename)) {
#         pollution <- read.csv(filename[count], comment.char = "")
#         count <- count + 1
#     }
#     pollution
#     
# }