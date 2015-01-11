<%-- 
    Document   : validatePatient
    Created on : Jan 11, 2015, 6:36:10 PM
    Author     : mahesh
--%>

<%@ page import="java.sql.*"%>  

<%  
String s=request.getParameter("val");  
if(s==null || s.trim().equals("")){  
//out.println("Please enter id");  
System.out.println("-----"+s);
}else{  
//int id=Integer.parseInt(s);  
//out.println(s);  
 System.out.println("-----"+s);
try{  
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
  //con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "Cst_Est_Pst");
    con=DriverManager.getConnection("jdbc:mysql://sql3.freemysqlhosting.net:3306/sql363857","sql363857","hY1%sA1!");             
                    
PreparedStatement ps=con.prepareStatement("update  tbl_patient set validated='1' where random_number='"+s+"'");  
//ps.setString(1,s);  
int rs=ps.executeUpdate();  
System.out.println(rs);
//while(rs.next()){ 
//    System.out.println("inside while");
//out.println(rs.getString(1));  
//}  
if(rs!=0){
out.println("Your account validated sucessfully");
 String url="PatientLogin.jsp?val="+1; 
 

 response.sendRedirect(url);
%>

<%
  System.out.println("Account validated");
}else{
 System.out.println("Account  not validated");
}
con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>  
