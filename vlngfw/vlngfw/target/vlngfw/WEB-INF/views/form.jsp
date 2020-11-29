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
        <title>Book form</title>
    </head>
</head>
<body>
<h1>Lest add some block buster!</h1>
<form:form method="post" action="add">
    <form:label path="title">Title</form:label>
    <form:input path="title"/>
    <br>
    <form:label path="writer">Writer</form:label>
    <form:input path="writer"/>
    <br>
    <form:label path="publisher">Publisher</form:label>
    <form:input path="publisher"/>
    <br>
    <form:label path="release_date">Release</form:label>
    <form:input type="date" path="release_date"/>
    <br>
    <form:label path="genre">Genre</form:label>
    <form:select path="genre" multiple="true">
        <form:options items="${genreTypes}"></form:options>
    </form:select>
    <br>
    <form:label path="type">Type</form:label>
    <form:select path="type" multiple="true">
        <form:options items="${typeTypes}"></form:options>
    </form:select>
    <br>
    <form:label path="length">Length</form:label>
    <form:input path="length"/>
    <br>
    <button type="submit">Ok! ADD IT</button>
</form:form>
<form action="${pageContext.servletContext.contextPath}/books">
    <button type="submit">books</button>
</form>
<form action="${pageContext.servletContext.contextPath}/">
    <button type="submit">BACK</button>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>

