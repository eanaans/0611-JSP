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
private  Connection CN; //DB����, id, pass / ���ɻ����Ҷ� ����
private  Statement ST; //select������ �������ɾ�
private  PreparedStatement PST; //insert,update, delete�����ϵȸ��ɾ�
private  ResultSet RS; //RS=ST.executeQuery("select������")
	
private  int Gsabun;
private  String Gname;
private  String sql="insert,update,delete,select";
private  int total=0; //���ڵ尹��
%>

<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");//����Ŭ���� ����̺� �ε� 
	String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
	CN = DriverManager.getConnection(url,"system","oracle");
	out.println("<h1> DB�������Ἲ�� DB�������Ἲ�� </h1>");
}catch(Exception ex){
	System.out.println("����:" + ex.toString());
	out.println("<h1>����:" + ex.toString() +"</h1>");
}
%>

<body>
	<font size=7><b> [guestSave.jsp=�ܵ��������] </b></font><p>
<%
	 int dt1 = Integer.parseInt(request.getParameter("sabun"));
	 String dt2 =  request.getParameter("name");
	 String dt3 =  request.getParameter("title");
	 int dt4 =Integer.parseInt(request.getParameter("pay"));
	 out.println("<b>�Ѿ�»��=" +  dt1 + "</b><br>");
	 out.println("<b>�Ѿ���̸�=" +  dt2 + "</b><br>");
	 out.println("<b>�Ѿ������=" +  dt3 + "</b><br>");
	 out.println("<b>�Ѿ�±޿�=" +  dt4 + "</b><p>");
  
 try{
	 sql="insert into guest values(?, ?, ?, sysdate, ?)" ;
	 PST  = CN.prepareStatement( sql );
	 	PST.setInt(1, dt1);
	 	PST.setString(2, dt2);
	 	PST.setString(3, dt3);
	 	PST.setInt(4, dt4);
	 PST.executeUpdate();  //��¥ ����ó�� �Ϸ� commit;����
	 response.sendRedirect("guestList.jsp");
	 //insert,update,delete=>����Update( )
	 //select��������ȸ =>����Query( "select * from guest ")		 
 }catch(Exception ex){ 
	 System.out.println("<h1>PST�������: " + ex + "</h1>");  
 }
%>

	<p>
	<h1>
		<a href="guest.jsp">[���ȭ��]</a>
		<a href="guestList.jsp">[��ü���]</a>
		<a href="guestDelete.jsp">[����Ÿ����]</a>
	</h1>
	
	<p><br><br><br><br><br><br><br><br><br><br>
</body>
</html>








