# Create a named list of student scores
student_list <- list(Robert = 59, Hemsworth = 71,
                     Scarlett = 83, Evans = 68,
                     Pratt = 65, Larson = 57,
                     Holland = 62, Paul = 92,
                     Simu = 92, Renner = 59)

# Convert list to numeric vector for calculations
score_values <- unlist(student_list)

# Calculate statistics
max_score <- max(score_values)
min_score <- min(score_values)
average_score <- mean(score_values)

# Initialize empty vectors to store names
highest_students <- c()
lowest_students <- c()

# Loop through list to find matching students
for (name in names(student_list)) {
  
  current_mark <- student_list[[name]]
  
  if (current_mark == max_score) {
    highest_students <- c(highest_students, name)
  }
  
  if (current_mark == min_score) {
    lowest_students <- c(lowest_students, name)
  }
}

# Print results
cat("Highest Score:", max_score, "\n")
cat("Lowest Score:", min_score, "\n")
cat("Average Score:", average_score, "\n")
cat("Student(s) with Highest Score:", highest_students, "\n")
cat("Student(s) with Lowest Score:", lowest_students, "\n")
