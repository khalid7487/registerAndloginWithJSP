<%-- 
    Document   : registration
    Created on : 04-Sep-2019, 10:52:53
    Author     : KHALID
--%>

<%@page import="java.sql.*"%>
<%
    String user=request.getParameter("uname");
    String pwd=request.getParameter("pass");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://"
                    + "localhost:3306/loginjdbc", "root", "7487");
    Statement st=con.createStatement();
    //ResultSet rs
    int i=st.executeUpdate("insert into members(fist_name, last_name, email, uname, pass, regdate)"
            + "values ('"+fname+"','"+lname+"','"+email+"',"
                    + "'"+user+"','"+pwd+"',CURDATE())");
    if(i>0){
        response.sendRedirect("welcome.jsp");
    }else{
        response.sendRedirect("index.jsp");
    }
%>