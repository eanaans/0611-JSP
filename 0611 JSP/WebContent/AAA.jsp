<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@  page import="java.sql.*"  %>
<%@  page import="java.util.*"  %>

<html>
<head><title>[AAA]</title>
	<style type="text/css">
		b,input{ font-size:26pt; font-weight:bold; }
		a{font-size:26pt; text-decoration:none; }
		a:hover{ 
		 	font-size:32pt; color:blue; 
			font-family:Comic Sans MS;
		}
	</style>
</head>
<body>
	<%
		int Gsabun=3345;
		String Gname="blue";
		String Gtitle="snow";
		int Gpay = 79 ; 
	%>
	<p>
	<div align="center">
		<a href="guest.jsp">[등록화면]</a>
		<a href="AAA.jsp">[AAA.jsp]</a>
		<a href="BBB.jsp?dt1=<%= Gsabun %>&dt2=<%= Gname %>&dt3=<%= Gtitle %>&dt4=<%= Gpay %>">[BBB.jsp]</a>  
	</div>
	<p><br><br><br><br><br><br><br><br><br><br>
</body>
</html>










