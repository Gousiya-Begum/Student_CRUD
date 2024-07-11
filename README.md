# Student_CRUD

This project is a Java EE web application that demonstrates CRUD (Create, Read, Update, Delete) operations on a `students` table in a MySQL database using Servlets and JDBC.

- **Database Setup:**
  - MySQL database named `student_db`.
  - Table `students` with columns `id`, `name`, `email`, and `age`.

- **Java EE Components:**
  - Servlets (`CreateServlet.java`, `ReadServlet.java`, `UpdateServlet.java`, `DeleteServlet.java`) for handling CRUD operations.
  - JSP pages (`list.jsp`, `add.jsp`, `update.jsp`) for user interface.

- **Utility Class:**
  - `DBUtil.java`: Manages database connection.

## Setup Instructions

1. **Database Setup:**
   - Create a MySQL database named `student_db`.
   - Execute the following SQL script to create the `students` table:

   
     CREATE TABLE students (
         id INT PRIMARY KEY AUTO_INCREMENT,
         name VARCHAR(50),
         email VARCHAR(50),
         age INT
     );
   

2. **Import the Project into Eclipse:**
   - Clone or download this repository to your local machine.
   - Open Eclipse and import the project as an existing Dynamic Web Project (`File` > `Import` > `Existing Projects into Workspace`).

3. **Configure JDBC Driver:**
   - Download the JDBC driver for MySQL (e.g., `mysql-connector-java-x.y.z.jar`).
   - Place the JDBC driver JAR file in the `WebContent/WEB-INF/lib` directory of your project.

4. **Deploy the Project:**
   - Configure Apache Tomcat in Eclipse:
     - Open the `Servers` view (`Window` > `Show View` > `Servers`).
     - Right-click and select `New` > `Server`.
     - Choose `Apache` > `Tomcat` > select the Tomcat installation directory > `Finish`.
   - Add your project to the Tomcat server:
     - Right-click on the Tomcat server > `Add` or `Remove` Projects > Add your project.
     - Click `Finish` and then start the Tomcat server.

5. **Access the Application:**
   - Open a web browser and go to `http://localhost:8080/Student_CRUD.
   - You should see the homepage of your application.

## Usage

- **Adding a Student:**
  - Click on "Add Student" to navigate to the `add.jsp` page.
  - Enter student details and submit the form.

- **Reading Students:**
  - To see a list of all students in the database on the `list.jsp` page.

- **Updating a Student:**
  - Click on "Update" next to a student's entry on the `list.jsp` page to edit their details on the `update.jsp` page.

- **Deleting a Student:**
  - Click on "Delete" next to a student's entry on the `list.jsp` page to remove them from the database.

