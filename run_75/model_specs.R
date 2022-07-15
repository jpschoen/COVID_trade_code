#set model specification
# model specifications  
# network models
offset_ergm_pre_covid <- expression(ergm(net ~ sum+ offset(sum(.5))+#offset(nonzero)+
                                           offset(transitiveweights("min", "max", "min"))+
                                           offset(edgecov(im_dis[[i]])),
                                         response="Value",
                                         reference=~Poisson,
                                         control=control.ergm(MCMLE.maxit=iter, 
                                                              MCMC.samplesize=mcmcsamplesize,
                                                              MCMC.burnin=1000,
                                                              MCMC.interval=2000)))

ergm_pre_covid <- expression(ergm(net ~ sum+ sum(.5)+#nonzero+
                                    transitiveweights("min", "max", "min")+
                                    edgecov(im_dis[[i]]),
                                  response="Value",
                                  reference=~Poisson,
                                  control=control.ergm(MCMLE.maxit=iter, 
                                                       MCMC.samplesize=mcmcsamplesize,
                                                       MCMC.burnin=1000,
                                                       MCMC.interval=2000)))

offset_ergm_postl0_covid <- expression(ergm(net ~ sum+ offset(sum(.5))+#offset(nonzero)+
                                              offset(transitiveweights("min", "max", "min"))+
                                              offset(nodecov("hos_bed_util"))+
                                              offset(nodecov("econ_sup"))+
                                              offset(nodecov("containment"))+
                                              #offset(nodecov("econ_sup_l3"))+
                                              #offset(nodecov("containment_l3"))+
                                              #offset(nodecov("econ_sup_l6"))+
                                              #offset(nodecov("containment_l6"))+
                                              offset(edgecov(im_dis[[i]])),
                                            response="Value",
                                            reference=~Poisson,
                                            control=control.ergm(MCMLE.maxit=iter, 
                                                                 MCMC.samplesize=mcmcsamplesize,
                                                                 MCMC.burnin=1000,
                                                                 MCMC.interval=2000)))

ergm_postl0_covid <- expression(ergm(net ~ sum+ sum(.5)+#nonzero+
                                       transitiveweights("min", "max", "min")+
                                       nodecov("hos_bed_util")+
                                       nodecov("econ_sup")+nodecov("containment")+
                                       #nodecov("econ_sup_l3")+nodecov("containment_l3")+
                                       #nodecov("econ_sup_l6")+nodecov("containment_l6")+
                                       edgecov(im_dis[[i]]),
                                     response="Value",
                                     reference=~Poisson,
                                     control=control.ergm(MCMLE.maxit=iter, 
                                                          MCMC.samplesize=mcmcsamplesize,
                                                          MCMC.burnin=1000,
                                                          MCMC.interval=2000)))


offset_ergm_postl3_covid <- expression(ergm(net ~ sum+ offset(sum(.5))+#offset(nonzero)+
                                              offset(transitiveweights("min", "max", "min"))+
                                              offset(nodecov("hos_bed_util"))+
                                              offset(nodecov("econ_sup"))+
                                              offset(nodecov("containment"))+
                                              offset(nodecov("econ_sup_l3"))+
                                              offset(nodecov("containment_l3"))+
                                              #offset(nodecov("econ_sup_l6"))+
                                              #offset(nodecov("containment_l6"))+
                                              offset(edgecov(im_dis[[i]])),
                                            response="Value",
                                            reference=~Poisson,
                                            control=control.ergm(MCMLE.maxit=iter, 
                                                                 MCMC.samplesize=mcmcsamplesize,
                                                                 MCMC.burnin=1000,
                                                                 MCMC.interval=2000)))

ergm_postl3_covid <- expression(ergm(net ~ sum+ sum(.5)+#nonzero+
                                       transitiveweights("min", "max", "min")+
                                       nodecov("hos_bed_util")+
                                       nodecov("econ_sup")+nodecov("containment")+
                                       nodecov("econ_sup_l3")+nodecov("containment_l3")+
                                       #nodecov("econ_sup_l6")+nodecov("containment_l6")+
                                       edgecov(im_dis[[i]]),
                                     response="Value",
                                     reference=~Poisson,
                                     control=control.ergm(MCMLE.maxit=iter, 
                                                          MCMC.samplesize=mcmcsamplesize,
                                                          MCMC.burnin=1000,
                                                          MCMC.interval=2000)))



offset_ergm_postl6_covid <- expression(ergm(net ~ sum+ offset(sum(.5))+#offset(nonzero)+
                                              offset(transitiveweights("min", "max", "min"))+
                                              offset(nodecov("hos_bed_util"))+
                                              offset(nodecov("econ_sup"))+
                                              offset(nodecov("containment"))+
                                              offset(nodecov("econ_sup_l3"))+
                                              offset(nodecov("containment_l3"))+
                                              offset(nodecov("econ_sup_l6"))+
                                              offset(nodecov("containment_l6"))+
                                              offset(edgecov(im_dis[[i]])),
                                            response="Value",
                                            reference=~Poisson,
                                            control=control.ergm(MCMLE.maxit=iter, 
                                                                 MCMC.samplesize=mcmcsamplesize,
                                                                 MCMC.burnin=1000,
                                                                 MCMC.interval=2000)))

ergm_postl6_covid <- expression(ergm(net ~ sum+ sum(.5)+#nonzero+
                                       transitiveweights("min", "max", "min")+
                                       nodecov("hos_bed_util")+
                                       nodecov("econ_sup")+nodecov("containment")+
                                       nodecov("econ_sup_l3")+nodecov("containment_l3")+
                                       nodecov("econ_sup_l6")+nodecov("containment_l6")+
                                       edgecov(im_dis[[i]]),
                                     response="Value",
                                     reference=~Poisson,
                                     control=control.ergm(MCMLE.maxit=iter, 
                                                          MCMC.samplesize=mcmcsamplesize,
                                                          MCMC.burnin=1000,
                                                          MCMC.interval=2000)))

