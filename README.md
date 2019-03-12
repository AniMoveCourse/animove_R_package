# Animove Meta-Package

Installing this package ensures that the R packages needed for the [AniMove](https://www.animove.org) course are available on each participant's computer.
In addition, it provides example data to be used during the lectures.

## Installation
### System dependencies
Please make sure that the [GDAL](https://www.gdal.org/) libraries are installed on your system.

 * Windows: use the [OSGeo4W installer](https://trac.osgeo.org/osgeo4w/) 
 * Ubuntu: `sudo apt install gdal-bin libgdal-dev ` 
 * MacOS: ask Siri


### animove R package itself
```r
install.packages("remotes")
remotes::install_github("AniMoveCourse/animove")
```

## Included Example Data
```r
library(animove)

## Load movement data of African buffalo
data(buffalo_ll)  # unprojected (LatLong)
data(buffalo_utm) # projected (UTM 36S)

## Environmental layers
data(buffalo_env)

## Plot
plot(buffalo_env[[1]])
points(buffalo_utm)
```


