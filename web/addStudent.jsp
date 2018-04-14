<%--
  Created by IntelliJ IDEA.
  User: GURUPRASAD C
  Date: 4/11/2018
  Time: 5:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add</title>
    <style>
        input[type=submit] {
            width: 20em;  height: 2em;
            background-color: powderblue;
        }
        body {background-color: #FFF8DC;}
        h1{ color:blue;  }

    </style>
</head>
<body>
<h1> Enter the below details</h1>
<form align = "center" action="/addStudent" method="post">
    Full name:<input type="text" name="name" width="30"><br><br><br>
    Department:<input type="text" name="department" width="30"><br><br><br>
    Current Year:<input type="number" name="year" width="30"><br><br><br>
    user-name: <input type="text" name="username" width="30"><br><br><br>
    password: <input type="password" name="password" width="30"><br><br><br>
    <input type="submit" value="ADD">
    <br><br><br>

</form>
<p align="center"><a href="admin.jsp"><input  type="submit" value="Back"></a></p>
<br><br><br>
<p align="center"  style="color: red">${errorMessage}</p>
</body>
</html>
