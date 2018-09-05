# Animove Meta-Package

Installing this package ensures that the R packages needed for the [AniMove](https://www.animove.org) course are available on each participant's computer.
In addition, it provides example data to be used during the lectures.

## Install system dependencies
Please make sure that the [GDAL](https://www.gdal.org/) libraries are installed on your system.

 * Windows: use the [OSGeo4W installer](https://trac.osgeo.org/osgeo4w/) 
 * Ubuntu: `sudo apt install gdal-bin gdal-data libgdal-dev libgeos-dev` 
 * MacOS: ask Siri


## Install the animove package
```r
install.packages("remotes")
remotes::install_github('AniMoveCourse/animove')

```



