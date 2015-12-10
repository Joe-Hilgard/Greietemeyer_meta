# Krcmar & lachlan
# Buss-Perry

# Active group means to be averaged
tab1 = matrix(c(2.16, 2.74,
                2.72, 2.74,
                2.06, 2.44,
                1.84, 2.20),
              ncol = 2, byrow = T)
tab1n = c(36, 38, 41, 37) # sample sizes
tab1a = apply(tab1, 1, mean) # average subscales
M_active = weighted.mean(tab1a, tab1n) # Weighted mean for contrast
rawDiff = M_active - 1.56 # Contrast vs. control group

# All cell SDs to be pooled
tab1sd = matrix(c(.98, 1.46,
                  1.08, 1.52,
                  1.35, 1.44,
                  1.18, 1.41,
                  1.05, 1.35),
                ncol = 2, byrow = T)
# Pool sds w/in scale. Ns irrelevant b/c equal
tab1sda = apply(tab1sd, 1, pool.sd, ns = c(20, 20))
# Pool sds across all five groups
pooledSD = pool.sd(tab1sda, c(21, tab1n))

d = rawDiff / pooledSD
d2r(d, 21, 36+38+41+37)
d2r2z(d, 21, 36+38+41+37)

# Arousal
tab2 = c(4.97, 4.59, 3.97, 3.55)
tab2n = c(36, 38, 41, 37) # sample sizes
M2_active = weighted.mean(tab2, tab2n) # Weighted mean for contrast
rawDiff2 = M2_active - 2.95 # Contrast vs. control group

# All cell SDs to be pooled
tab2sd = c(.69, .92, 1.19, 1.23, 1.22)
# Pool sds across all five groups
pooledSD2 = pool.sd(tab2sd, c(21, tab2n))

d2 = rawDiff2 / pooledSD2
d2r(d2, 21, 36+38+41+37)
d2r2z(d2, 21, 36+38+41+37)

# Word accessibility
tab3 = c(8.47, 8.18, 8.29, 8.00)
tab3n = c(36, 38, 41, 37) # sample sizes
M3_active = weighted.mean(tab3, tab3n) # Weighted mean for contrast
rawDiff3 = M3_active - 5.90 # Contrast vs. control group

# All cell SDs to be pooled
tab3sd = c(2.30, 2.88, 3.25, 3.51, 2.45)
# Pool sds across all five groups
pooledSD3 = pool.sd(tab3sd, c(21, tab3n))

d3 = rawDiff3 / pooledSD3
d2r(d3, 21, 36+38+41+37)
d2r2z(d3, 21, 36+38+41+37)
