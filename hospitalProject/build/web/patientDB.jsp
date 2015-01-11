<%-- 
    Document   : patientDB
    Created on : Dec 13, 2014, 11:46:08 AM
    Author     : machies
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
        
            try{
                Connection con=null;
                Class.forName("com.mysql.jdbc.Driver");
               // con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "root");
                con=DriverManager.getConnection("jdbc:mysql://sql3.freemysqlhosting.net:3306/sql363857","sql363857","hY1%sA1!"); 
                String fname=request.getParameter("Fname");
                String lname=request.getParameter("Lname");
                String uname=request.getParameter("Uname");
                String password=request.getParameter("pwd");
                String gender=request.getParameter("gen");
                String mail=request.getParameter("mail");
                String phone=request.getParameter("phone");
                
                PreparedStatement pst=con.prepareStatement("insert into tbl_patient(fname,lname,uname,pwd,gender,email,phone) values(?,?,?,?,?,?,?)");
                
                pst.setString(1, fname);
                pst.setString(2, lname);
                pst.setString(3, uname);
                pst.setString(4, password);
                pst.setString(5,gender );
                pst.setString(6, mail);
                pst.setString(7, phone);
                pst.executeUpdate();
                pst.close();
                con.close();
                
                response.sendRedirect("search.jsp");
          
                
    }catch(Exception e)
               {
        System.out.println("Exception"+e);
}
%>
        
    </body>
</html>
