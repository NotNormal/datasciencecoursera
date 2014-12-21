library("dplyr")

dataDir <- "./project-data/UCI HAR Dataset"

# Read-in data labels
activityLabels <- setDT(read.table(paste(dataDir, "activity_labels.txt", sep="/"), col.names=c("activityId","activity"), stringsAsFactors=FALSE))
xAxisLabels <- read.table(file.path(dataDir, "features.txt"), col.names=c("columnNumber", "measurement"), stringsAsFactors=FALSE)

cleanName <- function(x) { gsub("\\.$", "", gsub("\\.+", ".", gsub("[(),-]", ".", x, perl=TRUE), perl=TRUE), perl=TRUE) }
xAxisLabels$measurement <- sapply(xAxisLabels$measurement, cleanName)

# Read-in test data
subjectData <- read.table(file.path(dataDir,"test/subject_test.txt"), col.names="subjectId")

# Need to wait until all data is combined before translating to activityId -> activity since the join will change the order of the data.

yAxisData <- read.table(file.path(dataDir,"test/Y_test.txt"), col.names="activityId")

xAxisData <- read.table(file.path(dataDir,"test/X_test.txt"),col.names=xAxisLabels$measurement)

testData <- setDT(cbind(subjectData, yAxisData, xAxisData[, grepl('(mean)|(std)', names(xAxisData), ignore.case=TRUE)]))
testDataDT <- left_join(testData, activityLabels, by=c('activityId' = 'activityId'))
end <- length(testData)
list <- names(testDataDT)
setcolorder(testDataDT, c(c("subjectId", "activity"), list[3:end], "activityId"))

# Read-in train data
subjectData <- read.table(file.path(dataDir,"train/subject_train.txt"), col.names="subjectId")

# Need to wait until all data is combined before translating to activityId -> activity since the join will change the order of the data.

yAxisData <- read.table(file.path(dataDir,"train/Y_train.txt"), col.names="activityId")

xAxisData <- read.table(file.path(dataDir,"train/X_train.txt"),col.names=xAxisLabels$measurement)

trainData <- setDT(cbind(subjectData, yAxisData, xAxisData[, grepl('(mean)|(std)', names(xAxisData), ignore.case=TRUE)]))
trainDataDT <- left_join(trainData, activityLabels, by=c('activityId' = 'activityId'))
end <- length(trainData)
list <- names(trainDataDT)
setcolorder(trainDataDT, c(c("subjectId", "activity"), list[3:end], "activityId"))

combinedData <- as.data.frame(rbind(testDataDT,trainDataDT))
combinedData$activityId <- NULL
combinedDataDT <- setDT(combinedData)

combinedDataGroupedDT <- group_by(combinedDataDT, subjectId, activity)
summarisedDataDT <- summarise_each(combinedDataGroupedDT, funs(mean(., na.rm=TRUE)), -activity)

dir.create("./output", showWarnings = FALSE)
write.table(summarisedDataDT, "./output/project-data-summary.txt", row.names=FALSE)