# Data Preprocessing

# Importing the dataset
dataset = read.csv('C:/Users/pandeyam/Desktop/Machine Learning/A-Z Machine Learning Practice code/ML_Practice_Code/Machine Learning Codes/R Codes/Part 1-Data Pre Processing/Data.csv')

# Taking care of missing data
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)
dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                        dataset$Salary)
print(dataset$Age)
print(dataset$Salary)