<%-- 
    Document   : PatientLogin
    Created on : Jan 5, 2015, 3:29:23 PM
    Author     : machies
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>  
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
    function validateLogic(){
        
        //alert("inside validation logic");
     var x = document.forms["signUp"]["fname"].value;
    if (x == null || x == "") {
        alert("First name must be filled out");
        return false;
    }
    document.forms["signUp"].submit();
    
    }
    function validateMailId(){
        
    var y = document.forms["signUp"]["mailId"].value;
    var atpos = y.indexOf("@");
    var dotpos = y.lastIndexOf(".");
  
    if (atpos< 1 || dotpos<atpos+2 || dotpos+2>=y.length) {
     //  alert("Not a valid e-mail address");
    document.getElementById("usernameError").innerHTML = "*!Not a valid e-mail address";
    return false;
    }else{
     document.getElementById("usernameError").innerHTML = "";   
      
     
    }
      
        
    }
    function validatePassword(){
        var goodColor = "#66cc66";
        var badColor = "#ff6666";
       var x = document.forms["signUp"]["pwd"].value;
        var y = document.forms["signUp"]["conpwd"].value;
        if(x.length>0){
   if(x!=y){
         document.getElementById("passwordError").innerHTML = "Password miss match!";   
       document.getElementById("pass2").style.backgroundColor=badColor;
        document.getElementById("pass1").style.backgroundColor="#FFFFFF";
        
          return false;
   }else{
        document.getElementById("passwordError").innerHTML = "";  
       document.getElementById("pass1").style.backgroundColor=goodColor;
       document.getElementById("pass2").style.backgroundColor=goodColor;
       
   }
   
    }else{
      document.getElementById("pass2").style.backgroundColor="#FFFFFF";
      document.getElementById("pass1").style.backgroundColor="#FFFFFF";  
        
    }
    }
    function validatePhoneNumber(){
        
        
        return false;
    }
 var request;  
function sendInfo()  
{  
var v=document.forms["signUp"]["name"].value;;  
var url="ajaxTest.jsp?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('amit').innerHTML=val;  
}  
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
.error{
    
    color:red;
}
</style> 



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
          <h2><span>Patient</span> Sign Up Form</h2>

          <div class="clr"></div>

          <div class="post_content">
            
                <form name="signUp" action="patientSignUpDB.jsp" method="post">
              <table align="left" cellspacing="15px">
                    <tr>
                          <th>User Name:</th>
                          <th><input type="text" placeholder="Name" name="name" class="inputs" required="" onkeyup="sendInfo()"></input></th>
                    <th><span id="amit" class="error"></span></th>
                          
                    </tr>
                    <tr>
                          <th>First Name:</th>
                          <th><input type="text" placeholder="First Name" name="fname" class="inputs" required=""></input></th>
                      </tr>
                     <tr>
                          <th>Last Name:</th>
                          <th><input type="text" placeholder="Last Name" name="lname" class="inputs" required=""></input></th>
                      </tr>
                     
                    <tr>
                          <th>Phone No:</th>
                          <th><input type="text" placeholder="PhoneNo" name="phoneNo" class="inputs" required="" onchange="validatePhoneNumber()"></input></th>
                      </tr>
                    <tr>
                          <th>Mail Id:</th>
                          <th><input type="text" placeholder="MailId" name="mailId" class="inputs" required="" onchange="validateMailId()"></input></th>
                          <th><span id="usernameError" class="error"></span></th>
                      </tr>
                      <tr>
                          <th>Password:</th>
                          <th><input id="pass1" type="password" placeholder="password" name="pwd" class="inputs" required=""></input></th>
                      </tr>
                    <tr>
                          <th>Confirm Password</th>
                          <th><input id="pass2" type="password" placeholder="password" name="conpwd" class="inputs" required="" onchange="validatePassword()"></input></th>
                          <th><span id="passwordError" class="error"></span></th>  
                    </tr>
                      <tr>
                          <td ><input id="search" align="center" type="button" value="Sign Up" onclick="validateLogic()"></input></td>
                          <td><input id="search" align="center" type="submit" value="Cancel"></input></td>
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
 
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p>
      <p class="rf">Design by Dream <a href="">Hospital</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>

</html>