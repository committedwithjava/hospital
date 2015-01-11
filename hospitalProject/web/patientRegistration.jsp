<%-- 
    Document   : patientRegistration
    Created on : Nov 24, 2014, 10:36:40 AM
    Author     : machies
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
        <h1><a href="index.html">Hospital <small>Company Slogan Here</small></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.jsp"><span>Home Page</span></a></li>
          <li><a href="support.html"><span>Doctor</span></a></li>
          <li class="active"><a href="about.html"><span>Patient</span></a></li>
          <li><a href="blog.html"><span>Hospital</span></a></li>
          <li><a href="contact.html"><span>Contact Us</span></a></li>
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
          <h2><span>Users Search</span> Registration Form</h2>
<!--          <p class="infopost">Posted on <span class="date">11 sep 2018</span> by <a href="#">Admin</a> &nbsp;&nbsp;&bull;&nbsp;&nbsp; Filed under <a href="#">templates</a>, <a href="#">internet</a> <a href="#" class="com">Comments <span>11</span></a></p>-->
          <div class="clr"></div>
<!--          <div class="img"><img src="images/img1.jpg" width="179" height="176" alt="" class="fl" /></div>-->
          <div class="post_content">
            
             
              <form  action="patientDB.jsp" method="post" >  
              <table align="left" cellspacing="20px">
                      <tr>
                          <th>First Name:</th>
                          <th><input type="text" placeholder="FirstName" name="Fname" class="inputs" required=""></input></th>
                      </tr>
                       <tr>
                          <th>Last Name:</th>
                          <th><input type="text" placeholder="LastName"  name="Lname" id="lname" class="inputs" required=""></input></th>
                      </tr>
                       <tr>
                          <th>UserName:</th>
                          <th><input type="text" placeholder="UserName" id="name" name="Uname" class="inputs" required=""></input></th>
                      </tr>
                       <tr>
                          <th>Password:</th>
                          <th><input type="password" placeholder="Password" name="pwd" class="inputs" required=""></input></th>
                      </tr>
                       <tr>
                          <th>Gender:</th>
                          <td><input type="radio"  name="gen" value="male">Male</input><input type="radio" name="gen" value="female" >Female</input></td>
                          
                      </tr>
                       <tr>
                          <th>E-mail:</th>
                          <th><input type="" placeholder="Email" name="mail" class="inputs" required=""></input></th>
                      </tr>
                       <tr>
                          <th>Phone:</th>
                          <th><input type="text" placeholder="Phone" name="phone" class="inputs" required=""></input></th>
                      </tr>
                  <tr>
                      <td><input id="search" type="submit" value="Sign UP" /></td>
                      <td><input id="search" type="submit" value="Cancel"/></td>
                  </tr>
                  </table>
              </form>
            

          </div>
          <div class="clr"></div>
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
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Services</span> Overview</h2>
        <p>Curabitur sed urna id nunc pulvinar semper. Nunc sit amet tortor sit amet lacus sagittis posuere cursus vitae nunc.Etiam venenatis, turpis at eleifend porta, nisl nulla bibendum justo.</p>
        <ul class="fbg_ul">
          <li><a href="#">Lorem ipsum dolor labore et dolore.</a></li>
          <li><a href="#">Excepteur officia deserunt.</a></li>
          <li><a href="#">Integer tellus ipsum tempor sed.</a></li>
        </ul>
      </div>
      <div class="col c3">
        <h2><span>Contact</span> Us</h2>
        <p>Nullam quam lorem, tristique non vestibulum nec, consectetur in risus. Aliquam a quam vel leo gravida gravida eu porttitor dui.</p>
        <p class="contact_info"> <span>Address:</span> 1458 TemplateAccess, USA<br />
          <span>Telephone:</span> +123-1234-5678<br />
          <span>FAX:</span> +458-4578<br />
          <span>Others:</span> +301 - 0125 - 01258<br />
          <span>E-mail:</span> <a href="#">mail@yoursitename.com</a> </p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p>
      <p class="rf">Design by Dream <a href="http://www.dreamtemplate.com/">Web Templates</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>