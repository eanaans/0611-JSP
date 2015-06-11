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
		<b>사번:</b> <input type="text" name="sabun"> <br>
		<b>이름:</b> <input type="text" name="name"> <br>
		<b>제목:</b> <input type="text" name="title" > <br>
		<b>급여:</b> <input type="text" name="pay" value="27"> <p>
		<input type="submit"  value="데이타저장"> &nbsp;
		<input type="reset"   value="입력데이타취소">
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










