# Data-Combination
different techniques for combining data of multiple tables

Why Do we combine Data?
We combine data in SQL because real-world databases split information into separate, focused tables to keep storage efficient and prevent duplicate data. Combining those tables back together lets you answer complex questions and see the full picture in a single query.

Main Reasons to Combine Data
* COMPLETE PICTURE: Databases separate entities like storing employees in one table and departments in another so you must link them to see which department each person belongs to.

* DATA ENRICHMENT: You can pull extra context from reference or lookup tables (such as matching a customer ID to their order history or shipping address).

* Avoid messy storage: Storing everything in one massive table repeats the same facts over and over, wasting space and making updates error-prone. Keeping tables separate (a process called normalization) and combining them only when needed keeps the database clean and fast.

* Consolidate similar lists: Sometimes data of the exact same type is split across multiple tables (like 2025_sales and 2026_sales), and combining them lets you analyse multi-year trends at once.

* Spot missing records: Combining tables helps you check for existence—such as finding customers who have never placed an order or products that have never sold.

  # TWO MAIN WAYS OF COMBINING DATA
  1. JOINS
  2. SET OPERATORS
