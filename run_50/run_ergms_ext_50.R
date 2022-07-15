#libraries
library(ergm.count)
source("model_specs.R")
library(doParallel)
library(foreach)
#set cores
seed=1234
iter = 100
mcmcsamplesize = 5000



#load all industry data
load("mono_net_50.Rdata")
load("mono_cov_50.Rdata")
ncores = 8
registerDoParallel(cores=ncores) 
ergms <- foreach(i=1:15, .errorhandling = 'pass') %dopar% {
  net <- netlist[[i]]
  set.seed(seed)
  m1 <-eval(ergm_pre_covid)
}
stopImplicitCluster()
save.image("results/precovid_full_ergms_50.Rdata")

ncores = 3
registerDoParallel(cores=ncores) 
ergms <- foreach(i=16:18, .errorhandling = 'pass') %dopar% {
  net <- netlist[[i]]
  set.seed(seed)
  eval(ergm_postl0_covid)
}
stopImplicitCluster()
save.image("results/postcovidl0_full_ergms_50.Rdata")

ncores = 3
registerDoParallel(cores=ncores) 
ergms <- foreach(i=19:21, .errorhandling = 'pass') %dopar% {
  net <- netlist[[i]]
  set.seed(seed)
  eval(ergm_postl3_covid)
}
stopImplicitCluster()
save.image("results/postcovidl3_full_ergms_50.Rdata")

ncores = 8
registerDoParallel(cores=ncores) 
ergms <- foreach(i=22:36, .errorhandling = 'pass') %dopar% {
  net <- netlist[[i]]
  set.seed(seed)
  eval(ergm_postl6_covid)
}
stopImplicitCluster()

save.image("results/postcovidl6_full_ergms_50.Rdata")
