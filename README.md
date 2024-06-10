# Animove Meta-Package

Installing this package ensures that the R packages needed for the [AniMove](https://www.animove.org) course are available on each participant's computer.
In addition, it provides example data to be used during the lectures.

### Install the animove R package 
```r
install.packages("remotes")
remotes::install_github("AniMoveCourse/animove_R_package")
```

## Issues when installing

If you get a issue similar to:
```r
Error: Failed to install 'unknown package' from GitHub:
   HTTP error 401.
 Bad credentials
```
The suggestion described [here](https://stackoverflow.com/questions/70908295/failed-to-install-unknown-package-from-github) should solve it

## Included Example Data
```r
library(animove)

## Load movement data of African buffalo
data(buffalo_ll_mv2)  # unprojected (LatLong)
data(buffalo_utm_mv2) # projected (UTM 36S)

## Environmental layers
data(buffalo_env)

## Plot
plot(buffalo_env[[1]])
points(sf::st_coordinates(buffalo_utm_mv2))
```


