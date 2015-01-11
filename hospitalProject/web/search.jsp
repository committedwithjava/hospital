<%-- 
    Document   : patientRegistration
    Created on : Nov 24, 2014, 10:36:40 AM
    Author     : machies
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Social Network</title>
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
          <li><a href="doctorProfile.jsp"><span>Doctor</span></a></li>
          
          <li class="active"><a href="search.jsp"><span>Search</span></a></li>
          <li><a href="index.jsp"><span>Logout</span></a></li>
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
            <form action="searDB.jsp" method="post">
            <h2><span>Search <input type="text" name="search" placeholder="Search Doctor" size="40px" height="20px"/><input type="submit" value="Go" size="30px"/></span></h2>
             </form>
            
       
            
            
            <%request.getAttribute("search");%>
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
     
      <div style="clear:both;">
      </div>
    </div>
  </div>
</div>
</body>
</html>