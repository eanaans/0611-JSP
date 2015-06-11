<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"  %>

<html>
<head><title> [guestList.jsp] </title> 
	<style type="text/css">
		a{font-size:20pt; text-decoration:none; }
		a:hover{ 
		 	font-size:30pt; color:blue; 
			font-family:Comic Sans MS;
		}
		td{font-size:12pt; font-weight:bold;  }
	</style>
</head>
<%!
   private  Connection CN; //DB서버연결정보, CN통해서 명령생성
   private  Statement  ST; //static정적명령 select, delete
   private  PreparedStatement PST; //미리컴파일된명령 insert, update
   private  ResultSet RS; // RS=ST.executeQuery("select쿼리");
   
   private  int  Gsabun; //사번데이타
   private  String  Gname; //이름데이타
   private  String  Gtitle; //제목데이타
   private  String  sql="insert,update,delete,select";
   private  int total=0; //레코드갯수
%>

<%
  try{
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
	  CN=DriverManager.getConnection(url, "system", "oracle");
	  //out.println("<h1>db서버성공성공successsuccess</h1>");
  }catch(Exception ex){
	  System.out.println("db서버연결실패: " + ex);
  }
%>

<body>
   <font size=7 color=red><b> [guestList.jsp]</b></font><p>
   <table width="800"  border="1" cellspacing="0"  >
	   <tr align="center">
	   		<td colspan=5>
	   			<img src="images/bar.gif">
	   		</td>
	   </tr>
	   
<%
try{
  Statement st2 = CN.createStatement();
  String sql2 = "select  count(*) as cnt  from guest ";
  ResultSet  rs2 = st2.executeQuery(sql2);
  if(rs2.next()==true){ total = rs2.getInt("cnt"); }  
}catch(Exception ex){ }
%>	   
	   
	   <tr align="right">
	   		<td colspan=5>
	   			<font size=7 color=red>
	   			<b>
	   			레코드갯수: <%= total %>  &nbsp;&nbsp;
	   			</b>
	   			</font>
	   		</td>
	   </tr>
	   
	   <tr bgcolor="yellow" height="40" >
	   		<td> 사&nbsp;  번 </td>  <td> 이&nbsp;   름 </td>  
	   		<td> 제&nbsp;   목 </td>
	   		<td> 날&nbsp;   짜 </td>  <td> 급&nbsp;   여 </td>   
	   <tr>
     
<%
 try{
	 ST = CN.createStatement();
	 sql ="select  * from  guest order by sabun ";
	 RS = ST.executeQuery(sql); //조회한결과를 RS개체가 기억
	 while(RS.next()==true){
		 Gsabun = RS.getInt("sabun") ;
		 Gname = RS.getString("name") ;
		 Gtitle = RS.getString("title") ;
%>		 
	<tr>
		 <td> <%= Gsabun  %> </td>
		 <td> <%= Gname  %> </td>
		 <td> <a href="guestDetail.jsp?idx=<%= Gsabun %>"> <%= Gtitle %> </a> </td>
		 <td> <%= RS.getDate("nalja") %> </td>
		 <td> <%= RS.getInt("pay") %> </td>
	</tr>
<%		 
	 }//while end
 }catch(Exception ex){out.println("<h1>실패:" + ex +"</h1>"); }
%>
  </table>   <!-- 테이블 끝태그 여기에 있어야해요  -->
  
    <div align="center">
  	<p>	<h1>
		<a href="guest.jsp">[등록화면]</a>
		<a href="guestList.jsp">[전체출력]</a>
		<a href="guestDelete.jsp">[데이타삭제]</a>
	</h1>
	</div>
	<p><br><br><br><br><br><br><br><br><br><br>
</body>
</html>












