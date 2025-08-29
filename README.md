# Book Tracker Database

## Overview
This project implements a **book tracking system** in MySQL.  
The database models four core entities:  
- **Genres** – categories of books  
- **Books** – individual books with metadata  
- **Reading Status** – tracks whether a book is *Read*, *Currently Reading*, or *Want to Read*  
- **Reviews** – user ratings and written feedback  

The design uses **normalized tables** to avoid redundancy, with constraints for data integrity (e.g., `ENUM` for status, `CHECK` for rating range). The EER diagram visually shows the connections and cardinalities.

---

## Files in this Repo
- `EER_Diagram_books.mwb` → MySQL Workbench EER diagram  
- `book_tracker_schema.sql` → Creates database + tables + constraints  
- `sample_data.sql` → Inserts sample data (genres, books, statuses, reviews)  
- `views.sql` → Defines useful views for common lookups  
- `indexes.sql` → Creates indexes for performance  
- `sample_queries.sql` → Example queries to validate design  
- `book_tracker_data_full.xlsx` → Spreadsheet version of dataset  
- `README.md` → Project summary and instructions  

---

## How to Run
In MySQL Workbench or CLI, run scripts in this order:

```sql
SOURCE book_tracker_schema.sql;
SOURCE sample_data.sql;
SOURCE views.sql;
SOURCE indexes.sql;
SOURCE sample_queries.sql; -- optional (for demos)
