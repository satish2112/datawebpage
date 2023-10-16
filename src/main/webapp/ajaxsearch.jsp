<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.satish.dbconnection.Dbconnection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<%		//testing for display
		int vkidHolder=0;
		vkidHolder=Integer.valueOf(request.getParameter("vkidHolder"));
	if ((vkidHolder)==3) {
	%>

	<TABLE class="table table-hover">
		<TR>
			<TH>VKID</TH>
			<TH>VKTYPE</TH>
			<TH>VKSECRETKEY</TH>
			<TH>VKPARAMETERS</TH>
			<TH>VKEXPIRY</TH>
			<TH>VKRECORDCREATOR</TH>
			<TH>VKRECORDCREATETIME</TH>
			<TH>VKRECORDVERSION</TH>
		</TR>
		</TABLE>
		<%
		}
		%>
	

	<%
	Connection con = Dbconnection.getConnection();
	/* int searchdata = (int) session.getAttribute("searchDatavalue"); */
	int searchdata = Integer.valueOf(request.getParameter("vkidHolder"));
	PreparedStatement stmt1 = con.prepareStatement("select * FROM VERIFICATIONKEYS where VKID = ?");
	stmt1.setInt(1, searchdata);
	ResultSet rs1 = stmt1.executeQuery();
	/* if(rs1.next()){
	System.out.println(rs1);
	}else{
		System.out.println("ss");
	} */
	%>
	<div>
		Youre enter id:
		<%=request.getParameter("vkidHolder")%></div>
	<TABLE class="table table-hover">
		<TR>
			<TH>VKID</TH>
			<TH>VKTYPE</TH>
			<TH>VKSECRETKEY</TH>
			<TH>VKPARAMETERS</TH>
			<TH>VKEXPIRY</TH>
			<TH>VKRECORDCREATOR</TH>
			<TH>VKRECORDCREATETIME</TH>
			<TH>VKRECORDVERSION</TH>
		</TR>
		<%
		while (rs1.next()) {
		%>
		<TR>
			<TD><%=rs1.getInt("VKID")%></td>
			<TD><%=rs1.getString("VKTYPE")%></TD>
			<TD><%=rs1.getString("VKSECRETKEY")%></TD>
			<TD><%=rs1.getString("VKPARAMETERS")%></TD>
			<TD><%=rs1.getDate("VKEXPIRY")%></TD>
			<TD><%=rs1.getInt("VKRECORDCREATOR")%></TD>
			<TD><%=rs1.getDate("VKRECORDCREATETIME")%></TD>
			<TD><%=rs1.getInt("VKRECORDVERSION")%></TD>
		</TR>
		<%
		}
		%>
	</TABLE>
	
</body>
</html>