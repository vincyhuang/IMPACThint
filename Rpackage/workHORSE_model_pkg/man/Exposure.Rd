% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Exposure_class.R
\name{Exposure}
\alias{Exposure}
\title{R6 Class representing an exposure}
\description{
An exposure has a sim_prm list that holds the simulation parameters.
}
\details{
To be completed...
}
\examples{

## ------------------------------------------------
## Method `Exposure$new`
## ------------------------------------------------

af_stroke <- Exposure$new("af", "stroke")

## ------------------------------------------------
## Method `Exposure$read_exps_prm`
## ------------------------------------------------

af_stroke <- Exposure$new("af", "stroke")
af_stroke$read_exps_prm("./inputs/RR/af_stroke.csvy", design)

## ------------------------------------------------
## Method `Exposure$gen_stochastic_effect`
## ------------------------------------------------

af_stroke <- Exposure$new("af", "stroke")
af_stroke$read_exps_prm("./inputs/RR/af_stroke.csvy", design)
af_stroke$gen_stochastic_effect(design, TRUE)
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{name}}{The name of the exposure.}

\item{\code{outcome}}{The name of the outcome the exposure influences.}

\item{\code{distribution}}{The distribution to be used for Monte Carlo.
Currently lognormal and normal are supported.}

\item{\code{source}}{Citation info for the effect size.}

\item{\code{notes}}{Any notes regarding the exposure -> outcome relation.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Exposure-new}{\code{Exposure$new()}}
\item \href{#method-Exposure-read_exps_prm}{\code{Exposure$read_exps_prm()}}
\item \href{#method-Exposure-gen_stochastic_effect}{\code{Exposure$gen_stochastic_effect()}}
\item \href{#method-Exposure-get_rr}{\code{Exposure$get_rr()}}
\item \href{#method-Exposure-clear_cache}{\code{Exposure$clear_cache()}}
\item \href{#method-Exposure-validate_rr}{\code{Exposure$validate_rr()}}
\item \href{#method-Exposure-get_input_rr}{\code{Exposure$get_input_rr()}}
\item \href{#method-Exposure-get_metadata}{\code{Exposure$get_metadata()}}
\item \href{#method-Exposure-get_seed}{\code{Exposure$get_seed()}}
\item \href{#method-Exposure-write_exps_tmplte_file}{\code{Exposure$write_exps_tmplte_file()}}
\item \href{#method-Exposure-convert_from_old_format}{\code{Exposure$convert_from_old_format()}}
\item \href{#method-Exposure-print}{\code{Exposure$print()}}
\item \href{#method-Exposure-clone}{\code{Exposure$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-new"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-new}{}}}
\subsection{Method \code{new()}}{
Create a new exposure object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$new(
  exps_name,
  outcome,
  distribution = c("lognormal", "normal"),
  source = NA_character_,
  notes = NA_character_
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{exps_name}}{A string with exposure name.}

\item{\code{outcome}}{A string with outcome name.}

\item{\code{distribution}}{A string with distribution for Monte Carlo (lognormal or normal).}

\item{\code{source}}{A string with source info.}

\item{\code{notes}}{A string with any notes.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new `Exposure` object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{af_stroke <- Exposure$new("af", "stroke")
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-read_exps_prm"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-read_exps_prm}{}}}
\subsection{Method \code{read_exps_prm()}}{
Reads exposure parameter from file.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$read_exps_prm(exps_prm, design_ = design)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{exps_prm}}{A path to a csvy file with the exposure parameters.}

\item{\code{design_}}{A design object with the simulation parameters.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
An `Exposure` object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{af_stroke <- Exposure$new("af", "stroke")
af_stroke$read_exps_prm("./inputs/RR/af_stroke.csvy", design)
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-gen_stochastic_effect"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-gen_stochastic_effect}{}}}
\subsection{Method \code{gen_stochastic_effect()}}{
Generates and write to disk the stochastic effect.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$gen_stochastic_effect(
  design_ = design,
  overwrite = FALSE,
  smooth,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{design_}}{A design object with the simulation parameters.}

\item{\code{overwrite}}{If TRUE overwrite the files. Else if files exist they
are not regenerated.}

\item{\code{smooth}}{If true applies loess smoothing to the input relative risks}

\item{\code{...}}{Further arguments to be passed to `loess`, usually span =
0.7, degree = 1}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
An `Exposure` object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{af_stroke <- Exposure$new("af", "stroke")
af_stroke$read_exps_prm("./inputs/RR/af_stroke.csvy", design)
af_stroke$gen_stochastic_effect(design, TRUE)
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-get_rr"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-get_rr}{}}}
\subsection{Method \code{get_rr()}}{
Get relative risks from disk.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$get_rr(mc, design_ = design, drop = TRUE, plot_rr = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{mc}}{An integer that signifies the Monte Carlo iteration.}

\item{\code{design_}}{A design object with the simulation parameters.}

\item{\code{drop}}{If `TRUE` returns a scalar numeric of the RR if the RR is
common for all age groups and both sexes. Otherwise, a data.table.}

\item{\code{plot_rr}}{If TRUE, plots the relative risk}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A data.table with the stochastic relative risks, if stochastic
  = TRUE; else, the deterministic relative risks.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-clear_cache"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-clear_cache}{}}}
\subsection{Method \code{clear_cache()}}{
Clear the cache for get_rr.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$clear_cache()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
The `Exposure` object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-validate_rr"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-validate_rr}{}}}
\subsection{Method \code{validate_rr()}}{
Get relative risks from disk.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$validate_rr()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A plot with the input and stochastic relative risks.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-get_input_rr"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-get_input_rr}{}}}
\subsection{Method \code{get_input_rr()}}{
Get original input relative risks by age and sex.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$get_input_rr()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A copied data.table with the original relative risks.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-get_metadata"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-get_metadata}{}}}
\subsection{Method \code{get_metadata()}}{
Get original metadata.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$get_metadata()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list with the original metadata.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-get_seed"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-get_seed}{}}}
\subsection{Method \code{get_seed()}}{
Get seed for RNG.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$get_seed()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A seed for the RNG that is produced by the digest of exposure
  name and outcome.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-write_exps_tmplte_file"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-write_exps_tmplte_file}{}}}
\subsection{Method \code{write_exps_tmplte_file()}}{
Writes a template exposure file to disk.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$write_exps_tmplte_file(file_path = "./inputs/RR/template.csvy")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{file_path}}{Path including file name and .csvy extension to write the
file with placeholder exposure parameters.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The `Exposure` object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-convert_from_old_format"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-convert_from_old_format}{}}}
\subsection{Method \code{convert_from_old_format()}}{
Convert the old format .csv to the new format .csvy.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$convert_from_old_format(
  old_file,
  metadata,
  file_path,
  estimates = NULL,
  second_estimate_is_p = FALSE
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{old_file}}{Path to the old format .csv file with the RR.}

\item{\code{metadata}}{List with the metadata information.}

\item{\code{file_path}}{Path including file name and .csvy extension to write the
new file.}

\item{\code{estimates}}{Only used when old_file is missing. A vector of length
2 with the 1st element being the point estimate and the 2nd one of
the CI.}

\item{\code{second_estimate_is_p}}{If `TRUE` and the `estimates` not `NULL` then the
second element of `estimates` is interpreted like a p-value for ratio
rather than a CI.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The `Exposure` object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-print"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-print}{}}}
\subsection{Method \code{print()}}{
Print the simulation parameters.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$print()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
The `Exposure` object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Exposure-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Exposure-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Exposure$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
