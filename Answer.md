# Assignment

## Question

Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

## Answer

The relationship between the "Product" and "Product_Category" entities in the given diagram is a many-to-one relationship. This means that many products can belong to one category, but each product is associated with only one category.

In the diagram, the "Product" entity contains a foreign key called "category_id" that references the primary key of the "Product_Category" entity, which is named "id." This foreign key establishes the relationship between the two entities, allowing multiple products to be associated with a specific category.

## Question 

How could you ensure that each product in the "Product" table has a valid category assigned to it?

## Answer
To ensure that each product in the "Product" table has a valid category assigned to it, we can implement Referential Integrity Constraint, In most relational database management systems (RDBMS), we can define a foreign key constraint on the "category_id" column in the "Product" table, which references the "id" column in the "Product_Category" table. This constraint enforces that the value of "category_id" in the "Product" table must exist in the "id" column of the "Product_Category" table, or it must be NULL (if nulls are allowed). This way, we cannot insert a product with an invalid or non-existent category ID.

Alternatively, we can implement check constraints, application-level validation, or triggers.

