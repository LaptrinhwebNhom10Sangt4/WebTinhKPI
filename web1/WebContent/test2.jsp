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
	<button type="button" class="btn btn-lg btn-danger"
		data-toggle="popover" title="Popover title" 
		data-content="And here's some amazing content. It's very engaging. Right?">Click
		to toggle popover</button>
</body>
<script type="text/javascript">
	$('#abc').popover({container: 'body'});
	$(document).ready(function() {
		var $submit = $('button[type="submit"]');
		$submit.prop('disabled', true);
		$('input[name="textField"]').on('input change', function() { //'input change keyup paste'
			$submit.prop('disabled', !$(this).val().length);
		});
	});
	$(function () {
		  $('[data-toggle="popover"]').popover()
		})
	//var username_length = $("#email").val().length;
	// $("#email").focusout(function(){
	// 	var username_length = $("#email").val().length;
	// 	if (username_length != 0) $('.inputDisabled').prop("disabled",true);
	// });

	// 	$(".triggerBtn").click(function() {
	// 		$('.inputDisabled').prop("disabled",true);

	// 	});
	// 	$("#edit").click(function(event) {
	// 		event.preventDefault();
	// 		$('.inputDisabled').removeAttr("disabled");
	// 	});​
</script>
</html>