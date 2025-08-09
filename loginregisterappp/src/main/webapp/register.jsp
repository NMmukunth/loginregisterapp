<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>NM'S REGISTERr</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #a4508b, #5f0a87);
        color: white;
    }
    .container {
        background: rgba(255, 255, 255, 0.1);
        padding: 30px;
        border-radius: 15px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(0,0,0,0.3);
    }
    h2 {
        margin-bottom: 20px;
    }
    input[type="text"], input[type="email"], input[type="password"], input[type="submit"] {
        padding: 10px;
        margin: 10px 0;
        border: none;
        border-radius: 5px;
        width: 100%;
        font-size: 14px;
    }
    input[type="text"], input[type="email"], input[type="password"] {
        background: rgba(255, 255, 255, 0.8);
        color: #333;
    }
    input[type="submit"] {
        background-color: #ff6ec4;
        color: white;
        font-weight: bold;
        cursor: pointer;
        transition: background 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #f5576c;
    }
    a {
        color: #ff6ec4;
        text-decoration: none;
        font-weight: bold;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Register</h2>
    <form action="register" method="post">
        Name: <input type="text" name="name" required><br>
        Email: <input type="email" name="email" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Register">
    </form>
    <!-- Link to Login page -->
    <p>Already have an account? <a href="login.jsp">Login here</a></p>
</div>
</body>
</html>

