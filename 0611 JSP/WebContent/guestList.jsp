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
   private  Connection CN; //DB������������, CN���ؼ� ��ɻ���
   private  Statement  ST; //static������� select, delete
   private  PreparedStatement PST; //�̸������ϵȸ�� insert, update
   private  ResultSet RS; // RS=ST.executeQuery("select����");
   
   private  int  Gsabun; //�������Ÿ
   private  String  Gname; //�̸�����Ÿ
   private  String  Gtitle; //������Ÿ
   private  String  sql="insert,update,delete,select";
   private  int total=0; //���ڵ尹��
%>

<%
  try{
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
	  CN=DriverManager.getConnection(url, "system", "oracle");
	  //out.println("<h1>db������������successsuccess</h1>");
  }catch(Exception ex){
	  System.out.println("db�����������: " + ex);
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
	   			���ڵ尹��: <%= total %>  &nbsp;&nbsp;
	   			</b>
	   			</font>
	   		</td>
	   </tr>
	   
	   <tr bgcolor="yellow" height="40" >
	   		<td> ��&nbsp;  �� </td>  <td> ��&nbsp;   �� </td>  
	   		<td> ��&nbsp;   �� </td>
	   		<td> ��&nbsp;   ¥ </td>  <td> ��&nbsp;   �� </td>   
	   <tr>
     
<%
 try{
	 ST = CN.createStatement();
	 sql ="select  * from  guest order by sabun ";
	 RS = ST.executeQuery(sql); //��ȸ�Ѱ���� RS��ü�� ���
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
 }catch(Exception ex){out.println("<h1>����:" + ex +"</h1>"); }
%>
  </table>   <!-- ���̺� ���±� ���⿡ �־���ؿ�  -->
  
    <div align="center">
  	<p>	<h1>
		<a href="guest.jsp">[���ȭ��]</a>
		<a href="guestList.jsp">[��ü���]</a>
		<a href="guestDelete.jsp">[����Ÿ����]</a>
	</h1>
	</div>
	<p><br><br><br><br><br><br><br><br><br><br>
</body>
</html>












