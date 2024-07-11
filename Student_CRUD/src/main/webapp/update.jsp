<%@ page import="com.student.model.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            color: #555;
            text-align: left;
        }
        input[type="text"] {
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            padding: 10px;
            background-color: #5cb85c;
            border: none;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
        a {
            display: block;
            margin-top: 20px;
            color: #5cb85c;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Update Student</h1>
    <%
        Student student = (Student) request.getAttribute("student");
    %>
    <form action="update" method="post">
        <input type="hidden" name="id" value="<%= student.getId() %>">
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" value="<%= student.getName() %>">
        <label for="email">Email:</label>
        <input type="text" name="email" id="email" value="<%= student.getEmail() %>">
        <label for="age">Age:</label>
        <input type="text" name="age" id="age" value="<%= student.getAge() %>">
        <input type="submit" value="Update Student">
    </form>
    <a href="list.jsp">Back to List</a>
</div>
</body>
</html>
