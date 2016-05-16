# Alternate approach to aggregating w/in studies

library(plyr)
library(dplyr)
library(metafor)
library(readxl)

# Read in the data
dat = read_excel("GM_2015-11-10.xlsx")
# Cut off empty bottom rows
dat = filter(dat, !is.na(Study))

# Create unique row identifier:
dat$ID = as.factor(1:nrow(dat))
# make very short names
dat$StudyShort = paste(substr(dat$Study, 1, 8), 
                       substr(dat$Study, nchar(dat$Study)-9, nchar(dat$Study)),
                       sep="_")
# Get apparent N given reported std.err of z
dat$Sample.size = (1/dat$Std.Err)^2+3

# Maybe it would be easier to instead use dplyr?
# I want to aggregate across outcomes within studies, 
#  and aggregate across genders or subgroups,
#  so long as they are of same Outcome and same Outcome.type.
# Not sure what's up with their choice of timepoints.

# Per G&M, Average across outcomes
dat1 = dat %>% 
  select(ID, StudyShort, Study, Subgroup, Comparison, Outcome, Time.point, 
         Fisher.s.Z, Std.Err, Sample.size,
         Outcome, Outcome.type, design, media.type, Ferguson, Citation) %>% 
  group_by(Study, StudyShort, Outcome, Time.point, Outcome.type, design, Ferguson, Citation,
           Subgroup, Comparison) %>% 
  summarise(Fisher.s.Z = mean(Fisher.s.Z), # Should this be weighted by Std.Err, in case of wiggly dfs?
            Std.Err = mean(Std.Err),
            Sample.size = mean(Sample.size))
# Why does StudyShort get dropped?
# Per G&M, average across comparisons
dat2 = dat1 %>% 
  #group_by(StudyShort, Study, Subgroup, Outcome, Time.point, Outcome.type, design) %>% 
  summarise(Fisher.s.Z = mean(Fisher.s.Z), # Should this be weighted by Std.Err, in case of wiggly dfs?
            Std.Err = mean(Std.Err),
            Sample.size = mean(Sample.size))
# Per G&M, sum up subgroups
# NB: This is problematic when subgroups are not independent, as it double- or triple-counts controls
dat3 = dat2 %>% 
  summarise(Fisher.s.Z = weighted.mean(x = Fisher.s.Z, w = Sample.size), 
            Sample.size = sum(Sample.size)) %>% 
  mutate(Std.Err = 1/sqrt(Sample.size - 3))

# If everything is aggregated appropriately then each row should feature a distinct
#  study × Outcome × design combination, so distinct() should return tbl_df of same number of rows
dat3 %>% 
  distinct(Study, Outcome, design) %>% 
  nrow()

nrow(dat3) # Very good.

write.table(dat3, file = "GM_2014_averaged_summed.txt", sep = "\t", row.names = F)