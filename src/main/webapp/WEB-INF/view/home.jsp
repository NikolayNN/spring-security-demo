<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
    <title>Home Page</title>
</head>

<body>
<h2>Welcome to the home page </h2>
</body>

<hr/>
<p>
    User: <security:authentication property="principal.username" />
    <br>
    Role(s): <security:authentication property="principal.authorities" />
</p>
<hr/>

<p>
    <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meetin</a>
    (Only for Manager peeps)
</p>

<p>
    <a href="${pageContext.request.contextPath}/system">IT Meeting</a>
    (Only for Admin peeps)
</p>

<hr/>



<form:form action="${pageContext.request.contextPath}/logout" method="POST">

    <input type="submit" value="Logout"/>

</form:form>

</html>