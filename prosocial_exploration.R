# Check on prosocial experiment results

library(readxl)
library(tidyverse)
library(metafor)

dat <- read_excel("edited_data.xlsx") # where on earth did "edited data" come from

# Restrict to prosocial-outcome experiments
# Calculate two-tailed p and significance
pros <- filter(dat, Outcome == "behavior", Outcome.type == "prosocial/positive",
               design == "experimental") %>% 
  mutate(p.twotail = 2*(pnorm(abs(Fisher.s.Z/Std.Err), lower.tail = F)),
         sig = p.twotail < .05)

# Check data
View(pros)
# Whitaker & Bushman exp. 2 seems to be included twice

# Meta-analysis
mod1 <- rma(Fisher.s.Z, sei = Std.Err, data = pros)
summary(mod1)
funnel(mod1, refline = 0, level = c(90, 95, 99), shade = c("white", "grey75", "grey60"))
