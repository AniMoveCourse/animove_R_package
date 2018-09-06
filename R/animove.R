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
#' @seealso buffalo_utm buffalo_ll
#' @examples
#' data(buffalo_ll)
#' data(buffalo_utm)
#' data(buffalo_env)
#' 
#' plot(buffalo_env, 1)
#' lines(buffalo_utm)
NULL

#' Buffalo data set
#' 
#' GPS data on six African buffalo as move object.
#' All outliers are removed. This is used as an example dataset throughout the animove course.
#' buffalo_ll is unprojected (Longitude, Latitude).
#' buffalo_utm is projected in UTM to match buffalo_env.
#' 
#' @references
#' When using this dataset, please cite the original article by Getz et al (2007) and the Movebank data package (Cross et al, 2016).
#' P. C. Cross, J. A. Bowers, C. T. Hay, J. Wolhuter, P. Buss, M. Hofmeyr, J. T. du Toit, W. M. Getz. Data from: Nonparameteric kernel methods for constructing home ranges and utilization distributions. Movebank Data Repository. DOI:10.5441/001/1.j900f88t (2016).
#' 
#' W. M. Getz, S. Fortmann-Roe, P. C. Cross, A. J. Lyons, S. J. Ryan, C. C. Wilmers. LoCoH: Nonparameteric kernel methods for constructing home ranges and utilization distributions. PLoS ONE 2:2, e207 (2007).
#' @usage data(buffalo_ll)
#' @return MoveStack of six individuals
#' @docType data
#' @keywords datasets
#' @name buffalo_ll
#' @seealso buffalo_env
#' @examples
#' data(buffalo_ll)
#' data(buffalo_utm)
#' data(buffalo_env)
#' 
#' plot(buffalo_env, 1)
#' lines(buffalo_utm)
NULL

#' Buffalo data set
#' @usage data(buffalo_utm)
#' @inheritParams buffalo_ll
#' @name buffalo_utm
NULL
