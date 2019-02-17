library("MCDA")
smartfony <- read.csv("smartfony.csv")
smartfony
epsilon <- 0.05
performanceTable <- cbind(c(smartfony$pamiec_RAM), c(smartfony$pamiec_wbudowana), c(smartfony$cena))
rownames(performanceTable) <- smartfony$model
colnames(performanceTable) <- c("pamiec_RAM", "pamiec_wbudowana", "cena")
alternativeRanks <- c(1:15)
names(alternativeRanks) <- row.names(performanceTable)
criteraMinMax <- c("max", "max", "min")
criteriaNumberOfBreakPoints <- c(5, 5, 4)
names(criteriaNumberOfBreakPoints) <- colnames(performanceTable)
x <- UTA(performanceTable, criteraMinMax, criteriaNumberOfBreakPoints, epsilon, alternativesRanks = alternativeRanks)
x$ranks