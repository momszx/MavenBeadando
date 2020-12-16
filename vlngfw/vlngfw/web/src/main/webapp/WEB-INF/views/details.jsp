<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: momsz
  Date: 2020. 11. 24.
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <link rel="stylesheet" href="https://bootswatch.com/4/lux/bootstrap.min.css">
        <title>Book details</title>
    </head>
</head>
<body>
<table align="center">
    <h1>Look what is it?</h1>

    <tr>
        <td>Title</td>
        <td>${book.title}</td>
    </tr>
    <tr>
        <td>Writer</td>
        <td>${book.writer}</td>
    </tr>
    <tr>
        <td>Publisher</td>
        <td>${book.publisher}</td>
    </tr>
    <tr>
        <td>Release</td>
        <td>${book.release_date}</td>
    </tr>
    <tr>
        <td>Genre</td>
        <td><c:forEach items="${book.genre}" var="genre">
            ${genre}
        </c:forEach></td>
    </tr>
    <tr>
        <td>Type</td>
        <td><c:forEach items="${book.type}" var="type">
            ${type}
        </c:forEach></td>
    </tr>
    <tr>
        <td>Length</td>
        <td>${book.length}</td>
    </tr>
</table>
<form action="${pageContext.servletContext.contextPath}/books">
    <button type="submit">Books</button>
</form>
<form action="{pageContext.servletContext.contextPath}/">
    <button type="submit">BACK</button>
</form>
<br>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
