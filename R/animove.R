#' Environmental layers corresponding to the buffalo data set
#' 
#' @return 
#' RasterBrick with five layers:
#' \itemize{
#' \item elevation
#' \item slope
#' \item distance to water
#' \item mean NDVI
#' \item variance NDVI
#' }
#' @usage data(buffalo_env)
#' @docType data
#' @keywords datasets
#' @name buffalo_env
#' @seealso buffalo_move
#' @examples
#' data(buffalo_move)
#' data(buffalo_env)
#' 
#' plot(buffalo_env, 1)
#' lines(buffalo_move)
NULL

#' Buffalo data set
#' 
#' GPS data on six African buffalo. When using this dataset, please cite the original article by Getz et al (2007) and the Movebank data package (Cross et al, 2016).
#' 
#' @references 
#' P. C. Cross, J. A. Bowers, C. T. Hay, J. Wolhuter, P. Buss, M. Hofmeyr, J. T. du Toit, W. M. Getz. Data from: Nonparameteric kernel methods for constructing home ranges and utilization distributions. Movebank Data Repository. DOI:10.5441/001/1.j900f88t (2016).
#' 
#' W. M. Getz, S. Fortmann-Roe, P. C. Cross, A. J. Lyons, S. J. Ryan, C. C. Wilmers. LoCoH: Nonparameteric kernel methods for constructing home ranges and utilization distributions. PLoS ONE 2:2, e207 (2007).
#' @usage data(buffalo_move)
#' @return MoveStack of six individuals
#' @docType data
#' @keywords datasets
#' @name buffalo_move
#' @seealso buffalo_env
#' @examples
#' data(buffalo_move)
#' data(buffalo_env)
#' 
#' plot(buffalo_env, 1)
#' lines(buffalo_move)
NULL
