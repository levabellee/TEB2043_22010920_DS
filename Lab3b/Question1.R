# 1. Save the 20 student scores in a vector
student_scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)

# 2. Assign grades using cut()
grades <- cut(student_scores,
              breaks = c(0, 49, 59, 69, 79, 89, 100),
              labels = c("F", "E", "D", "C", "B", "A"),
              include.lowest = TRUE)

# Count how many students are in each grade
grade_summary <- table(grades)

# 3. Determine pass or fail (50 and above = Pass)
pass_result <- ifelse(student_scores >= 50, "Pass", "Fail")

# Display results
cat("Grade Distribution:\n")
print(grade_summary)

cat("\nPass/Fail Result for Each Student:\n")
print(pass_result)
