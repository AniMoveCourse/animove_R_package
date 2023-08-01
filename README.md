# Animove Meta-Package

Installing this package ensures that the R packages needed for the [AniMove](https://www.animove.org) course are available on each participant's computer.
In addition, it provides example data to be used during the lectures.

## Installation
### Install system dependencies
Please make sure that the [GDAL](https://gdal.org/) libraries are installed on your system (for the time being we might still be using some packages that depend on GDAL).

- Windows: use the [OSGeo4W installer](https://trac.osgeo.org/osgeo4w/)
- Ubuntu: `sudo apt install gdal-bin libgdal-dev` 
- MacOS: ask Siri

### Install the animove R package 
```r
install.packages("remotes")
remotes::install_github("AniMoveCourse/animove_R_package")
```

## Issues when installing
If you get an error message that `MODIStsp` cannot be installed. Please install it first directly through R `install.packages("MODIStsp")`. You might be missing some dependencies on the system, instructions will be given with the error message (scroll up). Once it is successfully installed, install the `animove_R_package` package again


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
data(buffalo_ll)  # unprojected (LatLong)
data(buffalo_utm) # projected (UTM 36S)

## Environmental layers
data(buffalo_env)

## Plot
plot(buffalo_env[[1]])
points(buffalo_utm)
```


