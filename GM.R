# Fresh GM script

library(readxl)
library(dplyr)
library(metafor)

#dat = read_excel("GM_2015-11-10.xlsx")
dat = read_excel("edited_data.xlsx")
# CRUDE APPROXIMATION: get rough sample size given se(z)
dat$Sample.size = (1/dat$Std.Err)^2+3

# Check out unique combinations of study, subgroup, outcome.specific, etc.
# Trying to figure out which setting they used for studies with multiple outcomes.
  # Using the mean of the selected outcomes would be ideal
  # Using all selected outcomes, assuming independence, would be extremely bad for studies w/ "count" > 1
dat %>% 
  select(Study:Time.point, Outcome:media.type) %>% 
  group_by(Study, Subgroup, Comparison, Outcome, Outcome.type, design, media.type) %>% 
  summarize("count" = n()) %>% 
  View

dat %>% 
  select(Study:Time.point, Outcome:media.type) %>% 
  group_by(Study, Subgroup, Comparison, Outcome, Time.point, Outcome.type, design, media.type) %>% 
  summarize("count" = n()) %>% 
  View

# check sum of approx. sample sizes
temp = dat %>% 
  filter(Outcome == "behavior",
         media.type == "antisocial",
         design == "experimental",
         Outcome.type == "antisocial/negative")

temp %>% 
  select(Study:Data.format, r:checked.by, Sample.size) %>% 
  View
# Many of these I'm not sure qualify as "aggressive behavior"

# Export for note-taking
dat %>% 
  select(Study) %>% 
  distinct() %>% 
  write.table("study_notes.txt", sep="\t", row.names=F)

# at face value, no averaging or aggregating
naive = rma(yi = Fisher.s.Z, sei = Std.Err, data = temp)
funnel(naive)
funnel(naive, refline = 0)
forest(cumul(naive))


