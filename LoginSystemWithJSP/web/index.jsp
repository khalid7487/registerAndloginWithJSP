<%-- 
    Document   : index
    Created on : 04-Sep-2019, 10:43:31
    Author     : KHALID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form method="post" action="login.jsp">
            <center>
                <table border="1" width="30">
                    <thead>
                        <tr>
                            <th colspan="2">Login Here</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>User Name</td>
                            <td><input type="text" name="uname" value=""/></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="text" name="pass" value=""/></td>
                        </tr>
                        <tr>
                            <th colspan="2" ><input type="submit" value="Login" name="submit"/></th>
                       <!--     <td><input type="submit" value="Reset" name="reset"/></td> -->                
                        </tr>
                        <tr>
                            <td colspan="2">Already registered! <a href="reg.jsp">Yet Not Registered!!</a></td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>
