# function to check correlation between sulfate and nitrate data
# in cases where the number of observations is higher than a threshold
# for all parameters i.e use complete() and identify the cases which have 
# higher than threshold observations

# step1 - call complete() with default id
# step2 - read the files which meet the threshold criteria
# into a data frame
# step 3 - cor function?

corr <- function(directory, threshold = 0){
    
    # need the full list of files, to read the specific files data which
    # meet the criteria?
    dir1 <- getwd()
    setwd(directory)
    fnames <- list.files(getwd(),pattern = "\\.csv")
    
    # get the data frame with the number of valid observations in
    # each file
    obsData <- complete(directory)
    
    # identify the list of files which have the observations higher than
    # the threshold
    
    fileList <- obsData[which(obsData$nobs > threshold),]    
    #i <- fileList$id[1,1]
    corrOutput <- vector(mode = "numeric", length = 0)
    
    if (length(fileList$id) > 0) {
        for (i in seq_along(fileList$id)){
            dat <- read.csv(fnames[i],header = TRUE,comment.char = "")
            correlation <- cor(dat$sulfate,dat$nitrate,
                               use = "pairwise.complete.obs")
            corrOutput <- c(corrOutput, correlation)
        }
    } else {
        corrOutput <- c(corrOutput, c(0))
    }
    
    setwd(dir1)
    corrOutput
    
}