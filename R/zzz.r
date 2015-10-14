#' Function called when loading the package with 'library'. 
#'
#' Function called when loading the package with 'library'. 
#'
#' @rdname dotOnLoad.Rd
#' @name dotOnLoad
#' @param libname the path to the library from which the package is loaded
#' @param pkgname the name of the package.
.onLoad <- function(libname='~/R', pkgname='mhplot') {
}


mhDataClassName <- "mhData"

setClass(
    "mhData",
     representation(
       data= "data.frame",  
       fitness = "character",    # the colunm name in the data frame of the measure of fitness 
       messages = "character",   # the colunm name in the data frame of the messages 
       categories = "character"  # the colunm name in the data frame identifying the categories of data points
       ))


# TODO?       
# setGeneric("mhData.plotParamEvolution", function(this, paramName, objLims) standardGeneric("mhData.plotParamEvolution"))
# setMethod(
    # "mhData.plotParamEvolution", 
    # "mhData",
# )
