<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"  %>

<html>
<head><title> [guestDetail.jsp] </title> 
	<style type="text/css">
		a{font-size:26pt; text-decoration:none; }
		a:hover{ 
		 	font-size:32pt; color:blue; 
			font-family:Comic Sans MS;
		}
		td{font-size:16pt; font-weight:bold;  }
	</style>
</head>
<%!
   private  Connection CN; //DB서버연결정보, CN통해서 명령생성
   private  Statement  ST; //static정적명령 select, delete
   private  PreparedStatement PST; //미리컴파일된명령 insert, update
   private  ResultSet RS; // RS=ST.executeQuery("select쿼리");
   
   private  int  Gsabun; //사번데이타
   private  String  Gname; //이름데이타
   private  String Gtitle;//타이틀데이타
   private  int Gpay;// 페이데이타
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
   <font size=7 color=red><b> [guestDetail.jsp]</b></font><p>
   <table width=800  border="1" cellspacing="0"  >
	   <tr align="center">
	   		<td colspan=5>
	   			<img src="images/bar.gif">
	   		</td>
	   </tr>
     
<%
 try{
	 ST = CN.createStatement();
	 String data = request.getParameter("idx") ;
	 sql ="select * from  guest where sabun = "+ data ;
	 RS = ST.executeQuery(sql); //조회한결과를 RS개체가 기억
	if(RS.next()==true){
		 Gsabun = RS.getInt("sabun") ;
		 Gname = RS.getString("name") ;
		 Gtitle = RS.getString("title");
%>		
   	<tr align="center" height="70"  bgcolor="yellow" >
	   	<td colspan=5 style="font-size:38pt">
	   		<%= Gname %>님의 상세데이타 출력
	   	</td>
	 </tr>
 
	<tr  align="center"  height="60">
		 <td> <%= Gsabun  %> </td>
		 <td> <%= Gname  %> </td>
		 <td> <%= RS.getString("title") %> </td>
		 <td> <%= RS.getDate("nalja") %> </td>
		 <td> <%= RS.getInt("pay") %> </td>
	</tr>
<%		 
	 }//if end
 }catch(Exception ex){out.println("<h1>실패:" + ex +"</h1>"); }
%>
  </table>   <!-- 테이블 끝태그 여기에 있어야해요  -->
  
  	<p>
	<h1>
<a href="guest.jsp">[등록화면]</a>
<a href="guestList.jsp">[전체출력]</a>
<a href="guestDelete.jsp">[데이타삭제]</a>
<a href="guestEdit.jsp?dt1=<%=Gsabun %>&dt2=<%=Gname %>&dt3=<%=Gtitle %>&dt4=<%=Gpay%>">
[데이타수정]</a>
	</h1>
	
	<p><br><br><br><br><br><br><br><br><br><br>
</body>
</html>












