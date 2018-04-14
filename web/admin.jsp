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
    <title>admin</title>
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
<h1 align="center">WELCOME</h1><br/><br/><br/>
<p align="center">
    <a  href="addStudent.jsp"><input type="submit" value="Add student"> <br/><br/><br/></a>

    <a href="deleteStudent.jsp"><input type="submit" value="Delete student"></a>
    <br/><br/><br/>
    <a href="index.jsp"><input type="submit" value="Back"></a>

</p>
</body>
</html>
