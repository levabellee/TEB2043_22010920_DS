# Question 3

cat("Check whether an n digits number is Armstrong or not:\n")
cat("--------------------------------------------------------\n")

user_input <- readline(prompt = "Input an integer: ")
whole_num <- as.integer(user_input)
num_of_digits <-nchar(user_input)

temp <- whole_num
sum_of_powers <- 0

while (temp>0) {
  # Extract last digit of whole_num
  digit <-  temp %% 10

  # Raise that digit to the power of num_of digits
  # and add it to the total sum_of_digits
  sum_of_powers <- sum_of_powers + (digit ^ num_of_digits)

  # Chop off the last digit so loop can move to next digit of whole_num
  temp <- temp %/% 10
}

if (sum_of_powers == whole_num) {
  cat(whole_num, "is an Armstrong number.\n")
} else {
  cat(whole_num, "is not an Armstrong number.\n")
}
