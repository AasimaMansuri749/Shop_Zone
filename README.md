# Project Title: Shop Zone - Online Fashion E-commerce Platform

---

##  Description

**Shop Zone** is a full-featured online shopping web application designed for seamless apparel shopping for men, women, and children. It allows customers to browse, filter, and purchase clothing items while providing robust admin functionalities to manage users, products, orders, and inventory.

The system supports multiple user roles such as **Admin**, **Customer**, **Delivery Person**, and **Guest**, with secure authentication and role-based access.

---


##  Tools & Technologies

- **Frontend** : HTML, CSS, Bootstrap 
- **Backend** : JSP, Servlets, JDBC
- **Database** : MYSQL
- **IDE** :  Eclipse  
---

##  Key Features
 - User Management:
   - Supports multiple user roles: Admin, Customer, Delivery Person, and Guest
   - Registration and login functionality with role-based redirection
   - Admin can add/edit/delete delivery persons and manage customer accounts
   - Guests can browse products but must register to place orders

- Product Browsing & Filtering:
  - Products categorized into Men, Women, and Kids collections
    Advanced filters include:
     - Price Range
     - Color
     - Discount Percentage
     - Category/Subcategory
     - Search bar with real-time suggestions for product names

 - Cart Management:
     - Users can:
         - Add multiple products
         - Increase/decrease item quantity
         - Remove individual items or clear entire cart
         - Total price dynamically calculated including discounts
- Order Management:
    - Place orders securely via checkout
    - View order history with itemized breakdown
    - Track real-time order status: Placed, Packed, Shipped, Delivered
    - Cancel orders if not yet shipped
- Payment System:
    - Supports Cash on Delivery (COD)
    - Payment status stored in the database with validation
-  Secure Authentication:
    - Encrypted password storage using hashing
    - Session handling with auto-logout on inactivity
    - Protected routes: only authorized users can access specific pages
    - Email validation and input sanitization to prevent SQL injection

- Reports for Admin:
   - Sales Report: Monthly/overall revenue summary
   - Inventory Report: Products in stock, low-stock alerts
   - User Report: Number of registered users, order count per user
   - Reports presented in tabular format with export functionality
- Feedback & Review System:
   - Customers can leave feedback after successful order delivery
   - Admin can view and moderate reviews
   - Feedback includes rating (optional) and textual comment
   - Helps improve service quality and trust


---

##  Security Features

-  Encrypted passwords using secure hashing
-  Role-based Access Control
-  SQL Injection Prevention via input validation
-  Session timeout and secure cookie handling
-  Proper error messages without exposing system internals

---

##  Admin Reports

-  **Sales Reports:** Monthly sales overview
-  **Inventory Reports:** Stock availability & low stock alerts
-  **User Reports:** Registered user statistics

---

##  How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/AasimaMansuri749/Shop_Zone
2. Import the project into NetBeans or your preferred Java IDE.

3. Configure MySQL:

  - Create a database named Shop_Zone.
   
  - Import the provided SQL file (shop_zone.sql).
   
  - Update DB credentials in your Java files (usually in the DAO or DB utility class).

4. Deploy the project on Apache Tomcat Server.


