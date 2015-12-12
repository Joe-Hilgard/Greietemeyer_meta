# Sestir & Bartholow

# Study 2
ses = data.frame("condition" = rep(c("violent", "nonviolent", "control"), times = 2),
                 "delay" = rep(c("0-min", "15-min"), each = 3),
                 "mean" = c(6.26, 5.66, 5.94, 5.8, 6.03, 5.68))
sd = pool.sd(c(1.5, 1.43), c(347/6, 347/6))
d_0 = (6.26 * 1 + 5.66 * (-.5) + 5.94 * (-.5))/sd
d_15 = (5.80 * 1 + 6.03 * (-.5) + 5.68 * (-.5))/sd

stderr.d(d_0, 347/6, 347/6*2)
stderr.d(d_15, 347/6, 347/6*2)

d_net = mean(d_0, d_15)

d2r(d_net, 347/6*2, 347/6*4)
d2r2z(d_net, 347/6*2, 347/6*4)

# for sensitivity analysis
d2r(d_0, 347/6*2, 347/6*4)
d2r(d_15, 347/6*2, 347/6*4)
