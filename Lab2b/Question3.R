name <- readline(prompt = "Enter name: ")
num <- readline(prompt = "Enter phone number: ")

numFirst <- substr(num, 1,3)
lastFour <- substr(num, nchar(num) - 3, nchar(num))

print(paste0("Hi, ", toupper(name), ". A verification code has been sent to ", numFirst, " -XXXXX ", lastFour))
