library(weightr)

dat <- read.delim("GM_2014_averaged_summed.txt", stringsAsFactors = F)
dat$vi <- dat$Std.Err^2

dat %>% 
  filter(Outcome.type == "antisocial/negative",
         Outcome == "behavior",
         design == "experimental") %>% 
  with(., weightfunct(Fisher.s.Z, vi)) # r = .17

dat %>% 
  filter(Outcome.type == "antisocial/negative",
         Outcome == "behavior",
         design == "experimental") %>% 
  rma(yi = Fisher.s.Z, vi = vi, data = .) %>% 
  funnel()

# Sans outlier
dat %>% 
  filter(Outcome.type == "antisocial/negative",
         Outcome == "behavior",
         design == "experimental",
         Fisher.s.Z < .8) %>% 
  with(., weightfunct(Fisher.s.Z, vi)) # r = .19
