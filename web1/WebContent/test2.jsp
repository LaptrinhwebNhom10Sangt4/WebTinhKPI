<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
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
</head>
<input type="text" name="textField" />
<button type="submit" value="send"></button>
<input type="text" id="abc" data-content="Popover with data-trigger"
	data-placement="bottom" data-original-title="Title"
	data-trigger="hover" data-container="body" />
<body>
	<form action="updateCV" method="Post">
		<input name="1" value="TRUE" type="checkbox" />
									<button type="submit" style="float: right;" class="btn btn-primary" >Cập nhật</button>
	</form>
</body>
</html>