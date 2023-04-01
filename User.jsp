<%-- 
    Document   : User
    Created on : 23 Nov, 2021, 7:10:04 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Automatic</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2><a href="index.html">Automatic Question Paper Generator</a></h2>
      </div>
      <div class="menu">
        <ul>
          <li><a href="index.html"><span>Home</span></a></li>
        
          <li><a href="User.jsp"  class="active"><span>User</span></a></li>
      <li><a href="Admin.jsp"><span>Admin</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
      
    <div class="headert_text_resize"> <img src="images/text_area_img.jpg" alt="" width="395" height="396" />
      <div class="textarea">
         <center> <h2>User Login</h2></center>
        <form action="LoginAction.jsp" method="post">
        <table>
            <tr><th>UserName</th><td><input type="text" name="username" required=""></td></tr> 
             <tr><th>Password</th><td><input type="password" name="password" required=""></td></tr>  
                <tr><th></th><td><input type="submit" value="Login" >
                    <input type="reset" value="Reset" ></td></tr> 
             <tr><th><a href="Register.jsp">Register</a></th></tr>
        </table>
        </form>
      </div>
      <div class="clr"></div>
    </div>
      
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2><br />
            <span>
               </span> </h2>
        
        <h2>&nbsp;</h2>
      </div>
      <div class="right">
        <h2></h2>
       
        
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="FBG">
    <div class="FBG_resize">
      <div class="blok">
       
    </div>
  </div>
 
</div>
    </div>
</body>
</html>
