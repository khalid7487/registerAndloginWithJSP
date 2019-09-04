<%-- 
    Document   : logout
    Created on : 04-Sep-2019, 12:11:27
    Author     : KHALID
--%>
<%
    session.setAttribute("userid", null);
    session.invalidate();
    response.sendRedirect("index.jsp");

%>
    