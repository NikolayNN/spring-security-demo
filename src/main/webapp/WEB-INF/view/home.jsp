<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
    <title>Home Page</title>
</head>

<body>
    <h2>Welcome to the home page </h2>
</body>

    <form:form action="${pageContext.request.contextPath}/logout" method="POST">

        <input type="submit" value="Logout" />

    </form:form>

</html>