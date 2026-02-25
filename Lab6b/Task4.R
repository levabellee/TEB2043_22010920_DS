# Lab6b Task 4

# -----Creating data frame-----
quiz_details <- data.frame(name=c('Anastasia', 'Dima', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
                            score=c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
                            attempts=c(1, 3, 2, 3, 2, 1, 2))
print(quiz_details)

# -----Add new column-----
quiz_details$qualify <- c('yes', 'no', 'yes', 'no', 'no', 'no', 'yes')
qualifed_quiz_details <- quiz_details
cat("\n")
print(qualifed_quiz_details)

# -----Add new row-----
extra_quiz_details <- data.frame(name=c('Emily'),
                                    score=c(14.5),
                                    attempts=c(1),
                                    qualify=c('yes'))

final_quiz_details <- rbind(qualifed_quiz_details, extra_quiz_details)
cat("\n")
print(final_quiz_details)

# -----Summary-----
cat("\nNo. of rows:")
cat(nrow(final_quiz_details)) # print no of rows
cat("\nNo. of columns:")
cat(ncol(final_quiz_details)) # print no of columns

final_quiz_details$name <- as.factor(final_quiz_details$name)
final_quiz_details$qualify <- as.factor(final_quiz_details$qualify)
final_quiz_details$attempts <- as.factor(final_quiz_details$attempts)

cat("\n\n")
print(summary(final_quiz_details))
