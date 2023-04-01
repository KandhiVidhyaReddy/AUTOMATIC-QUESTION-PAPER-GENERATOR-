
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
          <li><a href="AdminHome.jsp"><span>Home</span></a></li>
         <li><a href="AddSubject.jsp"><span>Add Subject</span></a></li>
          <li><a href="AddQuestions.jsp" class="active"><span>Add Questions</span></a></li>
         <li><a href="Admin.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
      
    <div class="headert_text_resize"> <img src="images/text_area_img.jpg" alt="" width="395" height="396" />
      <div class="textarea">
          <center> <h2>Welcome</h2></center>
     
          <marquee><font color="white">Admin Home</font></marquee>    
        
      </div>
      <div class="clr"></div>
    </div>   
          <center><%String msg=request.getParameter("msg");%>
          
         <h2>Add Questions & Answers </h2>
      <%if(msg!=null){
              %>
              <font color="red"><%=msg%></font>
              <%}%>
          <form action="AddAction.jsp" method="post">
        <table>
                        <tr><th>Select Subject</th><td><select name="subject" required="" style="width: 450px;">
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
    
                    <tr><th>Question</th><td><textarea cols="60"  rows="5" name="question" required=""></textarea></td></tr>  
         <tr><th>Answer</th><td><textarea cols="60"  rows="5" name="answer" required=""></textarea></td></tr> 
   <tr><th>Marks</th><td><input type="text" name="marks" required="" placeholder="01 X 10 = 10"></td></tr> 
  <tr><th></th><td><input type="submit" value="Submit" >
                    <input type="reset" value="Reset" ></td></tr> 
         
        </table>
        </form>
          </center>
          
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
