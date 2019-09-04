<%-- 
    Document   : editinfo
    Created on : 04-Sep-2019, 12:10:20
    Author     : KHALID
--%>

<%@page import="java.sql.*"%>
<%
    if ((session.getAttribute("userid") == null)
            || (session.getAttribute("userid") == "")) {
%>
you are not logged in<br/>
<a href="index.jsp">Please Login</a>
<% } else {
    Class.forName("com.mysql.jdbc.Driver");
    String fname = "", lname = "", email = "", pass = "", regdate = "";
    Connection con = DriverManager.getConnection("jdbc:mysql://"
            + "localhost:3306/loginjdbc", "root", "7487");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select fist_name, last_name, email, uname, pass,"
            + " regdate from members where uname='" + session.getAttribute("userid") + "'");
    while (rs.next()) {
        fname = rs.getString("fist_name");
        lname = rs.getString("last_name");
        email = rs.getString("email");
        pass = rs.getString("pass");
        regdate = rs.getString("regdate");
    }
%>
<form action="edituser.jsp" method="POST">
    <center>
        <table border="1" width="30%">
            <thead>
                <tr>
                    <th colspan="2">User Info</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>User Name</td>
                    <td><%=session.getAttribute("userid")%></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="fname" value="<%=fname%>"></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lname" value="<%=lname%>"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" value="<%=email%>"></td>
                </tr>
                <tr>
                    <td>New Password</td>
                    <td><input type="text" name="pass" value=""></td>
                </tr>
                <tr>
                    <td>Registered On</td>
                    <td><%=regdate%></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Edit" name="edit"/></td>
                    <td><input type="submit" value="Delete" name="edit"/></td>
                </tr>
            </tbody>
        </table>
    </center>
                <a href="success.jsp">Go to Home</a>        
                <a href="logout.jsp">Logout</a>        
</form>
<%}%>


