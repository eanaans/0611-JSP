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
		<b>�����һ��:</b> 
		<input type="text" name="sabun"> <br>
		<input type="submit"  value="�����ͻ���"> &nbsp;
	</form>
	
	<p>
	<h1>
		<a href="guest.jsp">[���ȭ��]</a>
		<a href="guestList.jsp">[��ü���]</a>
		<a href="guestDelete.jsp">[����Ÿ����]</a>
	</h1>
	<p><br><br><br><br><br><br><br><br><br><br>
</body>
</html>










