<%-- 
    Document   : login
    Created on : 04-Sep-2019, 11:38:58
    Author     : KHALID
--%>

<%@page import="java.sql.*"%>
<%
   String userid=request.getParameter("uname");
   String pwd=request.getParameter("pass");
   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://"
                    + "localhost:3306/loginjdbc", "root", "7487");
   Statement st=con.createStatement();
   ResultSet rs;
   rs=st.executeQuery("select * from members where uname='"+userid+"'"
           + " and pass='"+pwd+"'");
   if(rs.next()){
       //get login username
       session.setAttribute("userid", userid);
       response.sendRedirect("success.jsp");
   }else{
       out.println("Invalid password <a href='index.jsp'>try again</a>");
   }
%>
