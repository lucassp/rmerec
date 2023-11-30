# rmerec
R Implementation of the MEthod based on the Removal Effects of Criteria - MEREC
More information about the method at https://doi.org/10.3390/sym13040525
More information about the implementation at https://github.com/lucassp/rmerec
Given a decision matrix, the function return the Merec weight´s vector.

#' @importFrom utils count.fields read.csv read.csv2
#' @param data A numeric data matrix in the format of a DECISION MATRIX, columns are the criteria, rows are the alternatives
#' @param alternatives A character vector with the identification of alternatives
#' @param optimizations A character vector with definition of minimization or maximization for each criterion, expected 'min' or 'max' only
#' @returns A numeric vector with MEREC Weights (wj) and all matrix/vectors used to calculate it
#' @export
#' @examples
#' alternatives <- c("A1", "A2", "A3", "A4", "A5")
#' optimizations <- c("max", "max", "min", "min")
#'
#'data <- matrix(c(
#'   c(450, 10, 100, 220, 5),          # criterion 1 values
#'   c(8000, 9100, 8200, 9300, 8400),  # criterion 2 values
#'   c(54, 2, 31, 1, 23),              # criterion 3 values
#'   c(145, 160, 153, 162, 158)        # criterion 4 values
#'), nrow=5, ncol=4)
#'
#'result <- merec_weights(data, alternatives, optimizations)
