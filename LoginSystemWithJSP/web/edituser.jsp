<%-- 
    Document   : edituser
    Created on : 04-Sep-2019, 12:37:06
    Author     : KHALID
--%>

<%@page import="java.sql.*"%>
<%
    if ((session.getAttribute("userid") == null)
            || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<% } else {
      String action=request.getParameter("edit");
      System.out.println(action);
      if(action.equals("Edit")){
           System.out.println("edited!!!!!");
           String pwd=request.getParameter("pass");
           String fname=request.getParameter("fname");
           String lname=request.getParameter("lname");
           String email=request.getParameter("email");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://"
                     + "localhost:3306/loginjdbc", "root", "7487");
           Statement st = con.createStatement();
           String query="update members set fist_name='"+fname+"',last_name='"+lname+"',"
+ "email='"+email+"',pass='"+pwd+"'  where uname='"+session.getAttribute("userid")+"'";
          System.out.println(query);
          int i=st.executeUpdate(query);
          if(i>0){
                  response.sendRedirect("editinfo.jsp");
          }else{
                 out.print("edit Unsuccessfull!"+"<a href='editinfo.jsp'>Go to Edit again</a>");
                }
         }else{
            out.print("You have no permission to delete this record!"+
"<a href='editinfo.jsp'>Go to Edit page</a>");
} 
}
%>