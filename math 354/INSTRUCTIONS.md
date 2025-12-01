# This project demonstrates skills across Excel, VBA, and R through user-interface design, looping logic, data transformation, and statistical modeling. The project includes four major components: Excel UI design, Excel VBA scripting, R looping, and a complete 4-fold cross-validation modeling pipeline.

## 📁 1. Excel User Interface With PivotTables

### Objective:
* Create an interactive Excel user interface that allows a user to select a state from a dropdown menu and automatically view summary statistics for that state.

### Requirements
Use a PivotTable to calculate the following metrics for each state:
* Average Speed
* Max Speed
* Average Age
* Max Age
* Min Age

### Then design a user interface that:
* Contains a drop-down state selector
* Automatically updates the displayed statistics based on the selected state
* Pulls results directly from the PivotTable calculations

## 📁 2. Excel VBA – Two-Dimensional Loop

### Objective:
* Use a nested loop (2D loop) in VBA to generate a numerical pattern.

### Requirements
* Write a VBA script that outputs a grid of values following the reference pattern.
* After generating the loop output, print your name next to the value 252 using one additional line of code.

## 📁 3. R Programming – Loop for Summation

### Objective:
* Use R to compute a sum using a loop.

### Requirements
* Write an R loop that calculates the total of the given mathematical series.
* Output the final sum clearly.

## 📁 4. Model Construction & Cross-Validation in R

This section implements a complete predictive modeling workflow: dataset preparation, fold creation, model training, prediction generation, and evaluation using A/E ratios.

### Step 1 — Convert Data to CSV
* Export the full “All” dataset into a CSV file.

### Step 2 — Create Four Random Folds
* Randomly divide the dataset into four evenly sized folds, then load the four CSV files into R.

### Step 3 — Perform 4-Fold Cross-Validation
For each iteration:
* Combine three folds to create a training dataset.
* Train the specified model.
* Make predictions on the remaining fold.
* Combine (cbind) the predictions with the test fold.
* Stack (rbind) all enhanced folds into one final dataset.
* Compute the A/E (Actual / Expected) ratio, which should differ from 100%.

### Step 4 — Build the Final Model Using All Data
* Fit the specified linear model using the full dataset.
* Compute the A/E ratio, which should equal 100% for the final model.
