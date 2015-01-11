<%-- 
    Document   : searDB
    Created on : Jan 6, 2015, 11:57:17 AM
    Author     : machies
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Social Network</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script id="6FA5A3FDF3105965"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

         
<style> 
 
 .inputs {
    height: 30px;
    border: 3px solid #EBE6E2;
    border-radius: 5px;
    -webkit-transition: all 0.3s ease-out;
    -moz-transition: all 0.3s ease-out;
    -ms-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
    transition: all 0.3s ease-out;
    width: 270px;
}

.inputs:focus {
    border-color: #BBB;
    outline: none;
}
fieldset {
    font-family: sans-serif;
    border: 5px solid #1F497D;
    background: #ddd;
    border-radius: 5px;
    padding: 15px;
}

fieldset legend {
    background: #1F497D;
    color: #fff;
    padding: 5px 10px ;
    font-size: 32px;
    border-radius: 5px;
    box-shadow: 0 0 0 5px #ddd;
    margin-left: 20px;
}

</style> 

<script type="text/javascript">
    
    function patientValidation(){
        var fname=document.pat.Fname.value;
        var lname=document.getElementsByName("name");
        var uname=document.getElementById("lname").value;
        alert("message",+ fname);
        alert("message",+ lname);
        alert("message",+ uname);
        
    }
</script>

</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Hospital <small>Health is Wealth</small></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.jsp"><span>Home Page</span></a></li>
          <li><a href="doctorProfile.jsp"><span>Doctor</span></a></li>
          <li class="active"><a href="search.jsp"><span>Search</span></a></li>
<!--          <li><a href="blog.html"><span>Hospital</span></a></li>
          <li><a href="contact.html"><span>Contact Us</span></a></li>-->
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
           
             <%
            
                try{
                    ResultSet rs=null;
                    
                    String a="";
                    Connection con=null;
                    Class.forName("com.mysql.jdbc.Driver");
                   // con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","Cst_Est_Pst");
                   con=DriverManager.getConnection("jdbc:mysql://sql3.freemysqlhosting.net:3306/sql363857","sql363857","hY1%sA1!");  
                    String search=request.getParameter("search");
                    
                    
                    Statement st=con.createStatement();
                    
                   String s="select dname,higdegree,spec,exp,gender,mail,location,susoperation,failoperation,phone,haddress from tbl_doctor where spec='"+ search+"'";
                   
                   rs=st.executeQuery(s);
                   
                   while(rs.next()){  %>
                   
                   
  
                   
                   
                   
                   
                   
                   <section style="margin: 15px;">
                    <fieldset style="min-height:100px;">
                        <legend><b> Doctor Profile </b> </legend>
                   <table align="left" cellspacing="15px">
                       <tr>
                           <th size="10px">Doctor Name</th>
                           <th>:</th>
                           <td><%=rs.getString(1)%></td>
                       </tr>
                       <tr>
                           <th>Highest Degree</th>
                           <th>:</th>
                           <td><%=rs.getString(2)%></td>
                       </tr>
                       <tr>
                           <th>Specialization</th>
                           <th>:</th>
                           <td><%=rs.getString(3)%></td>
                       </tr>
                       <tr>
                           <th>Experience</th>
                           <th>:</th>
                           <td><%=rs.getString(4)%></td>
                       </tr>
                       <tr>
                           <th>Gender</th>
                           <th>:</th>
                           <td><%=rs.getString(5)%></td>
                       </tr>
                       <tr>
                           <th>Email</th>
                           <th>:</th>
                           <td><%=rs.getString(6)%></td>
                       </tr>
                       <tr>
                           <th>Location</th>
                           <th>:</th>
                           <td><%=rs.getString(7)%></td>
                       </tr>
                       <tr>
                           <th>Successful Operations</th>
                           <th>:</th>
                           <td><%=rs.getString(8)%></td>
                       </tr>
                       <tr>
                           <th>Failure Operations</th>
                           <th>:</th>
                           <td><%=rs.getString(9)%></td>
                       </tr>
                       <tr>
                           <th>Phone</th>
                           <th>:</th>
                           <td>                   <div data-role="main" class="ui-content">
    <a href="#myPopup" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all">Get Number</a>

    <div data-role="popup" id="myPopup" class="ui-content">
      <h3>Number!</h3>
      <p><%=rs.getString(10)%></p>
    </div>
  </div>     </td>
                       </tr>
                       <tr>
                           <th>Hospital Address </th>
                           <th>:</th>
                           <td><%=rs.getString(11)%></td>
                       </tr>
                       
                   </table>
                     </fieldset>  
                       
                   <%
                        }
                    
                }catch(Exception e)
                                               {
                    
                }




              %>
          <div class="clr"></div>

          <div class="post_content">
            
             
              
            

          </div>
          <div class="clr"></div>
        </div>
        <div class="article">

          <div class="clr"></div>
        </div>

      </div>

      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">

  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p>
     
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>