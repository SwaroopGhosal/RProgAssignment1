#Q1
cube <- function(x, n) {
    x^3
}

#Q2
x <- 1:10
# if statement only evaluates a single condition
# so only the first element of x vector will be evaluated
# thats why we get a warning 
if (x>5) {
    x <- 0
}

#Q3
f <- function(x) {
    g <- function(y) {
        y + z
    }
    z <- 4
    x + g(x)
}
# Q4
x <- 5
y <- if (x < 3) {
    NA
} else {
    10
}

