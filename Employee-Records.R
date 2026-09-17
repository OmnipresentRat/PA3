# Employee-Records
# Nicholas Vollmer
# 9/16/26
# Creating a data frame of employee information to figure out overtime exemption status

# Creating the vectors
EmployeeID <- c(1001, 1002, 1003, 1004, 1005)
LastName <- c("Smith", "Norris", "Johnson", "Hart", "Owens")
Salary <- c(45000, 51000, 36000, 39000, 42000)

# Creating the data frame and making sure LastName is not treated as a factor
EmployeeData <- data.frame(EmployeeID, LastName, Salary, stringsAsFactors = FALSE)

# displaying a summary of the data frame
summary(EmployeeData)

# Creating the Exempt vector with possible values
ExemptValues <- c("N", "Y")

# Using logical conditions to determine exemption status
Exempt <- ExemptValues[(Salary > 50000) + 1]

# Adding the Exempt column to the data frame
EmployeeData <- cbind(EmployeeData, Exempt)

# Displaying the updated data frame
EmployeeData

# Extracting and displaying the first two rows
EmployeeData[1:2, ]

# Displaying the structure of the data frame
str(EmployeeData)

# Adding an additional employee
NewEmployee <- data.frame(EmployeeID = 1006,
                          LastName = "Rogers",
                          Salary = 55000,
                          Exempt = "Y",
                          stringsAsFactors = FALSE)

EmployeeData <- rbind(EmployeeData, NewEmployee)

# Displaying the final version of the data frame
EmployeeData
