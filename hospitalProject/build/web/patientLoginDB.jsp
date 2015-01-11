<%-- 
    Document   : patientLoginDB
    Created on : Jan 5, 2015, 3:49:59 PM
    Author     : machies
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
                       
<%
                try {
                         Connection con = null;
                    ResultSet rss;
                    Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection("jdbc:mysql://sql3.freemysqlhosting.net:3306/sql363857","sql363857","hY1%sA1!");
                
                    
                    String a = "";
                    String name = request.getParameter("name");
                   
                    String pw = request.getParameter("pwd");
                   
               
                    Statement st = con.createStatement();
                    String s = "select uname,pwd from tbl_patient where uname='" + name + "' and pwd='" + pw + "'";
                    rss = st.executeQuery(s);
                    a = "OK";
                    if (rss.next()) {
                        response.sendRedirect("search.jsp");
                        
                %>
<!--            <script type="text/javascript">
                alert("Logged in successfully");
                window.location='search.jsp';
            </script>-->
            <%                            } else {
                        
            
            response.sendRedirect("PatientLogin.jsp");
            %>

            <script type="text/javascript">
                     
                alert("Please enter correct username and password");
                window.location='PatientLogin.jsp';
                    
            </script>  

            <%  }

                } 
                catch (SQLException e)
                        {
                    out.println(e);
                }            
%>
        
    </body>
</html>
