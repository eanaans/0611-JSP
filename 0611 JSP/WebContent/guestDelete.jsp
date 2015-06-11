<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@  page import="java.sql.*"  %>
<%@  page import="java.util.*"  %>

<html>
<head><title>[guest]</title>
	<style type="text/css">
		b,input{ font-size:20pt; font-weight:bold; }
		a{font-size:20pt text-decoration:none;}
		a:hover{
			font-size:30pt; color:blue;
			font-family:comic Sans MS;
			}
	</style>
</head>
<body>
	<font size=7><b> [guestDelete.jsp] </b></font><p>
	<form method="get" action="guestDeleteSave.jsp">
		<b>삭제할사번:</b> 
		<input type="text" name="sabun"> <br>
		<input type="submit"  value="데이터삭제"> &nbsp;
	</form>
	
	<p>
	<h1>
		<a href="guest.jsp">[등록화면]</a>
		<a href="guestList.jsp">[전체출력]</a>
		<a href="guestDelete.jsp">[데이타삭제]</a>
	</h1>
	<p><br><br><br><br><br><br><br><br><br><br>
</body>
</html>










