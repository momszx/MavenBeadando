<%@ page isELIgnored="false"%>
<html>
<head>
    <link rel="stylesheet" href="https://bootswatch.com/4/lux/bootstrap.min.css">
    <title>Books</title>
</head>
<body>
<h1>Organize your Books! #DM</h1>
<form action="${pageContext.servletContext.contextPath}/cassettes">
    <button type="submit">List Books</button>
</form>
<form action="${pageContext.servletContext.contextPath}/add">
    <button type="submit">Add new Book</button>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>