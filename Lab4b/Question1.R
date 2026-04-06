# Given vector of staff retirement ages
age <- c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,
         56,51,60,52,54,56,52,57,54,56,58,53,53,50,55,
         51,57,60,57,55,51,50,57,58)

# --- Part 1: Summary by Age Ranges ---
# Define 5 ranges from 50 to 60
age_range <- cut(age,
                 breaks = c(50,52,54,56,58,60),
                 include.lowest = TRUE,
                 right = TRUE)

# Count number of staff in each range
range_count <- table(age_range)

# Convert to data frame
age_summary <- data.frame(
  Age_Range = names(range_count),
  Total_Staff = as.vector(range_count)
)

# --- Part 2: Summary by Individual Ages ---
# Full age sequence from 50 to 60
all_ages <- 50:60

# Count how many staff for each age
age_count <- table(factor(age, levels = all_ages))

# Convert to data frame
staff_age_summary <- data.frame(
  Staff_Age = all_ages,
  Total_Staff = as.vector(age_count)
)

# --- Display results ---
cat("Staff Count by Individual Age:\n")
print(staff_age_summary)

cat("\nStaff Count by Age Ranges:\n")
print(age_summary)
