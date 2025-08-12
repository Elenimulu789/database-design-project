# database-design-project

# Book Tracker Database Design

This database models a book tracking system with four core entities: genres, books, reading statuses, and reviews. Each table has a primary key to uniquely identify records, and foreign keys establish relationships — such as books linked to genres, and reading statuses/reviews tied to books. The design uses normalized tables to avoid redundancy, with constraints to ensure data integrity (e.g., ENUM for reading status, checks on ratings). The EER diagram visually shows these connections and cardinalities. Challenges included balancing realistic data variety and maintaining referential integrity in sample data. The dataset was generated with realistic values to support testing and future scalability. This structure supports tracking personal reading habits and gathering user feedback efficiently.
