<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Truong Bo Mon</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/styles.css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body>
	<form action=callme method="get">

		<input type="checkbox" name="param" value="Bike"> I have a
		bike<br>
		<!-- 		 <input type="checkbox" disabled name="param1" value="Car" checked> I have a car<br> -->
		<% String temp = new String("Nguyen Van A");
		temp = temp.replaceAll(" ", "+");
			%>
		<input type="hidden" value=<%=temp%> name="param1"  />
		<button type="submit">submit</button>
	</form>
	<button type="button" class="btn btn-lg btn-danger"
		data-toggle="popover" title="Popover title"
		data-content="And here's some amazing content. It's very engaging. Right?">Click
		to toggle popover</button>
</body>
</html>