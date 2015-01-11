<%-- 
    Document   : doctorDB
    Created on : Dec 19, 2014, 12:23:00 PM
    Author     : machies
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
        
            try{
                Connection con=null;
                Class.forName("com.mysql.jdbc.Driver");
                //con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "Cst_Est_Pst");
                 con=DriverManager.getConnection("jdbc:mysql://sql3.freemysqlhosting.net:3306/sql363857","sql363857","hY1%sA1!");
                String Dname=request.getParameter("dname");
                String hdeg=request.getParameter("hdegree");
                String spec=request.getParameter("spc");
                String exp=request.getParameter("exp");
                String gend=request.getParameter("gen");
                String mail=request.getParameter("mail");
                String loc=request.getParameter("location");
                String susope=request.getParameter("operation");
                String failop=request.getParameter("fail");
                String phone=request.getParameter("phone");
                String address=request.getParameter("address");
                    
                     
                PreparedStatement pst=con.prepareStatement("insert into tbl_doctor(dname,higdegree,spec,exp,gender,mail,location,susoperation,failoperation,phone,haddress) values(?,?,?,?,?,?,?,?,?,?,?)");
                
                pst.setString(1, Dname);
                pst.setString(2, hdeg);
                pst.setString(3, spec);
                pst.setString(4, exp);
                pst.setString(5,gend );
                pst.setString(6, mail);
                pst.setString(7, loc);
                pst.setString(8, susope);
                pst.setString(9, failop);
                pst.setString(10, phone);
                pst.setString(11, address);
                
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
