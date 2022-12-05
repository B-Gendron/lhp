# Lung Health Premonitions - user guide

_Note: the following guide is also accessible in French and Luxemburgouish. To select the language you want, please navigate across the panels above._

## What is LHP?

Lung Health Premonitions (LHP) is a tool intended to support medical personnel in the diagnosis of lung cancer via a simple questionnaire. Thanks to about fifteen questions about the patient's lifestyle and mild health problems, LHP is able to provide a prediction that gives a first idea of the patient's condition.

## Disclaimer

It is clear that LHP does not replace a medical consultation with a health professional, it only facilitates the care of the patient and to quickly make the right decision for the treatment of his condition.

## Get started with the app

### Launching a prediction

In the left pane is the questionnaire to complete to obtain a prediction. It is necessary to fill in all the entries to obtain a relevant result. For all questions except age, check the most appropriate box. For age, you can either enter the patient's age in the field (using numbers only) or use the arrows to the right of the field.

Once all the fields are completed, click on `Run prediction` to start the prediction.

<span style="display:block;text-align:center">
<img src="run-prediction.png" alt="run prediction" width="700"/>
</span>

The calculation of the prediction is almost immediate. If you don't see it appear on the main screen, it's probably because you're in the wrong navigation tab. Be sure to select the `Prediction statement` tab, top left of the main screen.

<span style="display:block;text-align:center">
<img src="prediction-statement.png" alt="prediction statement" width="700"/>
</span>

### Dataset Visualization

To view the dataset, just go to the `Patients data table` tab.

## Technical specifications

LHP leverage logistic regression over data from more than 300 patients to deliver the predictions. The fitted model has an accuracy of 92.4% on the test set. The data, the model and the useful functions related to modeling are gather in a R package called **Lunglog**, accessible in [this GitHub repository](https://github.com/B-Gendron/lunglog).
