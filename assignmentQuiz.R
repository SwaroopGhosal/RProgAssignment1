set.seed(42)
cc <- complete("c:/DataScience/Course 2 R Programming/Week2/specdata/", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])


cr <- corr("c:/DataScience/Course 2 R Programming/Week2/specdata/")                
cr <- sort(cr)                
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)


cr <- corr("c:/DataScience/Course 2 R Programming/Week2/specdata/", 129)                
cr <- sort(cr)                
n <- length(cr)                
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

cr <- corr("c:/DataScience/Course 2 R Programming/Week2/specdata/", 2000)                
n <- length(cr)                
cr <- corr("c:/DataScience/Course 2 R Programming/Week2/specdata/", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))