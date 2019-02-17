library(ahp)
ahpFile <- "smartfony.ahp"
wmAhp <- Load(ahpFile)
Calculate(wmAhp)
Visualize(wmAhp)
Analyze(wmAhp)
# Analiza numeryczna
Analyze(wmAhp, decisionMaker = "Dziecko")