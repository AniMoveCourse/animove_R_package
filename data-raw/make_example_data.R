library(raster)
library(move)
library(move2)
setwd("data-raw")

## buffalo_env
buffalo_env <- brick("env_buffalo.grd")
buffalo_env <- readAll(buffalo_env)
save(buffalo_env, file = "../data/buffalo_env.rda", compress = "xz")

## buffalo
load("buffalos.Rdata")
buffalo_ll <- buffalo
save(buffalo_ll, file = "../data/buffalo_ll.rda", compress = "xz")

buffalo_utm <- spTransform(buffalo, projection(buffalo_env))
save(buffalo_utm, file = "../data/buffalo_utm.rda", compress = "xz")

## build docu
system("export R_MAX_NUM_DLLS=614; cd ..; R -e 'devtools::document()'")

#transform to move2

load("./data/buffalo_ll.rda")
buffalo_ll_mv2 <- mt_as_move2(buffalo_ll)
save(buffalo_ll_mv2, file = "./data/buffalo_ll_mv2.rda", compress = "xz")

load("./data/buffalo_utm.rda")
buffalo_utm_mv2 <- mt_as_move2(buffalo_utm)
save(buffalo_utm_mv2, file = "./data/buffalo_utm_mv2.rda", compress = "xz")
