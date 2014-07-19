---
title: "step_analysis"
author: "Leo Godin"
date: "Saturday, July 19, 2014"
output: html_document
---

Step Analysis For One Anonymous User
====================================
##Summary
Using fitness trackers, we can measure the number of steps we take over time. This analysis looks at steps taken in five-minute increments. 

The first order of business is to load the data. The data
```{r}
zipfile = "activity.zip"
unzip(zipfile)
datafile = "activity.csv"
data = read.csv(datafile, na.strings="NA")
```

Since we know that the dates are important for calculating daily activity, we will convert the date factor to the date type
```{r}
data$date = strptime(data$date, format="%Y-%m-%d")
```

**What is mean total number of steps taken per day?**
WE're not concerned with missing data here, so we'll simply covnert NAs to 0 in order to get number of steps per day.  We don't want to do this on the "data" data.frame because later on we will try to estimate values for NAs

```{r}

```
