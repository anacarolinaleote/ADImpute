% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BiologicalZeros.R
\name{SetBiologicalZeros}
\alias{SetBiologicalZeros}
\title{Set biological zeros}
\usage{
SetBiologicalZeros(imputation, drop_probs, thre = .2, was_zero)
}
\arguments{
\item{imputation}{matrix; imputed values}

\item{drop_probs}{matrix; dropout probabilities for each entry in
\code{imputation}. 0 means certain biological zero, while 1 means certain
dropout to be imputed}

\item{thre}{numeric; probability threshold to classify entries as biological
zeros}

\item{was_zero}{matrix; logical matrix: was the corresponding entry of
\code{imputation} originally a zero?}
}
\value{
matrix containing likely biological zeros set back to 0.
}
\description{
\code{SetBiologicalZeros} sets some of the entries back to zero
after dropout imputation, as they likely correspond to true biological zeros
(genes not expressed in given cell)
}
\details{
Entries which were originally zero and have dropout probability
below \code{thre} are considered biological zeros and, if they were imputed,
are set back to 0.
}
