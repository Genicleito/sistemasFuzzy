# Function to calculate RMSE (Root Mean Squared Error)
# Input parameters:
#   - y_true: the ground truth numeric vector.
#   - y_pred: the predicted numeric vector.
rmse <- function(y_true, y_pred) {
    error <- y_true - y_pred
    return(sqrt(mean(error^2)))
}

# Function to calculate MAE (Mean Absolute Error)
# Input parameters:
#   - y_true: the ground truth numeric vector.
#   - y_pred: the predicted numeric vector.
mae <- function(y_true, y_pred) {
    error <- y_true - y_pred
    return(mean(abs(error)))
}

# Function to calculate Pearson R (pearson correlation)
# Input parameters:
#   - y_true: the ground truth numeric vector.
#   - y_pred: the predicted numeric vector.
pearson_r <- function(y_true, y_pred) {
    return(cor(y_pred, y_true, use = "complete.obs", method = "pearson"))
}

# Function to calculate Coefficient of Determination (R-Squared)
# Input parameters:
#   - y_true: the ground truth numeric vector.
#   - y_pred: the predicted numeric vector.
r_squared <- function(y_true, y_pred) {
    library(MLmetrics)
    return(R2_Score(y_pred, y_true))
}