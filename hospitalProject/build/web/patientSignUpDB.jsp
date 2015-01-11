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
<%@ page import="com.hospital.SessionIdentifierGenerator"%>  
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
                    int rs=0;
                    Class.forName("com.mysql.jdbc.Driver");
                     con=DriverManager.getConnection("jdbc:mysql://sql3.freemysqlhosting.net:3306/sql363857","sql363857","hY1%sA1!");
                    //con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "Cst_Est_Pst");
                
                    
                    String a = "";
                    String fname = request.getParameter("fname");
                   
                    String lname = request.getParameter("lname");
                   
                    String name = request.getParameter("name");
                   
                    String phoneNo = request.getParameter("phoneNo");
                      
                    String mailId = request.getParameter("mailId");
                   
                    String pwd = request.getParameter("pwd");
                     
                    String conPwd = request.getParameter("conpwd");
                    SessionIdentifierGenerator as=new SessionIdentifierGenerator();
                   
                   String randamnum=as.nextSessionId();
                   as.sendValidationMail(randamnum,mailId);
                   System.out.println("request="+request);
               
                    Statement st = con.createStatement();
                    String s = "insert into  tbl_patient Values('"+fname+"','"+lname+"','"+name+"','"+pwd+"','male','"+mailId+"','"+phoneNo+"','0','"+randamnum+"')";
                    System.out.println(s);
                    rs = st.executeUpdate(s);
                    a = "OK";
                    if (rs!=0) {
                        response.sendRedirect("search.jsp");
                        
                %>
            <script type="text/javascript">
                alert("Logged in successfully");
                window.location='search.jsp';
            </script>
            <%                            } else {
                        
            
            response.sendRedirect("signUp.jsp");
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
