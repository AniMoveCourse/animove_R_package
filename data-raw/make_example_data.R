library(raster)
library(move)
setwd("data-raw") 

## buffalo_env
buffalo_env <- brick("env_buffalo.grd")
buffalo_env <- readAll(buffalo_env)
save(buffalo_env, file = "../data/buffalo_env.rda", compress = "xz")

## buffalo_move
load("buffalo_cleaned.Rdata")
buffalo_move <- spTransform(buffalo, projection(buffalo_env))
save(buffalo_move, file = "../data/buffalo_move.rda", compress = "xz")

## build docu
system("export R_MAX_NUM_DLLS=614; cd ..; R -e 'devtools::document()'")
