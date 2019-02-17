library("neuralnet")
myFunction <- function(x) { return(x^3 +(2*x))}
traininginput <- as.data.frame(runif(100, min = 0, max = 10))
trainingoutput <- myFunction(traininginput)
trainingdata <- cbind(traininginput, trainingoutput)
colnames(trainingdata) <- c("Input", "Output")
net.function <- neuralnet(Output ~ Input, trainingdata,
hidden = 100, threshold = 0.01)
plot(net.function)
testdata <- as.data.frame((1:100))
net.results <- compute(net.function, testdata)
ls(net.results)
print(net.results$net.result)
cleanoutput <- cbind(testdata, myFunction(testdata),
as.data.frame(net.results$net.result))
colnames(cleanoutput) <- c("Input", "Expected Output", "Neural Net
Output")
print(cleanoutput)