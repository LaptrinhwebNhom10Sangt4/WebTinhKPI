<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<title>Document</title>
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
<link rel="stylesheet" type="text/css" href="/css/result-light.css">
<style>
#container {
	padding: 15px;
}

.popover {
	background: #d9534f;
	color: #ffffff;
}

.popover.right>.arrow:after {
	border-right-color: #d9534f;
}
</style>
<!-- Ghi sai ten  -->
</head>
<body>
	<div class="container1">
		<form id="registration_form" class="login text-center"
			action="ValidateLogin" method="post">
			<div>
				<h1>Website tính KPI</h1>
			</div>
			<img src="img/logo2.jpg" align="middle"
				style="width: 300px; height: 150px;" />
			<div class="form-inline" id="form">
				<h4>
					<input data-placement="right"
						data-toggle="popover" data-trigger="hover"
						data-content="Sai email hoặc password" class="form-control triggerBtn"
						id="email" type="text" name="email" placeholder="Tên đăng nhập"
						value=${email } style="width: 300px" /> <span
						style="color: #FF0E00" id="email_error"></span>
				</h4>
			</div>
			<div class="form-inline">
				<h4>
					<input class="form-control" id="password" type="password"
						name="pass" placeholder="password" style="width: 300px" /> <span
						style="color: #FF0E00" id="pass_error"></span>
				</h4>
			</div>
			<button id="btnLogin" type="submit" value="ValidateLogin"
				class="btn btn-danger" style="margin-left: 7px">
				Đăng Nhập <span class="glyphicon glyphicon-ok"></span>
			</button>
			<button type="button" class="btn btn-info" style="">
				Quên Mật khẩu <span class="glyphicon glyphicon-search"></span>

			</button>
		</form>
	</div>
</body>
<script type="text/javascript">
	$("#email_error").hide();
	$("#pass_error").hide();
	var em = false;
	var pa = false;

	var error_email = false;
	var error_pass = false;
	
	$('#email').popover('show');
	
	$(".triggerBtn").click(function () {
		$('#email').popover('destroy');
	});
	
	$("#email").focusout(function() {
		pop = false;
		check_email();
		label("#email", em);
	});
	$("#password").focusout(function() {
		check_pass();
		label('#password', pa)
	});
	
	function check_email() {
		var username_length = $("#email").val().length;
		if (username_length == 0) {
			$("#email_error").html("Không được để trống");
			$("#email_error").show();
			em = true;
		} else {
			$("#email_error").hide();
			em = false
		}
	}
	function label(id, bool) {
		var div = $(id).closest("div");
		if (bool)
			div.addClass("has-error");
		else
			div.removeClass("has-error");
	}
	function check_pass() {
		var pass_length = $("#password").val().length;
		if (pass_length == 0) {
			$("#pass_error").html("Không được để trống");
			$("#pass_error").show();
			pa = true;
		} else {
			$("#pass_error").hide();
			pa = false;
		}
	}
</script>
</html>