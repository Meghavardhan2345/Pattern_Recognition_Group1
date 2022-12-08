

function [trainedClassifier, validationAccuracy] = train2Classifier(trainingData,size)

if size==13
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12', 'column_13', 'column_14'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12', 'column_13'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_14;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false, false, false, false, false, false];
end


if size==12
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12', 'column_13'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_13;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false, false, false, false, false];
end

if size==11
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_12;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false, false, false, false];
end

if size==10
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_11;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false, false, false];
end

if size==9
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_10;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false, false];
end

if size==8
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_9;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false];
end

if size==7
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_8;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false];
end

if size==6
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_7;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false];
end

if size==5
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_6;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false];
end

if size==4
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_5;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false];
end

if size==3
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4'});
predictorNames = {'column_1', 'column_2', 'column_3'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_4;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false];
end

if size==2
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3'});
predictorNames = {'column_1', 'column_2'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_3;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false];
end


if size==1
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2'});
predictorNames = {'column_1'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_2;
sprintf("KNN model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false];
end
% Train a classifier
% This code specifies all the classifier options and trains the classifier.
classificationKNN = fitcknn(...
    predictors, ...
    response, ...
    'Distance', 'Euclidean', ...
    'Exponent', [], ...
    'NumNeighbors', 10, ...
    'DistanceWeight', 'SquaredInverse', ...
    'Standardize', true, ...
    'ClassNames', [0; 1; 2; 3]);
predictorExtractionFcn = @(x) array2table(x, 'VariableNames', predictorNames);
knnPredictFcn = @(x) predict(classificationKNN, x);
trainedClassifier.predictFcn = @(x) knnPredictFcn(predictorExtractionFcn(x));

% Add additional fields to the result struct
trainedClassifier.ClassificationKNN = classificationKNN;
trainedClassifier.About = 'This struct is a trained model exported from Classification Learner R2021a.';
trainedClassifier.HowToPredict = sprintf('To make predictions on a new predictor column matrix, X, use: \n  yfit = c.predictFcn(X) \nreplacing ''c'' with the name of the variable that is this struct, e.g. ''trainedModel''. \n \nX must contain exactly 13 columns because this model was trained using 13 predictors. \nX must contain only predictor columns in exactly the same order and format as your training \ndata. Do not include the response column or any columns you did not import into the app. \n \nFor more information, see <a href="matlab:helpview(fullfile(docroot, ''stats'', ''stats.map''), ''appclassification_exportmodeltoworkspace'')">How to predict using an exported model</a>.');


partitionedModel = crossval(trainedClassifier.ClassificationKNN, 'KFold', 5);

% Compute validation predictions
%[validationPredictions, validationScores] = kfoldPredict(partitionedModel);

% Compute validation accuracy
validationAccuracy = 1 - kfoldLoss(partitionedModel, 'LossFun', 'ClassifError');
end