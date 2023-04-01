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
try{
    
  
    int i=Queries.getExecuteUpdate("insert into subject values('"+subject+"')");
    if(i>0){
     response.sendRedirect("AddSubject.jsp?m=s");   
    }else{
     response.sendRedirect("AddSubject.jsp?m=f");    
    }
 
}catch(Exception e){
    out.println(e);
}


%>