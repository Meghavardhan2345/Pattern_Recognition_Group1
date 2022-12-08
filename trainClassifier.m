
           
function [trainedClassifier, validationAccuracy] = trainClassifier(trainingData,size)


if size==13
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12', 'column_13', 'column_14'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12', 'column_13'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_14;
sprintf(" SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false, false, false, false, false, false];
end


if size==12
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12', 'column_13'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_13;
sprintf("SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false, false, false, false, false];
end

if size==11
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11', 'column_12'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_12;
sprintf("SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false, false, false, false];
end

if size==10
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10', 'column_11'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_11;
sprintf("SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false, false, false];
end

if size==9
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9', 'column_10'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_10;
sprintf("SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false, false];
end

if size==8
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8', 'column_9'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_9;
sprintf("It is working  on SVM model of size = %d",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false, false];
end

if size==7
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7', 'column_8'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_8;
sprintf("SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false, false];
end

if size==6
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6', 'column_7'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_7;
sprintf("SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false, false];
end

if size==5
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5', 'column_6'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4', 'column_5'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_6;
sprintf("SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false, false];
end

if size==4
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4', 'column_5'});
predictorNames = {'column_1', 'column_2', 'column_3', 'column_4'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_5;
sprintf("SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false, false];
end

if size==3
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3', 'column_4'});
predictorNames = {'column_1', 'column_2', 'column_3'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_4;
sprintf("SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false, false];
end

if size==2
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2', 'column_3'});
predictorNames = {'column_1', 'column_2'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_3;
sprintf("SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false, false];
end


if size==1
inputTable = array2table(trainingData, 'VariableNames', {'column_1', 'column_2'});
predictorNames = {'column_1'};
predictors = inputTable(:, predictorNames);
response = inputTable.column_2;
sprintf("SVM model is classifing the dataset with  %d attributes",size)
%isCategoricalPredictor = [false];
end

template = templateSVM(...
    'KernelFunction', 'polynomial', ...
    'PolynomialOrder', 2, ...
    'KernelScale', 'auto', ...
    'BoxConstraint', 1, ...
    'Standardize', true);
classificationSVM = fitcecoc(...
    predictors, ...
    response, ...
    'Learners', template, ...
    'Coding', 'onevsone', ...
    'ClassNames', [0; 1; 2; 3]);
predictorExtractionFcn = @(x) array2table(x, 'VariableNames', predictorNames);
svmPredictFcn = @(x) predict(classificationSVM, x);
trainedClassifier.predictFcn = @(x) svmPredictFcn(predictorExtractionFcn(x));
trainedClassifier.ClassificationSVM = classificationSVM;
trainedClassifier.About = 'This struct is a trained model exported from Classification Learner R2021a.';
trainedClassifier.HowToPredict = sprintf('To make predictions on a new predictor column matrix, X, use: \n  yfit = c.predictFcn(X) \nreplacing ''c'' with the name of the variable that is this struct, e.g. ''trainedModel''. \n \nX must contain exactly 13 columns because this model was trained using 13 predictors. \nX must contain only predictor columns in exactly the same order and format as your training \ndata. Do not include the response column or any columns you did not import into the app. \n \nFor more information, see <a href="matlab:helpview(fullfile(docroot, ''stats'', ''stats.map''), ''appclassification_exportmodeltoworkspace'')">How to predict using an exported model</a>.');



partitionedModel = crossval(trainedClassifier.ClassificationSVM, 'KFold', 5);
%[validationPredictions, validationScores] = kfoldPredict(partitionedModel);
validationAccuracy = 1 - kfoldLoss(partitionedModel, 'LossFun', 'ClassifError');
end
