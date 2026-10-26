library(terra)
library(move) # only needed to read the original MoveStack in buffalos.Rdata
library(move2)
library(sf)
setwd("data-raw")

## buffalo_env
buffalo_env <- rast("env_buffalo.grd")
dir.create("../inst/extdata", showWarnings = FALSE, recursive = TRUE)
writeRaster(buffalo_env, filename = "../inst/extdata/buffalo_env.tif", datatype = "FLT8S",
            gdal = c("COMPRESS=DEFLATE", "PREDICTOR=3", "ZLEVEL=9"), overwrite = TRUE)

## buffalo
load("buffalos.Rdata")
buffalo_ll_mv2 <- mt_as_move2(buffalo)
save(buffalo_ll_mv2, file = "../data/buffalo_ll_mv2.rda", compress = "xz")

buffalo_utm_mv2 <- st_transform(buffalo_ll_mv2, crs = crs(buffalo_env))
save(buffalo_utm_mv2, file = "../data/buffalo_utm_mv2.rda", compress = "xz")

## build docu
system("export R_MAX_NUM_DLLS=614; cd ..; R -e 'devtools::document()'")
