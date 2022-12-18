# LHP - Lung Health Premonitions

This repository contains all the required material to run the LHP app on any computer. The following guide will give you the steps to run the app in a Docker container.

## Pre-requisites

### Installs

- Having Git installed
- Having Docker installed

Should you have any issues installing them, you can refer to respectively chapters 4 and 9 of [this e-book](https://rap4mads.eu). 
By the way, this README is widely inspired from some that the author of this e-book did ;)

### Computer architecture

The LHP app is compatible with the following architectures:
- M1 Apple (default)
- Intel
- amd

If you are using a **M1 Apple computer, you can skip step 2** of the following section. Otherwise, please mind you will need to perform **all the steps** below.

## Run the app

1. **Clone** this repository

```
git clone git@github.com:B-Gendron/lhp.git
```

2. [Intel/amd architectures ONLY] Go inside the Dockerfile of the repo you just cloned, and follow the instructions given in the top of it. 

3. Go in the folder where you cloned the repo and **build the image** using the following commands. Note that the building step may take few minutes, as it installs some packages. 

```
cd lhp
docker build -t image_app .
```

5. **Run** the pipeline:

```
docker run --rm -ti -p 3838:3838 --name lhp_app image_app  
``` 

If this last command is working well, you should see `Listening on http://0.0.0.0:3838` at the very bottom of your Terminal window.

6. **Open the app**. For this last step, you need to copy and paste the following url in your favourite web browser:

```
http://localhost:3838
``` 

## Want to know more about LHP?

Lung Health Premonitions (LHP) is a tool intended to support medical personnel in the diagnosis of lung cancer via a simple questionnaire. Thanks to about fifteen questions about the patient's lifestyle and mild health problems, LHP is able to provide a prediction that gives a first idea of the patient's condition.  

LHP leverage logistic regression over data from more than 300 patients to deliver the predictions. The fitted model has an accuracy of 92.4% on the test set. The data, the model and the useful functions related to modeling are gather in a R package called **Lunglog**, accessible in [this GitHub repository](https://github.com/B-Gendron/lunglog).
