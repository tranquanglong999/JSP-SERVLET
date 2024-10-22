<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
    <form action="todo-demo.jsp">
    Add new item: <input type="text" name="theItem" />
    <input type="submit" value="Submit" />
    </form>
    <%
        List<String> items = (List<String>) session.getAttribute("myToDoList");
        if (items == null) {
            items = new ArrayList<>();
            session.setAttribute("myToDoList", items);
        }
        String theItem = request.getParameter("theItem");

        boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
        boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());

        if (isItemNotEmpty && isItemNotDuplicate) {
            items.add(theItem);
        }
    %>
    <hr>
    <b>To List Items:</b> <br/>
    <ol>
        <%
            for (String temp : items) {
                out.println("<li>" + temp + "</li>");
            }
        %>
    </ol>
</body>
</html>
