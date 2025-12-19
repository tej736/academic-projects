# Coronary Heart Disease Risk Prediction (Applied Machine Learning)

## Objective
Build a classification model to identify individuals at elevated risk of developing coronary heart disease within ten years, with an emphasis on minimizing missed high-risk cases.

## Dataset
Framingham Heart Study dataset containing demographic, clinical, and lifestyle features for over four thousand individuals.

## Approach
* Conducted exploratory data analysis to understand feature distributions and class imbalance
* Handled missing values and outliers using appropriate preprocessing techniques
* Standardized features for distance-based modeling
* Applied SMOTE to address class imbalance
* Trained and evaluated KNN classifiers across multiple values of K
* Assessed performance using recall, ROC-AUC, precision, and F1-score

## Key Results
* Selected a model that prioritized recall to reduce false negatives in a healthcare screening context
* Demonstrated trade-offs between model complexity and generalization
* Highlighted limitations of KNN as a standalone model for long-term risk prediction

## Key Insight
In healthcare risk screening, prioritizing recall can be more important than maximizing overall accuracy, as missing true positives carries a higher cost than false alarms.

## Tools
Python, Pandas, NumPy, Scikit-learn, imbalanced-learn, Matplotlib
