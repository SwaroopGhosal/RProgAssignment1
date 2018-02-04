# function to provide the number of complete cases in each file
complete <- function(directory, id = 1:332) {
    ## need to set working directory to directory?
    dir1 <- getwd()
    setwd(directory)
    fnames <- list.files(getwd(),pattern = "\\.csv")
    
    # sublist the files requested, this is column 1 of the output
    sublistFiles <- fnames[id]
    output <- data.frame()
    id1 <- as.vector(id, mode = "integer")
    
    if (!(which.min(id1) < 1 || which.max(id1) > 332)) {
        
        for (i in id){
            dat <- read.csv(fnames[i],header = TRUE,comment.char = "")
            count <- sum(complete.cases(dat[,2:3]))
            output <- rbind(output, c(i,count))
            
        }
    }
    else {
        output <- rbind(output, c(0,0))
    }
    names(output) <- c("id","nobs")
    setwd(dir1)
    output
    # dataread <- lapply(sublistFiles, read.csv, header = TRUE, comment.char = "") 
    # pollutantData <- do.call(rbind, dataread)
    # count of complete cases is column 2 of the output
    #compCount <- lapply(dataread[sublistFiles],sum(complete.cases(dataread[[,2:3]])))
    
    #output <- cbind(sublistFiles,compCount)
    
}