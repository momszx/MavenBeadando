<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<c:set var="context" value="${pageContext.request.contextPath}" />
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
    <table>
        <tr>
            <td><form:label path="title">Title</form:label></td>
            <td><form:input type="text" path="title" /></td>
        </tr>
        <tr>
            <td><form:label path="writer">Writer</form:label></td>
            <td><form:input path="writer"/></td>
        </tr>
        <tr>
            <td><form:label path="publisher">Publisher</form:label></td>
            <td><form:input path="publisher"/></td>
        </tr>
        <tr>
            <td><form:label path="release_date">Release</form:label></td>
            <td><form:input type="date" path="release_date"/></td>
        </tr>
        <tr>
            <td><form:label path="genre">Genre</form:label></td>
    <%-- <td><form:select path="genre" multiple="true">
         <form:options items="${genreTypes}"></form:options>
         </form:select>--%>
 </tr>
 <tr>
     <td> <form:label path="type">Type</form:label></td>
    <%-- <td><form:select path="type" multiple="true">
         <form:options items="${typeTypes}"></form:options>
     </form:select></td>--%>
 </tr>
 <tr>
     <td><form:label path="length">Length</form:label></td>
     <td> <form:input path="length"/></td>
 </tr>
 <tr>
     <td><button type="submit">Ok! ADD IT</button>
         </form:form></td>
 </tr>
</table>
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

