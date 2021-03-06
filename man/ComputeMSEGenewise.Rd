% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GenewiseMethod.R
\name{ComputeMSEGenewise}
\alias{ComputeMSEGenewise}
\title{Computation of MSE per gene}
\usage{
ComputeMSEGenewise(real, masked, imputed, baseline)
}
\arguments{
\item{real}{numeric; vector of original expression of a given gene (before
masking)}

\item{masked}{logical; vector indicating which entries were masked for a
given gene}

\item{imputed}{matrix; imputation results for a given imputation method}

\item{baseline}{logical; is this baseline imputation?}
}
\value{
MSE of all imputations indicated by \code{masked}
}
\description{
\code{ComputeMSEGenewise} computes the MSE of dropout
imputation for a given gene.
}
