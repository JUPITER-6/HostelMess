<%--
  Created by IntelliJ IDEA.
  User: GURUPRASAD C
  Date: 4/11/2018
  Time: 5:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <style>
        input[type=submit] {
            width: 20em;  height: 2em;
            background-color: powderblue;
        }
        body {background-color: #FFF8DC;}
        h4{ color:#FF69B4;  }
    </style>
</head>
<body>
<br><br><br><br>
<h4 align="center" >ENTER PASSWORD</h4>
<br><br><br><br>
<form align="center" action="/adminLogin" method="post">

    PASSWORD: <input align="center" type="password" name="password" width="10">
    <br><br><br><br>
    <input type="submit" value="Login">
    <br><br><br><br>

</form>
<p align="center"><a href="index.jsp"><input  type="submit" value="Back"></a></p>
<br><br><br><br>
<p align="center" style="color: red">${errorMessage}</p>
</body>
</html>

