


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head><title>Confirmation</title></head>

<%
    String favLang = request.getParameter("favoriteLanguage");
    Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
    theCookie.setMaxAge(60*60*24*365);    // <-- for one year
    response.addCookie(theCookie);
%>
<body>
Thanks! We set your favorite language to: <%=request.getParameter("favoriteLanguage")%>
<br/><br/>

<a href="cookies-homepage.jsp">Return to homepage.</a>

</body>

</html>
