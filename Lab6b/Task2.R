# Lab6b Task 2

# Creating data frame
quiz_details <- data.frame(name=c('Anastasia', 'Dima', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
                            score=c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
                            attempts=c(1, 3, 2, 3, 2, 1, 2))
print(quiz_details)

# Add new column
quiz_details$qualify <- c('yes', 'no', 'yes', 'no', 'no', 'no', 'yes')
qualifed_quiz_details <- quiz_details
cat("\n")
print(qualifed_quiz_details)
