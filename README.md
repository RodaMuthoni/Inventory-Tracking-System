# Inventory Tracking System

## Project Description

This is an **Inventory Tracking System** built using MySQL to help manage and track the inventory of products in a business or warehouse. The system allows users to store and manage product details, track inventory levels, and generate reports.

### Features:

* Track products and their details (e.g., name, category, vendor, stock levels).
* Update stock levels when products are received or sold.
* Generate inventory reports based on product categories, stock levels, etc.
* Simple user-friendly design.

## Database Design

The system is designed with the following key entities:

* **Products**: Contains information about the products.
* **Vendors**: Contains information about the vendors supplying the products.
* **Categories**: Categorizes the products into different types.
* **Orders**: Tracks incoming or outgoing inventory orders.

### Relationships:

* **One-to-Many (1\:M)**: A product belongs to one category, and a category can have multiple products.
* **Many-to-One (M:1)**: A product is supplied by one vendor, but a vendor can supply multiple products.

---

## How to Run/Setup the Project

To use the **Inventory Tracking System** in your local environment, follow these steps:

### Prerequisites:

* MySQL server installed.
* MySQL Workbench or another MySQL client.
* Git (for version control).

### Setup:

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/inventory-tracking-system.git
   cd inventory-tracking-system
   ```

2. **Create a new database in MySQL:**

   Open MySQL Workbench or your preferred client and run:

   ```sql
   CREATE DATABASE inventory_tracking;
   USE inventory_tracking;
   ```

3. **Import the SQL file:**

   Inside the cloned repository, you will find the `answers.sql` file. Run this file in MySQL Workbench or your client to create all necessary tables and relationships.

   ```bash
   source /path/to/answers.sql;
   ```

4. **Start using the system:**

   Once the SQL file is executed, the database will be set up and you can begin adding, updating, and tracking inventory.

## Technologies Used

* **MySQL**: Relational database management system.
* **Git**: Version control system for managing code.

---
