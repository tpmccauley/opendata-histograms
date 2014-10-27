# <thomas.mccauley@cern.ch>

# read in the dimuon csv file:
dimuons <- read.csv(file="Run2010B_Mu_AOD_Apr21ReReco-v1-dimuon.csv")

# select for events where the 2 muons have opposite-sign
dimuons.oppsigns <- subset(dimuons, dimuons$Q1*dimuons$Q2 == -1)

# and then from those, select events with 2 global muons
dimuons.globals <- subset(dimuons.oppsigns, dimuons.oppsigns$Type1 == "G" & dimuons.oppsigns$Type2 == "G")

# set the number of bins
nbins <- 200

# and make a histogram:
hist.data <- hist(log10(dimuons$M), breaks=nbins)
# which is not bad on its own

# however, another way to draw is to take the data from the hist and make a barplot:
barplot(log10(hist.data$counts), names.arg=signif(hist.data$mids,2), col="white")

# this works nicely if one uses the dimuons frame directly:
qplot(log10(dimuons$M), binwidth=0.01, log="y", colour=I("black"), fill=I("white"))

#as does this (which is probably the nicest):
ggplot(dimuons, aes(x=log10(M))) + geom_histogram(binwidth=0.01, colour="black", fill="white") + scale_y_log10()

# however, this works well and is simple to understand:
plot(hist.data$mids, log10(hist.data$counts), type="s", yaxt="n", ylab="", col="black", lwd=2)

# let's make histograms of the selections:
hist.oppsigns.data <- hist(log10(dimuons.oppsigns$M), breaks=nbins)
hist.globals.data <- hist(log10(dimuons.globals$M),  breaks=nbins)

# and plot all 3 histograms:
plot(hist.data$mids, log10(hist.data$counts), xlab="log10(M [GeV])", yaxt="n", ylab="", type="s", col="black", lwd=2)
lines(hist.oppsigns.data$mids, log10(hist.oppsigns.data$counts),type="s", col="blue", lwd=2)
lines(hist.globals.data$mids, log10(hist.globals.data$counts), type="s", col="red", lwd=2)

# add some vertical grid lines
abline(v=(c(0.25,0.5,0.75,1.0,1.25,1.5,1.75,2.0)), col="lightgray", lty="dotted")

# and a legend
legend.txt = c("All muon pairs", "All opposite-sign muon pairs", "All opposite-sign global muon pairs")
legend("topright", legend.txt, lwd=c(2.5,2.5,2.5),col=c("black","blue","red"))

# Excelsior!
