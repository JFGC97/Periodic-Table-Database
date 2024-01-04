# Periodic-Table-Database
periodic_table.sql - Script in SQL to build the periodic table

    You should rename the weight column to atomic_mass
    
    You should rename the melting_point column to melting_point_celsius and the boiling_point column to boiling_point_celsius
    
    Your melting_point_celsius and boiling_point_celsius columns should not accept null values
    
    You should add the UNIQUE constraint to the symbol and name columns from the elements table
    
    Your symbol and name columns should have the NOT NULL constraint
    
    You should set the atomic_number column from the properties table as a foreign key that references the column of the same name in the elements table
    
    You should create a types table that will store the three types of elements
    
    Your types table should have a type_id column that is an integer and the primary key
    
    Your types table should have a type column that's a VARCHAR and cannot be null. It will store the different types from the type column in the properties table
    
    You should add three rows to your types table whose values are the three different types from the properties table
    
    Your properties table should have a type_id foreign key column that references the type_id column from the types table. It should be an INT with the NOT NULL constraint
    
    Each row in your properties table should have a type_id value that links to the correct type from the types table
    
    You should capitalize the first letter of all the symbol values in the elements table. Be careful to only capitalize the letter and not change any others
    
    You should remove all the trailing zeros after the decimals from each row of the atomic_mass column. You may need to adjust a data type to DECIMAL for this. The final values they should be are in the atomic_mass.txt file
    
    You should add the element with atomic number 9 to your database. Its name is Fluorine, symbol is F, mass is 18.998, melting point is -220, boiling point is -188.1, and it's a nonmetal
    
    You should add the element with atomic number 10 to your database. Its name is Neon, symbol is Ne, mass is 20.18, melting point is -248.6, boiling point is -246.1, and it's a nonmetal
element.sh -  Script in shell to get information about chemical elements from a periodic table database
