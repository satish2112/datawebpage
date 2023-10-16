<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<style> 
body {
   background-image: url("https://www.freecodecamp.org/news/content/images/2021/06/w-qjCHPZbeXCQ-unsplash.jpg");
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm">
				<h4>To add data</h4>
				<form method="post" action="Home">
					<table>
						<tr>
							<td>VKID:</td>
							<td><input type="number" name="VKID" min="1" required></td>
						</tr>
						<tr>
							<td>VKTYPE:</td>
							<td><input type="text" name="VKTYPE" required></td>
						</tr>
						<tr>
							<td>VKSECRETKEY:</td>
							<td><input type="text" name="VKSECRETKEY" required></td>
						</tr>
						<tr>
							<td>VKPARAMETERS:</td>
							<td><input type="text" name="VKPARAMETERS" required></td>
						</tr>
						<tr>
							<td>VKEXPIRY:</td>
							<td><input type="date" name="VKEXPIRY" required></td>
						</tr>
						<tr>
							<td>VKRECORDCREATOR:</td>
							<td><input type="number" name="VKRECORDCREATOR" min="1" required></td>
						</tr>
						<tr>
							<td>VKRECORDCREATETIME:</td>
							<td><input type="date" name="VKRECORDCREATETIME" required></td>
						</tr>
						<tr>
							<td>VKRECORDVERSION:</td>
							<td><input type="number" name="VKRECORDVERSION" min="1" required></td>
						</tr>

						<tr>
							<td><input type="hidden" value="adddata" name="operation"></td>
							<td><input type="submit" value="submit"></td>
						</tr>
					</table>
				</form>
			</div>
			<div class="col-sm">
				<h4>To delete data</h4>
				<form method="post" action="Home">
					<table>
						<tr>
							<td>VKID:</td>
							<td><input type="number" name="VKID" min="1" required></td>
						</tr>
						<tr>
							<td><input type="hidden" value="deletedata" name="operation"></td>
							<td><input type="submit" value="submit"></td>
						</tr>
						</table>
				</form>
			</div>
			<div class="col-sm">
				<h4>Search </h4>
				<form method="post" action="display.jsp">
					<table>
						<tr>
							<td>VKID:</td>
							<td><input type="number" name="VKID" min="1" required></td>
						</tr>
						<tr>
							<td><input type="hidden" value="searchdata" name="operation"></td>
							<td><input type="submit" value="submit"></td>
						</tr>
						</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>