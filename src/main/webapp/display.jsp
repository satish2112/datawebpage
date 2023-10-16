<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.satish.dbconnection.Dbconnection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
body {
	background-image:
		url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-2YL-4y0zfHthJb5EKCC4QoXt4Sn_AwVelQ&usqp=CAU");
}
</style>
</head>
<body>

	<%
	Connection con = Dbconnection.getConnection();
	PreparedStatement stmt = con.prepareStatement("select * from  VERIFICATIONKEYS fetch  first 5 rows only");
	ResultSet rs = stmt.executeQuery();
	%>
	<h1>database value</h1>
	<br>
	<div>
		for adding and delete <a href="adddata.jsp">click here</a>
	</div>
	<%
	if ((request.getParameter("VKID")) == null) {
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
		<%
		while (rs.next()) {
		%>
		<TR>
			<TD><%=rs.getInt("VKID")%></td>
			<TD><%=rs.getString("VKTYPE")%></TD>
			<TD><%=rs.getString("VKSECRETKEY")%></TD>
			<TD><%=rs.getString("VKPARAMETERS")%></TD>
			<TD><%=rs.getDate("VKEXPIRY")%></TD>
			<TD><%=rs.getInt("VKRECORDCREATOR")%></TD>
			<TD><%=rs.getDate("VKRECORDCREATETIME")%></TD>
			<TD><%=rs.getInt("VKRECORDVERSION")%></TD>
		</TR>
		<%
		}
		%>
	</TABLE>
	<%
	}
	%>
	<%
	if ((request.getParameter("VKID")) != null) {
		/* int searchdata = (int) session.getAttribute("searchDatavalue"); */
		int searchdata = Integer.valueOf(request.getParameter("VKID"));
		PreparedStatement stmt1 = con.prepareStatement("select * FROM VERIFICATIONKEYS where VKID = ?");
		stmt1.setInt(1, searchdata);
		ResultSet rs1 = stmt1.executeQuery();
		/* if(rs1.next()){
		System.out.println(rs1);
		}else{
			System.out.println("ss");
		} */
	%>
	<div>Youre enter id:</div>
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
	<%
	}
	%>
	<%
	if ((request.getAttribute("deleteValue")) != null) {
		int deleteValue = (int) request.getAttribute("deleteValue");
		if (deleteValue == 0) {
	%>
	<script>
		Swal.fire({
			position : 'center',
			icon : 'warning',
			title : 'Record Not Found',
			showConfirmButton : false,
			timer : 2000
		})
	</script>
	<%
	} else if (deleteValue > 0) {
	%>
	<script>
		Swal.fire({
			position : 'center',
			icon : 'success',
			title : 'Successfully deleted Record',
			showConfirmButton : false,
			timer : 2000
		})
	</script>
	<%
	}
	%>
	<%
	}
	%>
	<h4>Search</h4>
	<table>
		<tr>
			<td>VKID:</td>
			<td><input type="number" id="111" min="1" required></td>
		</tr>
		<tr>
			<td><input type="submit" value="submit" id="233"></td>
		</tr>
	</table>
	<div class="123" style="background-color:yellow ; height: 120px" >
	
	</div>
</body>
<script>
$(document).ready(function(){
	$("#233").click(function(){
		var vkid=$("#111").val();
		$.post("ajaxsearch.jsp",{vkidHolder:vkid},function(data){
			console.log(data);
			$(".123").html(data);
		});
	});
});
</script>
</html>