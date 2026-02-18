# Question 1
check_leap_year <- function(year) {
    
    if ((year %% 4 == 0 & year %% 100 != 0) | (year %% 400 == 0)) {
        cat("Output:", year, "is a leap year.\n\n")
    } else {
        cat("Output:", year, "is not a leap year.\n\n")
    }
}

while (TRUE) {
    
    user_input <- readline(prompt= "Input year: ")
    
    input_year <- as.integer(user_input)
    
    check_leap_year(input_year)

    flush.console()
}
