<%--
  Created by IntelliJ IDEA.
  User: GURUPRASAD C
  Date: 4/11/2018
  Time: 5:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>user</title>
    <style>
        input[type=submit] {
            width: 20em;  height: 2em;
            background-color: powderblue;
        }
        input[type=button] {
            width: 20em;  height: 2em;
            background-color: powderblue;
        }
        body {background-color: #FFF8DC;}
        h1{ color:blue;  }

    </style>
</head>
<body>
<h1 align="center"> Welcome to Login Screen</h1> <br><br><br>
<form align="center" action="/userLogin" method="post">
    Username: <input type="text" name="username" width="30"><br><br><br>
    password: <input type="password" name="password" width="10"><br><br><br>
    <input type="submit" value="LOGIN"><br><br><br>

</form>
<p align="center"><a href="index.jsp"><input  type="button" value="BACK"></a></p>
<br><br><br>
<p align="center" style="color: red">${errorMessage}</p>
<p align="center" style="color: blue">${message}</p>

</body>
</html>
