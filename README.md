##CA675_Group_9_Assignment_2

#Analysis of Google-Play store apps

##Group Information
   Name                      Student ID
1. Shradha Shivani -         21261104
2. Atif Shahab -             21260968
3. Snehasis Nayak -          21260962
4. Yamini Karpe -            21261888
5. Harsha Kumble -           21262485
6. Ankit Gusain -            21261629


```
Source - Kaggle
https://www.kaggle.com/gauthamp10/google-playstore-apps

GitLab Repo
https://gitlab.computing.dcu.ie/shivans2/ca675_group9_assignment2

Data Visualization
https://datastudio.google.com/u/0/reporting/b9e5289e-d7ae-41ec-8320-bff973fe68d6/page/c7efC
```

#1. Introduction
``````
Google play store- a hub of millions of applications for android users from where they can download any app and take the benefits of it. But among those million apps only few hundred apps are seen in the android phones or in other words we can say only those are popular. So, what about the other millions of apps. It is like a wastage of time, money, effort of the developer if their apps do not become popular. 
We have performed analysis on the applications that are present in the google play store. The main objective of our project is to build a recommendation system for developers that will help them to get an idea about the different domain in which they can develop their app. It will also help the different android users to get to know which app is the best fit for them in each domain depending upon the rating, reviews, paid or free version of that app.

``````

#2. Data Acquisition and Preparation
```
We have considered a large dataset from Kaggle. It has the information of around 2.3 million apps which are present for android users. Our data set contains more than 2 million rows and 24 columns.
```
  2.1 We have created a GCP cluster as our cloud instance. We used a standard bucket in GCP to store our raw data.
  
  2.2 The raw dataset of Google-Play store Apps was uploaded to the created bucket using terminal provided by PySpark.

#3. Data Cleaning

```
Data Cleaning is one of the most important part of whole process. If we do not clean our data set properly then it can affect our visualization process which will result into a misleading information to the viewers. It took a lot of effort to clean such a large data set. We have used PySpark API and Jupiter notebook as a tool to clean our data. After cleaning of our dataset, we have 2190455 rows and 13 columns.
```
  3.1 The cleaned file (DataCleaned.csv) is written to Cloud Storage Bucket("gs://ct-assignemt2//)

#4. Data Storage and processing

```
Once we clean our data, next phase is data storage which keeps our data safe, and processing can be done with that stored data. For data storage we have used big query cloud storage. 
```
  4.1 Creation of a table “App_Info” using Big query
  4.2 Execution query to show first 10 records

#5. Data Visualization

Data Visualization can show us a pattern in a short time. Even if the viewer is not from technical background, he can observe the graph and understand what it is trying to show. Data stored in csv file is visualized through google studio. We have visualized below graphs.
```
# Graph 1 - It shows that around 69% of apps are small i.e., the size of the apps is less than 20 Mb. Developers can keep this in mind when they are creating a new app.
# Graph 2 - It shows that genre like Tools, Action, Casual, Photography have high number of installs as compared to the number of total apps present in that category. Whereas genre like Entertainment and music have a greater number of options as compared to the number of install in the genre.
# Graph 3- It shows the top 10 apps of top 10 different category. If a user wants to download an app, he can look at this and get an idea about the top apps of that genre. Here top 10 apps are considered based on rating and the number of installs (only those are considered which has more than 5000 installs).
Here we have created dynamic dashboard, from where we can select different category and type of app (paid or free) and results will be displayed accordingly.
# Graph 4 - It shows the impact of covid on apps of different genre. Education, Health and Fitness apps have shown the highest number of installs in year 2020 whereas apps of other genre have seen a fall in number of installs.
```

#6. Tools used
```
# Cloud Instance - Google Cloud Platform (DataProc Cluster)
# Data Gathering - kaggle (https://www.kaggle.com/gauthamp10/google-playstore-apps)
# Data Cleaning - Py Spark Api
# Data Storage- Cloud Storage Big Query
# Data Visualization- Google Data Studio
# IDE- Jupyter Notebook
```

#7. Conclusion
As per our analysis and visualization, we can conclude below points
```
# Apps related to education and health fitness have the highest number of installs during covid as everything was going virtual whereas apps of other domain like travel have seen a dip in number of installs.
# There are very high number of installs of premium apps (paid apps) in domain like Adventure, Photography but users do not have many options to choose from. So, if a developer wants to create a paid app, he can choose from these domains as it’s an untapped market.
# If a user wants to download an app, he can see the top 10 apps to install in top 10 different categories.
# Around 69 % of apps fall under small category i.e., the size of the app is less than 20 Mb which indicates that users tend to prefer apps with smaller size.

```


