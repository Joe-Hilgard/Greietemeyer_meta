# GM peek

library(dplyr)
library(metafor)
library(ggplot2)

dat = read.delim("GM_2014_averaged_summed.txt")

# This doesn't work because I don't understand scope.
# analyze = function(zorb) {
#   rma(yi = Fisher.s.Z, sei = Std.Err, data = zorb)
#   print(summary(fit1))
#   funnel(fit1)
#   funnel(fit1, refline = 0, level=c(90, 95, 99), shade = c("white", "grey75", "grey60"))
# }

fit1 = rma(yi = Fisher.s.Z, sei = Std.Err, data = dat)
summary(fit1)
funnel(fit1)
funnel(fit1, refline = 0, level=c(90, 95, 99), shade = c("white", "grey75", "grey60"))

fit.exp = rma(yi = Fisher.s.Z, sei = Std.Err, data = dat, 
              subset = design == "experimental")
summary(fit.exp)
funnel(fit.exp)
funnel(fit.exp, refline = 0, level=c(90, 95, 99), shade = c("white", "grey75", "grey60"))
# Look at wild estimates
abline(v = .6)
dat %>% 
  filter(Fisher.s.Z > .6)

fit.nonexp = rma(yi = Fisher.s.Z, sei = Std.Err, data = dat, 
              subset = design != "experimental")
funnel(fit.nonexp, refline = 0, level=c(90, 95, 99), shade = c("white", "grey75", "grey60"))


# AggBeh -- still a little on the high side. Did I do something wrong?
dat %>% 
  filter(design == "experimental" & Outcome == "behavior") %>% 
  rma(yi = Fisher.s.Z, sei = Std.Err, data = .) %>% 
  funnel(refline = 0, level=c(90, 95, 99), shade = c("white", "grey75", "grey60"))

dat %>% 
  filter(design == "experimental" & Outcome == "behavior",
         StudyShort != "Greiteme_(2011). S2") %>% 
  rma(yi = Fisher.s.Z, sei = Std.Err, data = .) %>% 
  funnel(refline = 0, level=c(90, 95, 99), shade = c("white", "grey75", "grey60"))

# PET
dat %>% 
  filter(design == "experimental" & Outcome == "behavior",
         StudyShort != "Greiteme_(2011). S2") %>% 
  rma(yi = Fisher.s.Z, sei = Std.Err, data = ., mods = ~ Std.Err)

# PEESE
dat %>% 
  filter(design == "experimental" & Outcome == "behavior",
         StudyShort != "Greiteme_(2011). S2") %>% 
  rma(yi = Fisher.s.Z, sei = Std.Err, data = ., mods = ~ I(Std.Err^2))

dat %>% 
  filter(design == "experimental" & Outcome == "behavior",
         StudyShort != "Greiteme_(2011). S2") %>% 
  ggplot(aes(x = Fisher.s.Z, y = Std.Err)) +
  geom_point() + 
  geom_text(aes(label = StudyShort), nudge_x = .1) +
  scale_y_reverse(limits = c(.15, 0)) +
  scale_x_continuous(limits = c(.1, .75))