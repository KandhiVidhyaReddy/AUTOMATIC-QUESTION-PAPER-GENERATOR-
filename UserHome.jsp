
<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h2><a href="#">Automatic Question Paper Generator</a></h2>
      </div>
      <div class="menu">
        <ul>
          <li><a href="UserHome.jsp"  class="active"><span>Home</span></a></li>
        
         
         <li><a href="User.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
      
    <div class="headert_text_resize"> <img src="images/text_area_img.jpg" alt="" width="395" height="396" />
      <div class="textarea">
          <center> <h2>Generate Paper</h2></center>
      <%
      String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
      %>
          
         <form action="GenerateAction.jsp" method="post">
        <table>
                        <tr><th>Select Subject</th><td><select name="subject" required="" style="width: 177px;">
                                    <option></option>
                                    <%try{
                                    ResultSet r=Queries.getExecuteQuery("select * from subject");
                                    while(r.next()){%>
                                    <option value="<%=r.getString("subject")%>"><%=r.getString("subject")%></option>
                                    <%}
}catch(Exception e){
out.println(e);
}%>
                    </select></td></tr>     
    
                    <tr><th>No.of Question</th><td><input type="text" name="noof" required=""></td></tr>  
        
  <tr><th></th><td><input type="submit" value="Submit" >
                    <input type="reset" value="Reset" ></td></tr> 
         
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
