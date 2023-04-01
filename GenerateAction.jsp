<%@page import="java.util.Date"%>
<%@page import="com.itextpdf.tool.xml.XMLWorkerHelper"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>

<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Automatic</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style>
    table{
        width:900px;
    }
    tr { text-align: center; }
th { background-color: lightgreen; padding: 3px; }
td {background-color: lightblue;  padding: 3px; }
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2><a href="#"></a></h2>
      </div>
      <div class="menu">
        <ul>
          <li><a href="UserHome.jsp"  class="active"><span>Home</span></a></li>
        
         
      
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  
      <%
      String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");



String subject=request.getParameter("subject");
String noof=request.getParameter("noof");

      %>
      <hr>
    
      <h3 style="float:left;margin-left:235px;">Subject:: <%=subject%></h3>
      <h3 style="float:right;margin-right:220px;">Date:: <%=new Date()%></h3> 
      <center>
    
<table border="1">
<tr>
<th style="width:50px;">Sr. No.</th>
<th>Question</th>
<th style="width:100px;">Marks</th>
</tr>
         <%try{
             int c=0;
          ResultSet r=Queries.getExecuteQuery("select * from questions where subject='"+subject+"' ORDER BY RAND() LIMIT "+noof+"");
          while(r.next()){
              c=c+1;
              %>
       <tr>
<td>
<%=c%>
</td>
    <td>
 <%=r.getString("question")%>
   </td>
  
   <td>
   <%=r.getString("marks")%>
   </td>
  </tr>
             
         <% }
         }catch(Exception e){
             out.println(e);
}
   
         %>
</table>
      <button onclick="window.print()" style="margin-top:100px;">PRINT</button>     
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
<%@page import="java.util.Date"%>
<%@page import="com.itextpdf.tool.xml.XMLWorkerHelper"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>

<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Automatic</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style>
    table{
        width:900px;
    }
    tr { text-align: center; }
th { background-color: lightgreen; padding: 3px; }
td {background-color: lightblue;  padding: 3px; }
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2><a href="#"></a></h2>
      </div>
      <div class="menu">
        <ul>
          <li><a href="UserHome.jsp"  class="active"><span>Home</span></a></li>
        
         
      
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  
      <%
      String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");



String subject=request.getParameter("subject");
String noof=request.getParameter("noof");

      %>
      <hr>
    
      <h3 style="float:left;margin-left:235px;">Subject:: <%=subject%></h3>
      <h3 style="float:right;margin-right:220px;">Date:: <%=new Date()%></h3> 
      <center>
    
<table border="1">
<tr>
<th style="width:50px;">Sr. No.</th>
<th>Question</th>
<th style="width:100px;">Marks</th>
</tr>
         <%try{
             int c=0;
          ResultSet r=Queries.getExecuteQuery("select * from questions where subject='"+subject+"' ORDER BY RAND() LIMIT "+noof+"");
          while(r.next()){
              c=c+1;
              %>
       <tr>
<td>
<%=c%>
</td>
    <td>
 <%=r.getString("question")%>
   </td>
  
   <td>
   <%=r.getString("marks")%>
   </td>
  </tr>
             
         <% }
         }catch(Exception e){
             out.println(e);
}
   
         %>
</table>
      <button onclick="window.print()" style="margin-top:100px;">PRINT</button>     
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
