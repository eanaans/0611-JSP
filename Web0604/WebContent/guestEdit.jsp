<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@  page import="java.sql.*"  %>
<%@  page import="java.util.*"  %>

<html>
<head><title>[guestEdite==�ܵ��������]</title>
	<style type="text/css">
		b,input{ font-size:20pt; font-weight:bold; }
	</style>
</head>
<%
			String data1 = request.getParameter("dt1");
			String data2 = request.getParameter("dt2");
			String data3 = request.getParameter("dt3");
			String data4 = request.getParameter("dt4");
			
			System.out.println("guestEdit.jsp����");
			System.out.println("<b>�Ѿ��Gsabun=" + data1 + "</b><br>");
			System.out.println("<b>�Ѿ��Gname=" + data2 + "</b><br>");
			System.out.println("<b>�Ѿ��Gtitle=" + data3 + "</b><br>");
			System.out.println("<b>�Ѿ��Gpay=" + data4 + "</b><br>\n");
		%>
<body>
	<font size=7><b> [guestEdit.jsp] </b></font><p>
	<form method="get" action="guestEditSave.jsp">
		<b>���:</b> <input type="text" name="sabun" readonly value="<%=data1%>"> <br>
		<b>�̸�:</b> <input type="text" name="name" value="<%=data2%>"> <br>
		<b>����:</b> <input type="text" name="title" value="<%=data3%>" > <br>
		<b>�޿�:</b> <input type="text" name="pay" value="<%=data4%>"> <p>
		<input type="submit"  value="����Ÿ����"> &nbsp;
		<input type="reset"   value="�������">
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










