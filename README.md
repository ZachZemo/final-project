# Final Project: Wine

| Name | Date |
|:-------|:---------------|
|Zach Zemokhol|November 30th, 2019|

-----

## Research Question

Given the correlation between features of the Wine dataset in sklearn, what relationships can we determine between them and how can they help us describe the dataset. 

### Abstract

The wine dataset gives us the opportunity to better classify wines based on a variety of features, such as magnesium levels, alcohol %, flavanoids, phenols etc., in order to draw deeper conclusions than simply the year and region it is produced in. 
By utilizing 2 dimensional graphing and visualization in matplotlib and seaborn, we can identify key relationships that will give us deeper understanding of wine. 
The relation between flavanoids(colour) and total phenols (there are over 6000 different kinds in structure, and is associated to taste, colour and mouthfeel) has a very high correlation.


### Introduction

The wine dataset was collected in the 1990's in Genoa Italy by the Institure of Pharmaceutical and Food Analysis and Technologies. 
The dataset consists of 13 features for wines, identified through chemical analysis, that come from 3 different regions in Genoa, Italy. 
When originally collected there were around 30 features recorded but were then condensed. 
Number of instances recorded per class(region):
class 1: 59
class 2: 71
class 3: 48

### Methods

The method used for modelling this data was the Ridge Regressor built into scikit-learn.
Pseudocode (and in particular, the objective function being minimized) can be found [here](https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.Ridge.html).
Simply put, this objective function minimizes the linear least squares function between predicted and expected value, while being regularized by the L2 norm of the estimated weight matrix.
This method was chosen because of its simplicity.

The data itself was organized into a matrix, and all connections between brain regions with available data were sorted, and then transformed into a table. We attempted to predict the connection found at location 12 in the figure below, from all other connections.

![Heatmap](final-project\fplots\seaborn_heatmap\wine_heatmap.png)

### Results

The performance of the regressor was an R^2 value of 0.661. The figure below shows the performance on the testing set.

![performange figure](./figures/performance.png)

We can see that in general, our regressor seems to underestimate our edgeweights. In cases where the connections are small, the regressor performs quite well, though in cases where the strength is higher we notice that the
performance tends to degrade.

### Discussion

The method used here does not solve the problem of identifying the strength of connection between two brain regions from looking at the surrounding regions. This method shows that a relationship may be learnable between these features, but performance suffers when the connection strength is towards the extreme range of observed values. To improve this, I would potentially perform dimensionality reduction, such as PCA, to try and compress the data into a more easily learnable range.

### References
The links referenced were included in my discussion, above.

-------
