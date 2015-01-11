<%-- 
    Document   : PatientLogin
    Created on : Jan 5, 2015, 3:29:23 PM
    Author     : machies
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>GTlines</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<script type="text/javascript">
    function popingup(){
       
       <%
       String s=request.getParameter("val"); 
       if(s!=null){
        if(s.equalsIgnoreCase("1")){
          %>
                 
document.getElementById('verified').innerHTML="Your Account verified sucessfully. Login to continue."; 

      <%
        }
       }
            %>
             
        
        
        return false;
    }
</script>

         
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
.verify{
    
    color:blue;
    
}
</style> 



</head>
        <body onload="popingup()">
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Hospital <small>Health is Wealth</small></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.jsp"><span>Home</span></a></li>
          <li class="active"><a href="patientLogin.jsp"><span>patient Login</span></a></li>
          <li><a href="Hospital.jsp"><span>Hospital</span></a></li>
          <li><a href="Admin.jsp"><span>Admin</span></a></li>

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
          <h2><span>Patient</span> Login Form</h2>

          <div class="clr"></div>

          <div class="post_content">
            
              <form action="patientLoginDB.jsp" method="post">
              <table align="left" cellspacing="15px">
                      <tr>
                          <th>UserName:</th>
                          <th><input type="text" placeholder="UserName" name="name" class="inputs" required="please Enter the User Name to continue"></input></th>
                      </tr>
                      <tr>
                          <th>Password:</th>
                          <th><input type="password" placeholder="password" name="pwd" class="inputs" required="please Enter the User Name to continue"></input></th>
                      </tr>
                      <tr>
                          <td ><input id="search" align="center" type="submit" value="Login"></input></td>
                          <td><input id="search" align="center" type="button" value="Cancel" onclick="popingup()"></input></td>
                      </tr>
                 
                  </table>
              </form>
              

          </div>
          <div class="clr"></div>
          <center>  <span class="verify" id="verified"></span></center>
        </div>
        <div class="article">

          <div class="clr"></div>
        </div>
<!--        <p class="pages"><small>Page 1 of 2</small> <span>1</span> <a href="#">2</a> <a href="#">&raquo;</a></p>-->
      </div>
<!--      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="#">TemplateInfo</a></li>
            <li><a href="#">Style Demo</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Archives</a></li>
            <li><a href="#">Web Templates</a></li>
          </ul>
        </div>
        <div class="gadget">

        </div>
      </div>-->
      <div class="clr"></div>
    </div>
  </div>
 
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p>
      <p class="rf">Design by Dream <a href="">Hospital</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
        </body>>
</html>