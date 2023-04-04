# Amazon_Vine_Analysis
Module 17 - PySpark, Cloud Databases with Amazon Web Services

## Overview of the analysis: 
The purpose of this project is to analyze reviews for products listed on Amazon. Specifically, to make observations about the effect of the Amazon Vine program, which is a service that allows companies to pay Amazon to send products to customers who are required to write reviews on the products. In this analysis, the dataset used were for Pet Products. 

The data was first preprocessed via PySpark in [Google Colab](https://colab.research.google.com/drive/1vJLxCwk-2lAfRiBjRlt2HJCZLcaz52O_#scrollTo=7jiUvs1aY--L), then exported has tables for use in Postgres via pgAdmin, where the data was explored. 

## Results: The following questions were what was requested: 

- **How many Vine reviews and non-Vine reviews were there?**
Out of 2,643,618 reviews total, 10,215 of those reviews were paid via the Vine program, 2,633,398 were not paid via Vine. 
![Image](https://github.com/ahualoh/Amazon_Vine_Analysis/blob/main/Images/Vine_not_vine_reviews.png)

- **How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?**
Out of all 5-star veiws, 4,343 were Vine reviews and 1641209 were non-Vine reviews. 
![Image](https://github.com/ahualoh/Amazon_Vine_Analysis/blob/a38271f0ceb0b8de671e79939ad7b5cf8b599d92/Images/percentage_5_star_reviews.png)

- **What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?**
Of all Vine reviews, 42.5% were 5-stars, 32% were 4-stars, 16% were 3-stars, 6% were 2-stars, and 2% were 1-stars.  
![Image](https://github.com/ahualoh/Amazon_Vine_Analysis/blob/main/Images/Vine_star_counts.png)

## Summary:
Is there any positivity bias for reviews in the Vine program? Is there another additional analysis that you could be done with the dataset to support the answer? 

There seems to be some positivity bias, given that over 70% of reviews are 4-stars are more. BUT that doesn't necessarily mean that the reviews are untrue, nor are they inconsistent with overall reviews in general. It would be good for us to explore the whole dataset, and not just the vine reviews first, to see what the patterns are in the whole data set, then come back to narrow in on the patterns of the vine reviews. 

It could also be helpful to do some NLP to see what exactly is being said amonst the reviews. 
