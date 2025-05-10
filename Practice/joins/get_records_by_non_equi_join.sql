/* Recommend new countries to users that they have not visited yet */

SELECT * 
FROM dataset.User AS T1 
JOIN dataset.Country AS T2 
ON T1.country_visited <> T2.travel_to;


/*
* Explanation:
* Non-Equi JOIN: Uses <> instead of = to find countries users haven’t visited.
* Filtering: Ensures users are matched with countries they haven’t traveled to.
*/
