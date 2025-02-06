# OLXP - Online Product Exchange System

## Overview
OLPX (Online Product Exchange) is a web-based platform that enables users to buy and sell second-hand products. This project follows the **MVC (Model-View-Controller) architecture**, utilizing **JSP, Servlets, Java classes**, and **PostgreSQL** as the database.

## Features
- User Registration & Login
- Product Listing (Sell Items)
- Product Browsing (Buy Items)
- Search & Filter Functionality
- Wishlist & Favorites
- Messaging System between Buyers & Sellers
- Admin Panel for Moderation

---

## **Tech Stack**
### **Backend:**
- Java (JSP, Servlets)
- JDBC
- PostgreSQL (Database)

### **Frontend:**
- HTML, CSS, JavaScript
- JSP (JavaServer Pages)
- Bootstrap (For Styling)

### **Development Tools:**
- Apache Tomcat (Server)
- PostgreSQL (Database Management System)
- Eclipse/IntelliJ IDEA (IDE)

---

## **Project Setup**

### **1. Install Prerequisites**
- Install **JDK 11+**
- Install **Apache Tomcat (9.x recommended)**
- Install **PostgreSQL (Latest Version)**

### **2. Clone the Repository**
```sh
git clone https://github.com/your-repo/olpx.git
cd olpx
```
### **3. Database Setup**
- Open PostgreSQL and create a new database:
```sql
CREATE DATABASE olpx;

psql -U your_username -d olpx -f olpx.sql
```
### **4. Configure Tomcat Server**
1. Open **Eclipse/IntelliJ IDEA**.
2. Add **Apache Tomcat** as a server:
   - In **Eclipse**: Go to `Window` > `Preferences` > `Server` > `Runtime Environments` > `Add` and select **Apache Tomcat**.
   - In **IntelliJ IDEA**: Go to `File` > `Settings` > `Application Servers` and configure **Tomcat**.
3. Deploy the `olpx.war` file to the Tomcat `webapps` directory:
   - If using **Eclipse**, right-click the project and select `Run As` > `Run on Server`.
   - If using **IntelliJ**, go to `Run` > `Edit Configurations`, select **Tomcat**, and add the artifact (`olpx.war`).
4. Start the **Tomcat** server.

### **5. Running the Project**
1. Open your browser.
2. Navigate to:
   ```sh
   http://localhost:8080/olpx

This section provides **detailed instructions** on setting up **Tomcat**, running the project, and the overall **file structure** for better understanding. 🚀 Let me know if you need further modifications! 😊
