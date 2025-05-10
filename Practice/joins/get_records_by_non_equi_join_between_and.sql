/* Recommend toys to each kid who falls within the right age group to play with those toys */

SELECT * 
FROM dataset.Toys_info AS T 
JOIN dataset.Kids_info AS K 
ON K.Age BETWEEN T.min_age AND T.max_age;

/*
* Explanation:
* JOIN Condition: K.Age BETWEEN T.min_age AND T.max_age ensures kids are matched with toys within their age range.
* Filtering: Ensures kids fall within the specified age limits for each toy.
*/
