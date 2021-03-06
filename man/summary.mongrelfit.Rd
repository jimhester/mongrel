% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mongrel_methods.R
\name{summary.mongrelfit}
\alias{summary.mongrelfit}
\title{Summarise mongrelfit object and print posterior quantiles}
\usage{
\method{summary}{mongrelfit}(m, pars = NULL, use_names = TRUE,
  gather_prob = FALSE, ...)
}
\arguments{
\item{m}{an object of class mongrelfit}

\item{pars}{character vector (default: c("Eta", "Lambda", "Sigma"))}

\item{use_names}{should summary replace dimension indicies with mongrelfit 
names if names Y and X were named in call to \code{\link{mongrel}}}

\item{gather_prob}{if TRUE then prints quantiles in long format rather than 
wide (useful for some plotting functions)}

\item{...}{other expressions to pass to summarise (using name 'val' unquoted is 
probably what you want)}
}
\description{
Default calculates median, mean, 50% and 95% credible interval
}
\examples{
\dontrun{
fit <- mongrel(Y, X)
summary(fit, pars="Eta", median = median(val))

# Some later functions make use of precomputation
fit$summary <- summary(fit)
}
}
