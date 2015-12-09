# Fresh GM script

library(readxl)
library(dplyr)
library(metafor)

dat = read_excel("GM_2015-11-10.xlsx")

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
  select(Study) %>% 
  distinct() %>% 
  write.table("study_notes.txt", sep="\t", row.names=F)
  