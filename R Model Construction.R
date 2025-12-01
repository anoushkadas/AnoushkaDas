# Initialize sum
total_sum <- 0

# Loop through 100 rows and 25 columns
for (i in 1:100) {          # i is row index (1 to 100)
  for (j in 1:25) {         # j is column index (1 to 25)
    value <- 10 * j + i
    total_sum <- total_sum + value
  }
}

# Print the total sum
print(total_sum)

###########################################################################
install.packages("readxl")
install.packages("dplyr")

library(readxl)
library(dplyr)



getwd()
setwd("C:/Users/student/Downloads/Final Exam")

data <- read.csv("DataFile.csv")


set.seed(123)  
shuffled_data <- data[sample(nrow(data)), ]

fold_size <- floor(nrow(shuffled_data) / 4)

# Create 4 folds
fold1 <- shuffled_data[1:fold_size, ]
fold2 <- shuffled_data[(fold_size + 1):(2 * fold_size), ]
fold3 <- shuffled_data[(2 * fold_size + 1):(3 * fold_size), ]
fold4 <- shuffled_data[(3 * fold_size + 1):nrow(shuffled_data), ]

write.csv(fold1, "fold1.csv", row.names = FALSE)
write.csv(fold2, "fold2.csv", row.names = FALSE)
write.csv(fold3, "fold3.csv", row.names = FALSE)
write.csv(fold4, "fold4.csv", row.names = FALSE)



# Cross-validation loop

Fold1 <- read.csv("fold1.csv")
Fold2 <- read.csv("fold2.csv")
Fold3 <- read.csv("fold3.csv")
Fold4 <- read.csv("fold4.csv")

All <- rbind(Fold1, Fold2, Fold3, Fold4)


library(leaps)


#4-fold Cross-Validation
Training1 <- rbind(Fold2, Fold3, Fold4)
Model1 <- lm(Speed ~ Age + Gender, data = Training1)
Prediction1 <- predict(Model1, newdata = Fold1)
Fold1wp <- cbind(Fold1, Prediction = Prediction1)

Training2 <- rbind(Fold1, Fold3, Fold4)
Model2 <- lm(Speed ~ Age + Gender, data = Training2)
Prediction2 <- predict(Model2, newdata = Fold2)
Fold2wp <- cbind(Fold2, Prediction = Prediction2)

Training3 <- rbind(Fold1, Fold2, Fold4)
Model3 <- lm(Speed ~ Age + Gender, data = Training3)
Prediction3 <- predict(Model3, newdata = Fold3)
Fold3wp <- cbind(Fold3, Prediction = Prediction3)

Training4 <- rbind(Fold1, Fold2, Fold3)
Model4 <- lm(Speed ~ Age + Gender, data = Training4)
Prediction4 <- predict(Model4, newdata = Fold4)
Fold4wp <- cbind(Fold4, Prediction = Prediction4)

Allwp <- rbind(Fold1wp, Fold2wp, Fold3wp, Fold4wp)

Actual <- sum(Allwp$Speed)
Expected <- sum(Allwp$Prediction)
AoverE <- Actual / Expected

print(paste("A/E ratio (cross-validation):", round(AoverE, 4)))

FinalModel <- lm(Speed ~ Age + Gender, data = All)
All$Prediction <- predict(FinalModel, newdata = All)

Final_Actual <- sum(All$Speed)
Final_Expected <- sum(All$Prediction)
Final_AoverE <- Final_Actual / Final_Expected

print(paste("A/E ratio (final model):", round(Final_AoverE, 4)))
