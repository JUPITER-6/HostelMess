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
    <title>delete</title>
    <style>
        input[type=submit] {
            width: 20em;  height: 2em;
            background-color: powderblue;
        }
        body {background-color: #FFF8DC;}
        h1{ color:blue;  }

    </style>
</head>
<body >
<h1 align="center"> Enter Username of account to be deleted</h1> <br><br><br>
<form align="center" action="/deleteStudent" method="post">
    Username: <input type="text" name="username" width="30"><br><br><br><br>
    <input type="submit" value="delete"><br><br><br><br>

</form>
<p align="center"><a href="admin.jsp"><input  type="submit" value="Back"></a></p>
<br><br><br>
<p align="center" style="color: red">${errorMessage}</p>
</body>
</html>
