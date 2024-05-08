<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h1>Welcome to Medi-Connect</h1>
    <p>Email: <%= session.getAttribute("email") %></p>
    <p>Role: <%= session.getAttribute("role") %></p>
</body>
</html>
