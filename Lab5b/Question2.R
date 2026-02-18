# Question 2
cube_calculator <- function(num) {
  for (i in 1:num) {
    cube <- i^3
    cat("Number is:", i, "and cube of the", i, "is: ", cube, "\n")
  }
}

while (TRUE) {
    user_input <- readline(prompt= "Input an integer: ")
    num <- as.integer(user_input)
    cube_calculator(num)
    cat("\n")
    flush.console()
}
