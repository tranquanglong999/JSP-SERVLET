
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<c:set var="data" value="Apple,Banana,Orange" />
<ul>
    <c:forTokens var="token" items="${data}" delims=",">
        <li>${token}</li>
    </c:forTokens>
</ul>
</body>
</html>

</body>
</html>
