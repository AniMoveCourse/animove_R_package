#' Environmental layers corresponding to the buffalo data set
#'
#' GeoTIFF shipped in \code{inst/extdata}, projected in UTM zone 36S to match buffalo_utm_mv2.
#' Load it with \code{terra::rast()} as shown in the examples.
#'
#' @return
#' SpatRaster with five layers:
#' \itemize{
#' \item elevation
#' \item slope
#' \item distance to water
#' \item mean NDVI
#' \item variance NDVI
#' }
#' @keywords datasets
#' @name buffalo_env
#' @seealso buffalo_utm_mv2 buffalo_ll_mv2
#' @examples
#' buffalo_env <- terra::rast(system.file("extdata", "buffalo_env.tif", package = "animove"))
#' data(buffalo_utm_mv2)
#'
#' terra::plot(buffalo_env[[1]])
#' points(sf::st_coordinates(buffalo_utm_mv2), pch = ".")
NULL

#' Buffalo data set
#'
#' GPS data on six African buffalo as move2 object.
#' All outliers are removed. This is used as an example dataset throughout the animove course.
#' buffalo_ll_mv2 is unprojected (Longitude, Latitude).
#' buffalo_utm_mv2 is projected in UTM to match buffalo_env.
#'
#' @references
#' When using this dataset, please cite the original article by Getz et al (2007) and the Movebank data package (Cross et al, 2016).
#' P. C. Cross, J. A. Bowers, C. T. Hay, J. Wolhuter, P. Buss, M. Hofmeyr, J. T. du Toit, W. M. Getz. Data from: Nonparameteric kernel methods for constructing home ranges and utilization distributions. Movebank Data Repository. DOI:10.5441/001/1.j900f88t (2016).
#'
#' W. M. Getz, S. Fortmann-Roe, P. C. Cross, A. J. Lyons, S. J. Ryan, C. C. Wilmers. LoCoH: Nonparameteric kernel methods for constructing home ranges and utilization distributions. PLoS ONE 2:2, e207 (2007).
#' @usage data(buffalo_ll_mv2)
#' data(buffalo_utm_mv2)
#' @return move2 object of six individuals
#' @docType data
#' @keywords datasets
#' @name buffalo_ll_mv2
#' @seealso buffalo_env
#' @rdname buffalos
#' @aliases buffalo_utm_mv2
#' @aliases buffalo_ll_mv2
#' @examples
#' # Load example datasets
#' data(buffalo_ll_mv2)
#' data(buffalo_utm_mv2)
#' buffalo_env <- terra::rast(system.file("extdata", "buffalo_env.tif", package = "animove"))
#'
#' # Plot first environmental layer and buffalo tracks
#' terra::plot(buffalo_env[[1]])
#' points(sf::st_coordinates(buffalo_utm_mv2), pch = ".")
NULL
