% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/clean.R
\name{clean}
\alias{clean}
\title{Data cleaning}
\usage{
clean(file, advanced = TRUE, includedates = c(1950,
  as.numeric(format(Sys.Date(), "\%Y"))), dummy = NULL, keeprows = NULL,
  force = NULL, shiny = FALSE, Wmin = NA, Wmax = NA, exclude = TRUE,
  excludedates = c(Sys.Date() - 1, Sys.Date() - 1))
}
\arguments{
\item{file}{A string that contains the name of a txt file that contains stage and flow data from a certain river}

\item{advanced}{Logical,depending if you want to use the advanced settings}

\item{includedates}{A vector with two integers. The integers represent the year range the user wants to extract from the data.
Every datapoint that is not inside that date range will be discarded. Parameter advanced needs to be TRUE.}

\item{dummy}{A list with information on the dummy point, with elements W and Q, stage and discharge respectively. Parameter advanced needs to be TRUE.}

\item{keeprows}{A logical vector of the same length as the data which indicates whether to keep a datapoint or not. Parameter advanced needs to be TRUE.}

\item{force}{A list with information on the force point, with elements W and Q, stage and discharge respectively. Parameter advanced needs to be TRUE.}

\item{shiny}{Logical, whether the function should read the data as done in shiny or not. Only TRUE when used in a shiny interface.}

\item{Wmin}{Numeric, minimum stage of rating curve.}

\item{Wmax}{Numeric, maximum stage of rating curve.}

\item{exclude}{Logical depending on whether the user wants to exclude a date range from the data or not.}

\item{excludedates}{Vector with two Date values of the form %Y-%m-%d. The dates span the range which to exclude from the data. Parameters advanced and exclude need to be true.}
}
\value{
Returns a list of objects that ar the input to model1BH and model1BH, especially the cleaned input data. Other outputs are a matrix of stage and discharge values
and the cleaned data before it changes due to the interactive elements such as dummypoint,forcepoint,keeprows etc.
}
\description{
Takes in stage-discharge data and cleans it, and subsets it according to user inputs.
}
\references{
Birgir Hrafnkelsson, Helgi Sigurdarson and Sigurdur M. Gardarson (2015) \emph{Bayesian Generalized Rating Curves}
}

