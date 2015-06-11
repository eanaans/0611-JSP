<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@  page import="java.sql.*"  %>
<%@  page import="java.util.*"  %>

<html>
<head><title>[BBB]</title>
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
	<div align="center">
			<a href="guest.jsp">[등록화면]</a>
			<a href="AAA.jsp">[AAA.jsp]</a>
			<a href="BBB.jsp">[BBB.jsp]</a>
			<br><br><p>
		<%
			String data1 = request.getParameter("dt1");
			String data2 = request.getParameter("dt2");
			String data3 = request.getParameter("dt3");
			String data4 = request.getParameter("dt4");
			out.println("<b>넘어온Gsabun=" + data1 + "</b><br>");
			out.println("<b>넘어온Gname=" + data2 + "</b><br>");
			out.println("<b>넘어온Gtitle=" + data3 + "</b><br>");
			out.println("<b>넘어온Gpay=" + data4 + "</b><br>");
		%>
		<img src="images/a1.jpg" width=500 height=300>
	</div>
	<br><br><br><br><br><br><br><br>
</body>
</html>










