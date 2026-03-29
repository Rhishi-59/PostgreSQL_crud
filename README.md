 Inventory Management CRUD System (SQL Only):
 
A robust PostgreSQL-based CRUD (Create, Read, Update, Delete) project designed to manage a retail product inventory. This project demonstrates database schema design, data integrity constraints, and automated indexing.

 Features
 
Data Integrity: Uses CHECK constraints to ensure prices and stock quantities are never negative.
Automated Tracking: Includes added_on and last_updated timestamps for audit trails.
Unique Identification: Implements SKU_CODE as a unique secondary key alongside the primary ID.
Seed Data: Comes pre-loaded with sample products across categories like Electronics, Fitness, and Stationery.

 How to Setup
 
1.Clone the repository

2.Import the database:
Open your terminal (or psql tool) and run the following command to create the schema and load the seed data:
psql -U your_username -d your_database_name -f crud_project.sql

3.Use CRUD queries to work with it.
