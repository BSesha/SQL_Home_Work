/* Recommend toys to each kid who is above the minimum required age to play with those toys */

SELECT * 
FROM dataset.Toys_info AS T 
JOIN dataset.Kids_info AS K 
ON K.Age >= T.min_age;


/*
* Explanation:
* JOIN Condition: K.Age >= T.min_age ensures kids are matched with toys appropriate for their age.
* Filtering: Ensures kids meet the minimum age requirement for each toy.
*/
