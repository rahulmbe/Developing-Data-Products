---
title       : Data Products Course Project
subtitle    : Slidify slides
author      : Rahul Gupta
job         : Course project
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


--- .class #id 
## K Means 


This apps facilitates the use to interactively regress mpg on another 
variable of the mtcars dataset. You can for example select the variable
 wt (weight) which will result in a regression of mpg on weight. 
After selecting your variable at the right a plot is shown of these 
two variables including the regression line through these points.
 Under this plot the coefficients of the regression are given. 
Next you can change the value of mpg in the slide bar.
 The model is next applied to this value to predict the value of 
the variable you selected for this value of mpg. In the plot this is also
 seen by two lines and the red dot (the prediction). Furthermore it 
must be noted that the coloring of the datapoitns is done according
 to the cyl variable, the number of cylinders. Have fun!

---

k-means clustering is a method of vector quantization, originally from 
signal processing, that is popular for cluster analysis in data mining.
 k-means clustering aims to partition n observations into k clusters
 in which each observation belongs to the cluster with the nearest mean,
 serving as a prototype of the cluster. This results in a partitioning 
of the data space into Voronoi cells.

---

Discussion

The two key features of k-means which make it efficient are 
often regarded as its biggest drawbacks:

Euclidean distance is used as a metric and variance is used as a measure
 of cluster scatter.
The number of clusters k is an input parameter: an inappropriate choice of 
k may yield poor results. That is why, when performing k-means,
 it is important to run diagnostic checks for determining the
 number of clusters in the data set.
Convergence to a local minimum may produce counterintuitive ("wrong")
 results

---

1.In the application you can select your variable you want to have
 regressed on miles per gallon
2.You can them use the selected variable value to predict your 
previously selected variable
3.Based on the selected variable the app would get you the following 
a.Coefficients of regression
b.Predicted miles per gallon based on the value of your variable

---


The application has been pushed into the github and would be 
availaible in the below mentioned URL

---



