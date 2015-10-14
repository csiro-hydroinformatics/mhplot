

boundFitness <- function(logMh, objLims=NULL) {
  stopifnot(is(logMh, mhDataClassName))
  d <- logMh@data
  if(!is.null(objLims)) {
    d <- boundValuesDf(d, logMh@fitness, objLims)
  }
  d
}
