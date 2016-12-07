#' Represent data in a 'tidy' format
#' 
#' 'Tidy' data takes a 'long' view of data, where each
#' variable is a column.
#' 
#' @details This approach popularized by Hadley Wickham; see the
#'    vignette in the package 'dplyr'
#'    
#' @param pdata_file character(1)  The path to the pheno data
#'     file.
#'     
#' @param exprs_file character(1) The path to the expression
#'     file.
#'     
#' @return A data.frame() with 'tidy' formatting.
#'    
#' @importFrom reshape2 melt
#' @importFrom dplyr tbl_df
#' @importFrom magrittr %>%
#' 
#' @export
input_tidy <- function(pdata_file, exprs_file) {
    classic <- input_classic(pdata_file, exprs_file)
    melt(classic, id.vars=1:10, variable.name="Gene", value.name="Count") %>%
        tbl_df
}











