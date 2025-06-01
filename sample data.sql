/*# 🧠 SQL LEFT JOIN: Person and Address Example

This example demonstrates how to use a **LEFT JOIN** in SQL to retrieve all persons from the `Person` table, 
including those who may not have a matching record in the `Address` table.

---

## 🧾 Objective

> Report the **first name**, **last name**, **city**, and **state** of every person in the `Person` table.  
> If an address for a `personId` is not present in the `Address` table, return `NULL` for `city` and `state`.

---

## 🗂️ Tables Involved

### `Person`
| Column     | Type         |
|------------|--------------|
| personId   | INT (PK)     |
| firstname  | NVARCHAR(30) |
| lastname   | NVARCHAR(30) |

### `Address`
| Column     | Type         |
|------------|--------------|
| addressId  | INT (PK)     |
| personId   | INT (FK)     |
| city       | NVARCHAR(30) |
| state      | NVARCHAR(30) |

---

## 🧪 Sample Data

```sql
*/
-- Create Person table
CREATE TABLE Person (
  personId INT NOT NULL PRIMARY KEY, 
  lastname NVARCHAR(30),
  firstname NVARCHAR(30)
);

-- Create Address table
CREATE TABLE Address (
  addressId INT NOT NULL PRIMARY KEY, 
  personId INT, 
  city NVARCHAR(30),
  state NVARCHAR(30)
);

-- Insert sample data into Person
INSERT INTO Person (personId, lastname, firstname)
VALUES 
  (1, 'Singh', 'Rahul'),
  (2, 'Kumar', 'Rohit');

-- Insert sample data into Address
INSERT INTO Address (addressId, personId, city, state)
VALUES 
  (1, 2, 'Bhopal', 'MP'),
  (2, 3, 'Noida', 'P'); -- Note: personId 3 doesn't exist in Person
