<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@  page import="java.sql.*"  %>
<%@  page import="java.util.*"  %>

<html>
<head><title>[guestSave]</title>
	<style type="text/css">
		b,input{ font-size:20pt; font-weight:bold; }
		a{ font-size:26pt; font-weight:bold;  text-decoration:none; }
		a:hover{ font-size:32pt; font-weight:bold;  color:blue; }
	</style>
</head>
<%!
private  Connection CN; //DB서버, id, pass / 명령생성할때 참조
private  Statement ST; //select쿼리문 정적명령어
private  PreparedStatement PST; //insert,update, delete컴파일된명령어
private  ResultSet RS; //RS=ST.executeQuery("select쿼리문")
	
private  int Gsabun;
private  String Gname;
private  String sql="insert,update,delete,select";
private  int total=0; //레코드갯수
%>

<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");//오라클서버 드라이브 로드 
	String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
	CN = DriverManager.getConnection(url,"system","oracle");
	out.println("<h1> DB서버연결성공 DB서버연결성공 </h1>");
}catch(Exception ex){
	System.out.println("실패:" + ex.toString());
	out.println("<h1>실패:" + ex.toString() +"</h1>");
}
%>

<body>
	<font size=7><b> [guestSave.jsp=단독실행금지] </b></font><p>
<%
	 int dt1 = Integer.parseInt(request.getParameter("sabun"));
	 String dt2 =  request.getParameter("name");
	 String dt3 =  request.getParameter("title");
	 int dt4 =Integer.parseInt(request.getParameter("pay"));
	 out.println("<b>넘어온사번=" +  dt1 + "</b><br>");
	 out.println("<b>넘어온이름=" +  dt2 + "</b><br>");
	 out.println("<b>넘어온제목=" +  dt3 + "</b><br>");
	 out.println("<b>넘어온급여=" +  dt4 + "</b><p>");
  
 try{
	 sql="insert into guest values(?, ?, ?, sysdate, ?)" ;
	 PST  = CN.prepareStatement( sql );
	 	PST.setInt(1, dt1);
	 	PST.setString(2, dt2);
	 	PST.setString(3, dt3);
	 	PST.setInt(4, dt4);
	 PST.executeUpdate();  //진짜 저장처리 완료 commit;적용
	 response.sendRedirect("guestList.jsp");
	 //insert,update,delete=>실행Update( )
	 //select쿼리문조회 =>실행Query( "select * from guest ")		 
 }catch(Exception ex){ 
	 System.out.println("<h1>PST저장실패: " + ex + "</h1>");  
 }
%>

	<p>
	<h1>
		<a href="guest.jsp">[등록화면]</a>
		<a href="guestList.jsp">[전체출력]</a>
		<a href="guestDelete.jsp">[데이타삭제]</a>
	</h1>
	
	<p><br><br><br><br><br><br><br><br><br><br>
</body>
</html>









