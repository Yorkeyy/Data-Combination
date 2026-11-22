/*
WHAT ARE SET OPERATORS? Set operators in SQL combines the results of multiple queries 
into a single result set. They are used to combine the rows of multiple tables.

RULE: 
1. The number of colums in each query must be the same
2. Sql Clauses: Set operators can be used almost in all sql claused (WHERE,JOIN,GROUP BY,HAVING) except ORDER BY which can be used only once and at the end of the entire queries.
3. The datatype of each query must match
4. The order of column in each query must be the same
5. The column names in the result set are determined by the column names specified in the first query. all aliases must be done in the first query
6. even if all rules are met and sql shows no error, the reuslt mayb be incorrect, incorrect column selection leads to inaccurate results.
*/
# UNION: returns all distinct results of the both query. it excludes duplicate results
-- Combine the data from employees and customers into one table

SELECT firstname,
	   lastname
FROM employees
UNION
SELECT firstname,
	   lastname
FROM customers;

#UNION ALL: it will return all the rows in the query including duplicate
-- union all has better performance and its faster than Union.
# Combine the result of the employees and customers including the duplicate.

SELECT firstname,
	   lastname
FROM employees
UNION ALL
SELECT firstname,
	   lastname
FROM customers;

# EXCEPT: Also known as minus, it returns all distinct rows from the first query that are not found in the second query
-- the order of the query must affect the result

SELECT firstname,
	   lastname
FROM employees
 EXCEPT
SELECT firstname,
	   lastname
FROM customers;

# INTERSECT: returns all the common result from the two query
-- Find the employees who are also customers

SELECT firstname,
	   lastname
FROM employees
INTERSECT
SELECT firstname,
	   lastname
FROM customers;



