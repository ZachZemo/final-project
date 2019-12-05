# Final Project: Wine

| Name | Date |
|:-------|:---------------|
|Zach Zemokhol|November 30th, 2019|

-----

## Research Question

Can the wine dataset and the information it contains offer a better way to decribe wines other than the traditional criteria we use today such as alcohol%, region it was made in or type of grape. 

### Abstract

The wine dataset gives us the opportunity to better classify wines based on a variety of features, such as magnesium levels, alcohol %, flavanoids, phenols etc., in order to draw deeper conclusions than simply the year and region it is produced in. 
By utilizing 2 dimensional graphing and visualization in matplotlib and seaborn, we can identify key relationships that will give us deeper understanding of wine. 
The relation between flavanoids(colour) and total phenols (there are over 6000 different kinds in structure, and is associated to taste, colour and mouthfeel) has a very high correlation.


### Introduction

The wine dataset was collected in the 1990's in Genoa Italy by the Institure of Pharmaceutical and Food Analysis and Technologies. 
The dataset consists of 13 features for wines:

1) Alcohol

2) Malic acid
3) Ash
4) Alcalinity of ash  
5) Magnesium
6) Total phenols
7) Flavanoids
8) Nonflavanoid phenols
9) Proanthocyanins
10) Color intensity
11) Hue
12) OD280/OD315 of diluted wines
13) Proline         


These feature were identified through chemical analysis, from 3 different regions in Genoa, Italy. 
When originally collected there were around 30 features recorded but were then condensed. 
Number of instances recorded per class(region):

class 1: 59

class 2: 71

class 3: 48

### Methods

Using the matplotlib and seaborn libraries, I created a heatmap of the wine dataset, which displayed the correlation between each feature of the dataset. 

![Heatmap](/fplots/seaborn_heatmap/wine_heatmap.png)

Once I had identified that Flavanoids and Total Phenols were the most closely related features of this dataset, I created some boxplots to better represent this data visually.

![Total Phenols](/fplots/seaborn_heatmap/wine-TotalPhenols.png)
![Flavanoids](/fplots/seaborn_heatmap/wine-boxplot-flavanoids.png)

To further visualize the correlation, I created a pairsplot.

![Pairsplot](/fplots/seaborn_heatmap/pairs.png)

### Results

The relationship between Flavanoids and Total Phenols is the strongest in the wine dataset. With a score of .86/1, it is the highest correlation than any other feature/feature relationship by a margin of nearly 10%.
This heatmap correlation result is corroberated by some visualization done, using boxplots and pairs plots, which further displayed the strong relationship between the two. 

### Discussion

Under the assumption that Flavanoids are responsible for the colour of the wine and Total Phenols are responsible for the taste and "mouthfeel" of the wine, is it safe to assume that the more intense the colour then so too the taste? More extensive data is needed. 

![KMeans Class](/plots/wine_cluster/actual-predicted-main.png)

### References
The links here were useful in guiding my analysis:
https://towardsdatascience.com/the-art-of-effective-visualization-of-multi-dimensional-data-6c7202990c57
https://scikit-learn.org/stable/modules/generated/sklearn.datasets.load_wine.html
https://jonathonbechtel.com/blog/2018/02/06/wines/

-------
