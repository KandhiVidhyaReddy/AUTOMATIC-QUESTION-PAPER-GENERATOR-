
<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String sql="select * from admin where username='"+username+"'and password='"+password+"'";

ResultSet rs=Queries.getExecuteQuery(sql);
if(rs.next()){
    %>
    <script type="text/javascript">
        window.alert("Admin Login Successful...!!");
        window.location="AdminHome.jsp";
        </script>
    <%
}else{
 %>
    <script type="text/javascript">
        window.alert("Admin Login Filed...!!");
        window.location="Admin.jsp";
        </script>
    <%
}
%>
</body>
</html>