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
   private  Connection CN; //DB������������, CN���ؼ� ��ɻ���
   private  Statement  ST; //static������� select, delete
   private  PreparedStatement PST; //�̸������ϵȸ�� insert, update
   private  ResultSet RS; // RS=ST.executeQuery("select����");
   
   private  int  Gsabun; //�������Ÿ
   private  String  Gname; //�̸�����Ÿ
   private  String Gtitle;//Ÿ��Ʋ����Ÿ
   private  int Gpay;// ���̵���Ÿ
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
	 RS = ST.executeQuery(sql); //��ȸ�Ѱ���� RS��ü�� ���
	if(RS.next()==true){
		 Gsabun = RS.getInt("sabun") ;
		 Gname = RS.getString("name") ;
		 Gtitle = RS.getString("title");
%>		
   	<tr align="center" height="70"  bgcolor="yellow" >
	   	<td colspan=5 style="font-size:38pt">
	   		<%= Gname %>���� �󼼵���Ÿ ���
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
 }catch(Exception ex){out.println("<h1>����:" + ex +"</h1>"); }
%>
  </table>   <!-- ���̺� ���±� ���⿡ �־���ؿ�  -->
  
  	<p>
	<h1>
<a href="guest.jsp">[���ȭ��]</a>
<a href="guestList.jsp">[��ü���]</a>
<a href="guestDelete.jsp">[����Ÿ����]</a>
<a href="guestEdit.jsp?dt1=<%=Gsabun %>&dt2=<%=Gname %>&dt3=<%=Gtitle %>&dt4=<%=Gpay%>">
[����Ÿ����]</a>
	</h1>
	
	<p><br><br><br><br><br><br><br><br><br><br>
</body>
</html>












