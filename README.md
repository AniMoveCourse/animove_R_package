# Animove R-Package

Installing this package ensures that the R packages needed (close to 90) for the [AniMove](https://www.animove.org) course are available on each participant's computer.
In addition, it provides example data to be used during the lectures.

### Install the animove R package 
```r
install.packages("remotes")
remotes::install_github("AniMoveCourse/animove_R_package")
```

#### Install library with unstable internet connection

If your internet connection is unstable, you can download the .zip file (click on `Code` -> `Download ZIP` here in the repository). Than in `RStudio`:

- Go to `Tools` -> `Install Packages`
- Select `Package Archive File (.zip, .tar.gz)`
- Choose the file from your computer
- Click `Install`


## Issues when installing

Please contact Anne Scharf (<ascharf@ab.mpg.de>)

## Included Example Data
```r
library(animove)
library(terra)

## Load movement data of African buffalo
data(buffalo_ll_mv2)  # unprojected (LatLong)
data(buffalo_utm_mv2) # projected (UTM 36S)

## Environmental layers
buffalo_env <- rast(system.file("extdata", "buffalo_env.tif", package = "animove"))

## Plot
plot(buffalo_env[[1]])
points(sf::st_coordinates(buffalo_utm_mv2))
```


