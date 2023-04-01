<%-- 
    Document   : like
    Created on : Jan 22, 2020, 2:14:15 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

String subject=request.getParameter("subject");
String question=request.getParameter("question");
String answer=request.getParameter("answer");
String marks=request.getParameter("marks");
try{
    
  
    int i=Queries.getExecuteUpdate("insert into questions values(null,'"+subject+"','"+question+"','"+answer+"','"+marks+"')");
    if(i>0){
     response.sendRedirect("AddQuestions.jsp?m=s");   
    }else{
     response.sendRedirect("AddQuestions.jsp?m=f");    
    }
 
}catch(Exception e){
    out.println(e);
}


%>