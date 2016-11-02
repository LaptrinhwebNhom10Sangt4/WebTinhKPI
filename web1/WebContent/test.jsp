<html>
<head>
    <script type="text/javascript">
        function setValuesAndSubmit(row_id){
    document.getElementById('row_id').value=row_id;
    document.getElementById('selected_item_name').value=document.getElementById('item_name_'+row_id).value;
    document.getElementById('selected_item_price').value=document.getElementById('item_price_'+row_id).value;
    document.getElementById('selected_item_quantity').value=document.getElementById('item_quantity_'+row_id).value;
        
//alert(document.getElementById('row_id').value+'|'+document.getElementById('selected_item_name').value+'|'+document.getElementById('selected_item_price').value+'|'+document.getElementById('selected_item_quantity').value);
//Uncomment below if you want to submit the form
//document.forms[0].submit();
}
    </script>
</head>
<body>
<!--     <form action="callme" method="get"> -->
<!--         <input type="hidden" name="row_id" id="row_id"/> -->
<!--         <input type="hidden" name="selected_item_name" id="selected_item_name"/> -->
<!--         <input type="hidden" name="selected_item_price" id="selected_item_price"/> -->
<!--         <input type="hidden" name="selected_item_quantity" id="selected_item_quantity"/> -->
<!--     <table border="1"> -->
<!--         <tr> -->
<!--             <td> -->
<!--                 The Catcher In The Rye -->
<!--                 <input type="hidden" id="item_name_B001" /> -->
<!--             </td> -->
<!--             <td> -->
<!--                 199 -->
<!--                 <input type="hidden" id="item_price_B001" value="199"/> -->
<!--             </td> -->
<!--             <td><select id="item_quantity_B001"> -->
<!--                 <option value="1">1</option> -->
<!--                 <option value="2">2</option> -->
<!--                 <option value="3">3</option> -->
<!--             </select></td>   -->
<!--             <td><button type="submit" onclick="setValuesAndSubmit('B001');">Add To Cart</button></td>            -->
<!--         </tr> -->
<!--         <tr> -->
<!--             <td> -->
<!--                 To Kill A MockingBird -->
<!--                 <input type="hidden" id="item_name_B002" value="To Kill A MockingBird"/> -->
<!--             </td> -->
<!--             <td> -->
<!--                 299 -->
<!--                 <input type="hidden" id="item_price_B002" value="299"/> -->
<!--             </td> -->
<!--             <td><select id="item_quantity_B002"> -->
<!--                 <option>1</option> -->
<!--                 <option>2</option> -->
<!--                 <option>3</option> -->
<!--             </select></td>   -->
<!--             <td><button type="button"  onclick="setValuesAndSubmit('B002');">Add To Cart</button></td>            -->
<!--         </tr> -->
<!--     </table> -->
<!--     </form> -->
	<form action=callme method="get">
		<input type="checkbox" name="param" value="Bike"> I have a bike<br>
		<input type="checkbox" name="param1" value="Car" checked> I have a car<br>
		
	</form>
	<form action=callme method="get">
	<button type="submit">submit</button>
	</form>
</body>
</html>