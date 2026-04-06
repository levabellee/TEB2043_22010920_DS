# 1. Create data frame
student_df <- data.frame(Student = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", "Larson", "Holland", "Paul", "Simu", "Renner"),
                         Chemistry = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59),
                         Physics = c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)
                        )

# 2. Count failures (score below 50)
chem_fail <- sum(student_df$Chemistry < 50)
phys_fail <- sum(student_df$Physics < 50)

# 3. Get highest marks
top_chem_score <- max(student_df$Chemistry)
top_phys_score <- max(student_df$Physics)

# 4. Get names of students with highest marks
top_chem_names <- student_df$Student[student_df$Chemistry == top_chem_score]
top_phys_names <- student_df$Student[student_df$Physics == top_phys_score]

# Output
cat("Chemistry Failures:", chem_fail, "\n")
cat("Physics Failures:", phys_fail, "\n")
cat("Highest Chemistry Score:", top_chem_score, "\n")
cat("Highest Physics Score:", top_phys_score, "\n")
cat("Top Chemistry Student(s):", top_chem_names, "\n")
cat("Top Physics Student(s):", top_phys_names, "\n")
