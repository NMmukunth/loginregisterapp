<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Success</title>
<style>
    body {
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #6a11cb, #2575fc);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: white;
        text-align: center;
    }
    h2 {
        font-size: 32px;
        font-weight: bold;
        background: linear-gradient(90deg, #f8ffae, #43c6ac);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        animation: fadeIn 1s ease-in-out;
    }
    @keyframes fadeIn {
        from { opacity: 0; transform: scale(0.9); }
        to { opacity: 1; transform: scale(1); }
    }
</style>
</head>
<body>
    <h2>Welcome, <%= request.getAttribute("username") %>!</h2>
</body>
</html>
