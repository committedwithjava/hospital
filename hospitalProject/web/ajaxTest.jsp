<%-- 
    Document   : ajaxTest
    Created on : Jan 11, 2015, 3:55:18 PM
    Author     : mahesh
--%>

<%@ page import="java.sql.*"%>  

<%  
String s=request.getParameter("val");  
if(s==null || s.trim().equals("")){  
//out.println("Please enter id");  
}else{  
//int id=Integer.parseInt(s);  
//out.println(s);  

try{  
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
  //con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "Cst_Est_Pst");
  con=DriverManager.getConnection("jdbc:mysql://sql3.freemysqlhosting.net:3306/sql363857","sql363857","hY1%sA1!");               
                    
PreparedStatement ps=con.prepareStatement("select uname from tbl_patient where uname='"+s+"'");  
//ps.setString(1,s);  
ResultSet rs=ps.executeQuery();  
System.out.println(rs);
//while(rs.next()){ 
//    System.out.println("inside while");
//out.println(rs.getString(1));  
//}  
if(rs.next()){
out.println("User Name Already exist ");
}
con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>  