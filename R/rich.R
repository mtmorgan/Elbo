#' Rich data input
#' 
#' Capture the semantic meaning of the data that
#' we represent. For instance, separately
#' recognizing the 'phenotypic' data (descrbing
#' the samples) and the 'expression' values 
#' (derived from, e.g., microarray or RNAseq
#' experiment).
#' 
#' @param pdata_file character(1) The path to the pheno data
#'     file.
#'     
#' @param exprs_file character(1) The path to the expression
#'     file.
#'     
#' @return A SummarizedExperiment() containing samples as
#'     colData(), and the expression values as assay().
#' 
#' @importFrom SummarizedExperiment SummarizedExperiment
#' @export
input_rich <- function(pdata_file, exprs_file) {
    stopifnot(is_scalar_character(pdata_file))
    stopifnot(is_scalar_character(exprs_file))

    pdata <- read.csv(pdata_file, row.names=1, check.names=FALSE)
    exprs <- read.csv(exprs_file, row.names=1, check.names=FALSE)
    
    SummarizedExperiment(as.matrix(exprs), colData=pdata)
}
