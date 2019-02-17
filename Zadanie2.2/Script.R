
library("MCDM")
lodowki <- read.csv("smartfony.csv")
d <- matrix(c((lodowki$pamiec_RAM), c(lodowki$pamiec_wbudowana), c(lodowki$cena)), nrow = 15, ncol = 3)
w <- c(1 / 3, 1 / 3, 1 / 3)
cb <- c("max", "min", "min")
MMOORA(d, w, cb)