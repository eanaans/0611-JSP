<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@  page import="java.sql.*"  %>
<%@  page import="java.util.*"  %>

<html>
<head><title>[guest]</title>
	<style type="text/css">
		b,input{ font-size:20pt; font-weight:bold; }
	</style>
</head>
<body>
	<font size=7><b> [guest.jsp] </b></font><p>
	<form method="get" action="guestSave.jsp">
		<b>���:</b> <input type="text" name="sabun"> <br>
		<b>�̸�:</b> <input type="text" name="name"> <br>
		<b>����:</b> <input type="text" name="title" > <br>
		<b>�޿�:</b> <input type="text" name="pay" value="27"> <p>
		<input type="submit"  value="����Ÿ����"> &nbsp;
		<input type="reset"   value="�Էµ���Ÿ���">
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










