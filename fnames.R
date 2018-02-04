i <- 1:332
fnames <- c(rep(" ",332))
for(i in 1:332) {
    if(i<10) {
        fnames[i] <- paste("00",i,".csv",sep = "")
    }else if(i >= 10 && i <=99) {
        fnames[i] <- paste("0",i,".csv",sep = "")
    }else {
        fnames[i] <- paste(i,".csv",sep = "")
    }
}