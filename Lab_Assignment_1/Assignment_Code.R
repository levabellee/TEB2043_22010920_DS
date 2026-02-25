# Executed code in Google Colab

install.packages("dplyr")
install.packages("tidyr")
install.packages("stringr")

library(dplyr)
library(tidyr)
library(stringr)

# Updated Path for Google Colab
path <- "/Unclean Dataset.csv"

# 1. Load Data
data <- read.table(path,
                   sep = "|",
                   header = FALSE,
                   skip = 1,
                   fill = TRUE,
                   strip.white = TRUE,
                   stringsAsFactors = FALSE)

colnames(data) <- c("Student_ID", "First_Name", "Last_Name", "Age",
                    "Gender", "Course", "Enrollment_Date", "Total_Payments")

# 2. Initial Cleaning (Strings & Symbols)
data$Total_Payments <- str_replace_all(data$Total_Payments, "[\\$,]", "")

# 3. Handle Duplicates
data <- data[!duplicated(data[, c("First_Name", "Last_Name")]), ]

# 4. Data Type Conversion
data$Student_ID <- as.numeric(data$Student_ID)
data$Age <- as.numeric(data$Age)
data$Enrollment_Date <- as.Date(data$Enrollment_Date)
data$Total_Payments <- as.numeric(data$Total_Payments)

# 5. Handling Missing Values (NAs)
data <- data[!is.na(data$Student_ID), ]

get_mode <- function(x) {
  ux <- unique(na.omit(x))
  ux[which.max(tabulate(match(x, ux)))]
}

enroll_mode <- get_mode(data$Enrollment_Date)
data$Enrollment_Date[is.na(data$Enrollment_Date)] <- enroll_mode

pay_mode <- get_mode(data$Total_Payments)
data$Total_Payments[is.na(data$Total_Payments)] <- pay_mode

# 6. Standardize Course Names
data$Course <- str_trim(data$Course)
data$Course <- gsub("Machine Learnin(g*)", "Machine Learning", data$Course)
data$Course <- gsub("Web Developmen(t*)", "Web Development", data$Course)
data$Course <- as.factor(data$Course)

# 7. Remove ID suffix from Total_Payments (Vectorized)
data <- data %>%
  mutate(
    Total_Payments = as.numeric(str_remove(as.character(Total_Payments), paste0(Student_ID, "$")))
  )

# 8. Export Cleaned Data
write.csv(data, file = 'cleanedDataset.csv', row.names = FALSE)

cat("\nData cleaning complete! File saved as cleanedDataset.csv\n")
