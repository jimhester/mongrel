% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mongrel_transforms.R
\name{mongrel_transforms}
\alias{mongrel_transforms}
\alias{mongrel_to_proportions}
\alias{mongrel_to_alr}
\alias{mongrel_to_ilr}
\alias{mongrel_to_clr}
\title{Transform Fit Mongrel Parameters to other representations}
\usage{
mongrel_to_proportions(m)

mongrel_to_alr(m, d)

mongrel_to_ilr(m, V = NULL)

mongrel_to_clr(m)
}
\arguments{
\item{m}{object of class mongrelfit (e.g., output of \code{\link{mongrel}})}

\item{d}{(integer) multinomial category to take as new alr reference}

\item{V}{(matrix) contrast matrix for ILR basis to transform into to (defaults to 
\code{driver::create_default_ilr_base(D)})}
}
\value{
mongrelfit object
}
\description{
These are a collection of convenience functions for transforming
mongrel fit objects to a number of different representations includeing
ILR bases, CLR coordinates, ALR coordinates, and proportions.
}
\details{
Note: that there is a degeneracy of representations for a covariance 
matrix represented in terms of proportions. As such the function 
\code{mongrel_to_proportions} does not attempt to transform parameters Sigma
or prior Xi and instead just removes them from the mongrelfit object returned.
}
\examples{
\dontrun{
m <- mongrel(Y, X)
m.prop <- mongrel_to_proportions(m)
# convert back to default coordinates (alr with D-th part as reference)
m <- mongrel_to_alr(m.prop, ncategories(m))
V <- driver::create_default_ilr_base(ncategories(m))
m.ilr <- mongrel_to_ilr(m, V)
m.clr <- mongrel_to_clr(m)
}
}
