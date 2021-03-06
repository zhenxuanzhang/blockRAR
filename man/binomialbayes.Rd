% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binomialbayes.R
\name{binomialbayes}
\alias{binomialbayes}
\title{Block Design for Response-Adaptive Randomization for Binomial Data}
\usage{
binomialbayes(
  p_control,
  p_treatment,
  N_total,
  block_number = 4,
  drift = 0,
  simulation = 10000,
  a0 = 0.5,
  b0 = 0.5,
  p = "n/2N",
  number_mcmc = 10000,
  prob_accept_ha = 0.95,
  early_success_prob = 0.99,
  futility_prob = 0.01,
  alternative = "greater",
  size_equal_randomization = 20,
  min_patient_earlystop = 20,
  max_prob = 0.8
)
}
\arguments{
\item{p_control}{scalar. Proportion of events under the control arm.}

\item{p_treatment}{scalar. Proportion of events under the treatment arm.}

\item{N_total}{scalar. Total sample size.}

\item{block_number}{scalar. Number of blocks or time levels. The default is set to 4.
If \code{block_number} is set to 1. This is a traditional RCT design.}

\item{drift}{scalar. The increase or decrease in proportion of event over time.
In this case, the proportion of failure changes in each block by the number of
patient accured over the total sample size. The full drift effect is seen in the
final block.}

\item{simulation}{scalar. Number of simulation to be ran. The default is set to 10000.}

\item{a0}{scalar. Prior value for the beta rate \code{Beta(a0, b0)}.
Default is 0.5.}

\item{b0}{scalar. Prior value for the beta rate \code{Beta(a0, b0)}.
Default is 0.5.}

\item{p}{scalar. Power for randomization ratio.}

\item{number_mcmc}{scalar. Number of Monte Carlo Markov Chain draws in
sampling posterior.}

\item{prob_accept_ha}{scalar. Probability of accepting
alternative hypothesis.}

\item{early_success_prob}{scalar. Probability of stopping early for success.}

\item{futility_prob}{scalar. Probability of stopping early for futility.}

\item{alternative}{character. A string specifying the alternative hypothesis,
must be one of "less" or "greater" (default).}

\item{size_equal_randomization}{scalar. The number of run in patients because adaptive
randomization is applied.}

\item{min_patient_earlystop}{scalar. Minimum number of patients before early stopping
rule is applied.}

\item{max_prob}{scalar. The maximum probability for assigning to treatment/control
group is 0.8.}
}
\value{
a list with details on the simulation.
\describe{
  \item{\code{power}}{
    scalar. The power of the trial, ie. the proportion of success over the
    number of simulation ran.}
  \item{\code{p_control_estimate}}{
    scalar. The estimated proportion of events under the control group.}
  \item{\code{p_treatment_estimate}}{
    scalar. The estimated proportion of events under the treatment group.}
  \item{\code{N_enrolled}}{
    vector. The number of patients enrolled in the trial (sum of control
    and experimental group for each simulation. )}
  \item{\code{N_control}}{
    vector. The number of patients enrolled in the control group for
    each simulation.}
  \item{\code{N_control}}{
    vector. The number of patients enrolled in the experimental group for
    each simulation.}
  \item{\code{randomization_ratio}}{
    matrix. The randomization ratio allocated for each block.}
}
}
\description{
Simulation for binomial counts for block design for
   response-adaptive randomization with time as a confounding
}
\examples{
binomialbayes(p_control = 0.20, p_treatment = 0.30, N_total = 100, simulation = 3)
binomialbayes(p_control = 0.50, p_treatment = 0.30, N_total = 100, simulation = 3)

}
