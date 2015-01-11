<%-- 
    Document   : phone
    Created on : Dec 5, 2014, 11:58:26 AM
    Author     : machies
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
        </script>
        
        <script type="text/javascript">
            function check(){
                
                var uname=document.getElementsByName("Fname");
                alert("message"+uname);
                out.println("message"+uname);
                
            }
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>

        
              <form name="pat"  method="post" >  
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
                          <td> <input type="submit"  value="sign" onsubmit="return check()"/></td>
                      </tr>
              </table>
              </form>
        <input type="someid" name="number" maxlength="10" onkeypress="return isNumberKey(event)"/>
    </body>
</html>
