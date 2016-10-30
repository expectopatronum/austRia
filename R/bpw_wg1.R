#' Bundespräsidentenwahl Österreich 2016 (Austrian presidential election)
#' 
#' This dataset contains the number of votes for each candidate per municipality
#' for the first round of voting of the Austrian presidential election 2016.
#' 
#' @source \url{http://www.bmi.gv.at/cms/BMI_wahlen/bundespraes/bpw_2016/Ergebnis.aspx}
#' @format A data frame with 2239 observations and 12 variables:
#' \describe{
#' \item{gkz}{Community Identification Number}
#' \item{gebietsname}{Name of the municipality}
#' \item{wahlberechtigte}{Nr. of people who were allowed to vote}
#' \item{abgegebene}{Nr. of people who cast a vote}
#' \item{ungueltige}{Nr. of invalid votes}
#' \item{gueltige}{Nr. of valid votes}
#' \item{griss}{Nr. of votes for Irmgard Griss}
#' \item{hofer}{Nr. of votes for Norbert Hofer}
#' \item{hundstorfer}{Nr. of votes for Rudolf Hundstorfer}
#' \item{khol}{Nr. of votes for Andreas Khol}
#' \item{lugner}{Nr. of votes for Richard Lugner}
#' \item{vanderbellen}{Nr. of votes for Alexander van der Bellen}
#' }
"bpw_wg1"