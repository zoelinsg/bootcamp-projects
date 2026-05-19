# Project 2 - AI Data Analysis with PartyRock

## Project Goal
This project focused on using PartyRock's data analysis feature to upload a dataset, ask analytical questions, generate an analysis table, and evaluate AI-generated insights.

## Overview
I used PartyRock to analyze a body measurements dataset containing 2,018 subjects and multiple body measurement columns in centimeters.

The workflow included:
- uploading the dataset
- asking analytical questions
- generating an analysis table
- evaluating the usefulness and accuracy of the AI-generated output
- exporting the analysis result as a CSV file

## Questions Explored
- What are the main columns in the dataset and what does each one represent?
- What are the average values for the main body measurements?
- Which body measurements are most strongly correlated?
- Are there any outliers, unusual values, or notable patterns?
- Can PartyRock generate a CSV-friendly analysis table?

## Key Insights
1. Waist measurements showed the highest variation in the dataset, with a standard deviation of 12.63 cm and a range of about 100 cm, which suggests strong differences in body composition across individuals.
2. Wrist and ankle measurements had the lowest variation, which suggests that skeletal-related measurements were more consistent than other body measurements.
3. Chest and waist had the strongest correlation (0.93), meaning these measurements tended to increase together.
4. Height was strongly correlated with arm length and leg length (0.91), showing that taller individuals generally also had longer limbs.
5. The dataset included several notable outliers, such as extremely large waist, chest, and bicep measurements, which may reflect either unusual body types or possible data quality issues.

## Most Useful Prompt
The most useful prompt was asking PartyRock to create a clear analysis table in a CSV-friendly format with key measurements, average values, notable patterns, and possible correlations. It helped me see the main statistics and relationships in one place, which made the insights easier to understand.

## Reflection
The AI analysis was useful and mostly accurate for identifying summary statistics, variation, correlations, and possible outliers in the dataset. However, I would still verify important conclusions manually, because AI-generated analysis can simplify patterns or miss context behind extreme values and unusual relationships.

## Submission Result
Passed

## Analysis File
The PartyRock-generated CSV analysis file used for submission is stored in the `data/` folder.

Included file:
- `data-analysis-2026-04-29 18-12-31.csv`