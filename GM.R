# Fresh GM script

library(readxl)
library(dplyr)
library(metafor)

#dat = read_excel("GM_2015-11-10.xlsx")
dat = read_excel("edited_data.xlsx")
# CRUDE APPROXIMATION: get rough sample size given se(z)
dat$Sample.size = (1/dat$Std.Err)^2+3

# at face value, no averaging or aggregating
naive = rma(yi = Fisher.s.Z, sei = Std.Err, data = temp)
funnel(naive)
forest(naive)

dat = read_excel("aggregated_datasets/Exp_behavior_antisocial.xlsx")
# CRUDE APPROXIMATION: get rough sample size given se(z)
dat$Fishers.Z = atanh(dat$Correlation)
dat$Std.Err.Z = (dat$Fishers.Z - .5*log((1+dat$`Lower Limit`)/(1-dat$`Lower Limit`)))/1.96
dat$Sample.size = (1/dat$Std.Err)^2+3

# plot
aggbeh1 = rma(yi = Fishers.Z, sei = Std.Err.Z, data = dat)
funnel(aggbeh1)
summary(aggbeh1)

aggbeh2 = rma(yi = Fishers.Z, sei = Std.Err.Z, data = dat,
              subset = Design == "Exp")
funnel(aggbeh2)
summary(aggbeh2)

# If i wanted to be mean I could look at 1 experimenter vs. rest
dat$Greitemeyer = grepl("Greitemeyer", dat$Study)
aggbeh_greitemeyer = rma(yi = Fishers.Z, sei = Std.Err.Z, data = dat,
                         mods = ~Greitemeyer,
                         subset = Design == "Exp")
funnel(aggbeh_greitemeyer, pch = ifelse(dat$Greitemeyer, 16, 1))
summary(aggbeh_greitemeyer)
