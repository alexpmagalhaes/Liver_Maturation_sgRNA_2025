################################################################################
rm(list=ls())                                        # remove all the objects from the R session

workDir <- "/"      # working directory for the R session

projectName <- "RNAseq_MAPHEP_18_01_2023"                         # name of the project
author <- "Alexandre P Magalhaes"                                # author of the statistical analysis/report

targetFile <- "target.txt"                           # path to the design/target file
rawDir <- ""                                      # path to the directory containing raw counts files
featuresToRemove <- c("N_unmapped",        # names of the features to be removed
                      "N_multimapping", "N_noFeature",     # (specific HTSeq-count information and rRNA for example)
                      "N_ambiguous")# NULL if no feature to remove

varInt <- "group"                                    # factor of interest
condRef <- "E15x5"                                      # reference biological condition
batch <- NULL                                   # blocking factor: NULL (default) or "batch" for example

fitType <- "parametric"                              # mean-variance relationship: "parametric" (default) or "local"
cooksCutoff <- TRUE                                  # TRUE/FALSE to perform the outliers detection (default is TRUE)
independentFiltering <- TRUE                         # TRUE/FALSE to perform independent filtering (default is TRUE)
alpha <- 0.01                                        # threshold of statistical significance
pAdjustMethod <- "BH"                                # p-value adjustment method: "BH" (default) or "BY"

typeTrans <- "VST"                                   # transformation for PCA/clustering: "VST" or "rlog"
locfunc <- "median"                                  # "median" (default) or "shorth" to estimate the size factors

colors <- c("dodgerblue","firebrick1",               # vector of colors of each biological condition on the plots
            "MediumVioletRed", "deeppink", "springgreen2", "gray")

################################################################################
###                             running script                               ###
################################################################################
setwd(workDir)
library(SARTools)
library(tidyverse)
library(sva)

# checking parameters
checkParameters.DESeq2(projectName=projectName,author=author,targetFile=targetFile,
                       rawDir=rawDir,featuresToRemove=featuresToRemove,varInt=varInt,
                       condRef=condRef,batch=batch,fitType=fitType,cooksCutoff=cooksCutoff,
                       independentFiltering=independentFiltering,alpha=alpha,pAdjustMethod=pAdjustMethod,
                       typeTrans=typeTrans,locfunc=locfunc,colors=colors)

# loading target file
target <- loadTargetFile(targetFile=targetFile, varInt=varInt, condRef=condRef, batch=batch)

# loading counts
counts <- loadCountData(target=target, rawDir=rawDir, featuresToRemove=featuresToRemove)

#counts <- read.csv("./raw/MYOD1_RNAseq_counts.csv") %>% column_to_rownames("Geneid") %>% as.matrix()

# description plots
majSequences <- descriptionPlots(counts=counts, group=target[,varInt], col=colors)

# analysis with DESeq2
out.DESeq2 <- run.DESeq2(counts=counts, target=target, varInt=varInt, batch=batch,
                         locfunc=locfunc, fitType=fitType, pAdjustMethod=pAdjustMethod,
                         cooksCutoff=cooksCutoff, independentFiltering=independentFiltering, alpha=alpha)

# PCA + clustering
exploreCounts(object=out.DESeq2$dds, group=target[,varInt], typeTrans=typeTrans, col=colors)

# summary of the analysis (boxplots, dispersions, diag size factors, export table, nDiffTotal, histograms, MA plot)
summaryResults <- summarizeResults.DESeq2(out.DESeq2, group=target[,varInt], col=colors,
                                          independentFiltering=independentFiltering,
                                          cooksCutoff=cooksCutoff, alpha=alpha)



# generating HTML report
writeReport.DESeq2(target=target, counts=counts, out.DESeq2=out.DESeq2, summaryResults=summaryResults,
                   majSequences=majSequences, workDir=workDir, projectName=projectName, author=author,
                   targetFile=targetFile, rawDir=rawDir, featuresToRemove=featuresToRemove, varInt=varInt,
                   condRef=condRef, batch=batch, fitType=fitType, cooksCutoff=cooksCutoff,
                   independentFiltering=independentFiltering, alpha=alpha, pAdjustMethod=pAdjustMethod,
                   typeTrans=typeTrans, locfunc=locfunc, colors=colors)

out.DESeq2[["dds"]]
#collapse replicates
ddsColl <- collapseReplicates(out.DESeq2[["dds"]], out.DESeq2[["dds"]]$group)
ddsColl2 <- assay(ddsColl)
write.csv(ddsColl2, file = "RawCountsout.csv")


vsd = getVarianceStabilizedData(out.DESeq2[["dds"]])
write.csv(vsd,"AllCount-vst.csv")


# save image of the R session
save.image(file=paste0(projectName, ".RData"))

