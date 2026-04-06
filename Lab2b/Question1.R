weight <- as.numeric(readline(prompt="Enter weight (XX.X kg): "))
height <- as.numeric(readline(prompt="Enter height (X.XX m): "))


bmi <- round(weight/(height**2), digits = 2)

underweight <- FALSE
normal <- FALSE
overweight <- FALSE
obese <- FALSE

if (bmi <= 18.4){
  underweight <- TRUE
} 
if (bmi >= 18.5 && bmi<= 24.9){
  normal <- TRUE 
} 
if (bmi >= 25.0 && bmi <= 39.9){
  overweight <- TRUE
} 
if (bmi > 40.0) {
  obese <- TRUE
}

print(paste("Underweight:", underweight))
print(paste("Normal:", normal))
print(paste("Overweight:", overweight))
print(paste("Obese:", obese))

/////////////
  
string1 <- readline(prompt="Enter string 1: ")
string2 <- readline(prompt="Enter string 2: ")
print(paste("This program compare 2 strings. Both inputs are similar: ",tolower(string1) == tolower(string2)))

/////
  
name <- readline(prompt="Enter name: ")
num <- readline(prompt="Enter phone number: ")

numFirst <- substr(num, 1,3)
lastFour <- substr(num, nchar(num) - 3, nchar(num)) #(start) num of characters -3 , (end) num of characters = length of characters

print(paste0("Hi, ", toupper(name), ". A verification code has been sent to ", numFirst, " -XXXXX ", lastFour))
