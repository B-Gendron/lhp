# LHP - Lung Health Premonitions

This repository contains all the required material to run the LHP app on any computer. To ensure reproducibility, the following guide will give you the steps to follow in order to run the app in a Docker container.

## Pre-requisites

- Having Git installed (which is for sure the case if you're hanging around there, right?)
- Having Docker installed

Should you have any issues installing them, you can refer to respectively chapters 4 and 9 of [this e-book](https://rap4mads.eu). 
By the way, this README is widely inspired from some that the author of this e-book did ;)

## How to run the app

- **Clone** this repository

```
git clone git@github.com:B-Gendron/lhp.git
```

- Go in the folder where you cloned the repo and use this command to **build the image**

```
docker build -t image_app
```

- **Run** the pipeline

```
docker run --rm --name lhp_app 
```
