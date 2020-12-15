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
    <link rel="stylesheet" href="https://bootswatch.com/4/lux/bootstrap.min.css">
    <title>Book List</title>
</head>
<body>
<h1>What we have so far ?!</h1>
<c:if test="${!empty books}">
    <h1>What we have so far</h1>
    <table align="center" frame="border" width="1150" rules="all">
        <tr>
            <td><b>Title</b></td>
            <td><b>Writer</b></td>
            <td><b>Publisher</b></td>
            <td><b>Release date</b></td>
            <td><b>Genre</b></td>
            <td><b>Type</b></td>
            <td><b>Length</b></td>
        </tr>
        <c:forEach items="${books}" var="book">
            <tr>
                <td>
                    <a href="${pageContext.servletContext.contextPath}/book/${book.title}">
                            ${book.title}</a>
                </td>
                <td>${book.writer}</td>
                <td>${book.publisher}</td>
                <td>${book.release}</td>
                <td>
              <c:forEach items="${book.genre}" var="genre">
                  ${genre}
              </c:forEach>
          </td>
          <td>
               <c:forEach items="${book.type}" var="type">
                 ${type}
             </c:forEach>
         </td>
         <td>${book.length}</td>
     </tr>
 </c:forEach>
</table>
</c:if>
<c:if test="${empty books}">
<h1>Ohh no! I don't have any!</h1>
</c:if>
<form action="${pageContext.servletContext.contextPath}/add">
<button type="submit">Add new book</button>

</form>
<form action="${pageContext.servletContext.contextPath}/">
<button type="submit">BACK</button>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>