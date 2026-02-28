# Banana Quality Prediction Using Machine Learning

## Overview
This project builds a supervised machine learning model to classify banana quality categories (e.g., low, medium, high) using physical, chemical, and environmental features. The goal is to automate quality assessment to improve consistency, reduce manual inspection, and support agricultural supply chain decision-making.

## Problem Type
- **Task:** Multi-class Classification  
- **Learning Type:** Supervised Learning  
- **Training Method:** Batch Learning  

## Dataset
The dataset contains numerical and categorical features such as:

- Quality Score  
- Ripeness Index  
- Sugar Content (Brix)  
- Weight and Length  
- Chemical Composition  
- Environmental factors (Rainfall, Altitude, Soil Nitrogen)  
- Target: Quality Category  

Key characteristics:
- No missing or duplicate values  
- Imbalanced target distribution  

## Methodology
- Data cleaning and validation  
- Label encoding for categorical variables  
- 80-20 train-test split  
- Feature scaling using StandardScaler  
- Exploratory Data Analysis (pair plots, heatmap, boxplots)  
- Model comparison across multiple classifiers  
- Hyperparameter tuning  
- Learning curve analysis for generalization assessment  

## Models Evaluated
- Random Forest  
- Gradient Boosting  
- Support Vector Machine (SVM)  
- Logistic Regression  

## Results
| Model | Accuracy |
|--------|----------|
| Gradient Boosting | **1.00** |
| Random Forest | 0.99 |
| Logistic Regression | 0.95 |
| SVM | 0.92 |

**Best Model:** Gradient Boosting  
Achieved 100% accuracy with strong precision and recall across categories.

## Key Insights
- Quality Score, Ripeness Index, and Sugar Content were the most influential predictors.
- Proper preprocessing and hyperparameter tuning significantly improved performance.
- Learning curve analysis confirmed strong generalization with minimal overfitting.

## Tools
Python, Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn, Jupyter Notebook
