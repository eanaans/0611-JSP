<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@  page import="java.sql.*"  %>
<%@  page import="java.util.*"  %>

<html>
<head><title>[guestEdite==단독실행금지]</title>
	<style type="text/css">
		b,input{ font-size:20pt; font-weight:bold; }
	</style>
</head>
<%
			String data1 = request.getParameter("dt1");
			String data2 = request.getParameter("dt2");
			String data3 = request.getParameter("dt3");
			String data4 = request.getParameter("dt4");
			
			System.out.println("guestEdit.jsp문서");
			System.out.println("<b>넘어온Gsabun=" + data1 + "</b><br>");
			System.out.println("<b>넘어온Gname=" + data2 + "</b><br>");
			System.out.println("<b>넘어온Gtitle=" + data3 + "</b><br>");
			System.out.println("<b>넘어온Gpay=" + data4 + "</b><br>\n");
		%>
<body>
	<font size=7><b> [guestEdit.jsp] </b></font><p>
	<form method="get" action="guestEditSave.jsp">
		<b>사번:</b> <input type="text" name="sabun" readonly value="<%=data1%>"> <br>
		<b>이름:</b> <input type="text" name="name" value="<%=data2%>"> <br>
		<b>제목:</b> <input type="text" name="title" value="<%=data3%>" > <br>
		<b>급여:</b> <input type="text" name="pay" value="<%=data4%>"> <p>
		<input type="submit"  value="데이타수정"> &nbsp;
		<input type="reset"   value="수정취소">
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










