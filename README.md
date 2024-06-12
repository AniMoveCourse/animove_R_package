# Animove Meta-Package

Installing this package ensures that the R packages needed for the [AniMove](https://www.animove.org) course are available on each participant's computer.
In addition, it provides example data to be used during the lectures.

### Install the animove R package 
```r
install.packages("remotes")
remotes::install_github("AniMoveCourse/animove_R_package")
```

## Issues when installing

1. If you get an issue similar to:
```
Error: Failed to install 'unknown package' from GitHub:
   HTTP error 401.
 Bad credentials
```
The suggestion described [here](https://stackoverflow.com/questions/70908295/failed-to-install-unknown-package-from-github) should solve it

2. If you get an issue similar to:
```
Downloading GitHub repo AniMoveCourse/animove_R_package@HEAD
Error in utils::download.file(url, path, method = method, quiet = quiet,  :
  download from 'https://api.github.com/repos/AniMoveCourse/animove_R_package/tarball/HEAD' failed
```

The suggestion [here](https://stackoverflow.com/questions/72495046/downloads-from-github-repo-in-r-keeps-failing) (`options(timeout=400)`) seems to solve the problem.

3. Mostly for windows users, 

if the library `doMC` fails to install, install it manually with `install.packages("doMC", repos="http://R-Forge.R-project.org")` and than installing the animove R library again should work.

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


