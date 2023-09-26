#
# Leaf Temperature Model
#

rm(list = ls())

##### Step - Librairies, Functions et Paths #####
  ## Working Directory
  setwd("C:/GitHubRepository/AnaEE France2023/r/")

  ##Librairies
  source("C:/GitHubRepository/AnaEE France2023/r/header.R")

### Simple exmaple
  ##Set parameters
  ##Physical constants
  cs <- make_constants()

  ## Leaf characteristics
  lp  <- make_leafpar()

  ## Environment
  ep <- make_enviropar()


  # Find equilibrium leaf temperature
  eq <- tleaf(lp, ep, cs, quiet = TRUE)
  
### Sensitivty of leaf temperature to parameters
##  See the "r/02_run-exe.R scripts   
  
