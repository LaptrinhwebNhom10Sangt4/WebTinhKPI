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
<script src="https://code.jquery.com/jquery-2.2.4.min.js"
	integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	// 	function (setValuesAndSubmit(row_id) {
	// 		document.getElementById('row_id').value = row_id;
	// 		document.getElementById('selected_item_name').value = document
	// 				.getElementById('item_name_' + row_id).value;
	// 		document.getElementById('selected_item_price').value = document
	// 				.getElementById('item_price_' + row_id).value;
	// 		document.getElementById('selected_item_quantity').value = document
	// 				.getElementById('item_quantity_' + row_id).value;

	// 	  });
	//alert(document.getElementById('row_id').value+'|'+document.getElementById('selected_item_name').value+'|'+document.getElementById('selected_item_price').value+'|'+document.getElementById('selected_item_quantity').value);
	//Uncomment below if you want to submit the form
	//document.forms[0].submit();
	//	}​​
</script>
</head>
<input class="triggerBtn" type="text"  value="" />
​
<button  class="inputDisabled" disabled="disabled" name="edit" id="edit">Edit</button>
​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
<body>
	<form action=callme method="get">
		<input type="checkbox" name="param" value="Bike"> I have a
		bike<br> <input type="checkbox" name="param1" value="Car" checked>
		I have a car<br>

	</form>
	<form action=callme method="get">
		<button  type="submit">submit</button>
	</form>
</body>
<script type="text/javascript">
	$(".triggerBtn").click(function() {
		$('.inputDisabled').removeAttr("disabled");
	});
// 	$("#edit").click(function(event) {
// 		event.preventDefault();
// 		$('.inputDisabled').removeAttr("disabled");
// 	});​
</script>
</html>