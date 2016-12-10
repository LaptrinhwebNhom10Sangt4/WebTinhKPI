<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<title>Truong khoa</title>
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


</head>
<body>

	<div class="container">
		<%@include file="header.jsp"%>
		<div class="row ">
			<div class="col-md-3">
				<div class="col-md-12 ">
					<div class="row ">
						<div class="btn-group-vertical">
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa.jsp'">
								<div class="danhmuc" style="float: left">Thông tin cá nhân</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Dangkybieumau.jsp'">
								<div class="danhmuc" style="float: left">Đăng Kí biểu mẫu</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Quanlybieumaudadk.jsp'">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu
									đã đăng kí</div>
							</button>
							<button type="button" class="btn btn-default active"
								style="width: 100%"
								onclick="window.location.href='TruongKhoa_Bieumaugiangvien.jsp'"">
								<div class="danhmuc" style="float: left">Biểu mẫu giảng
									viên</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Phancongcongviec.jsp'"">
								<div class="danhmuc" style="float: left">Phân công công
									việc</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Quanlybieumaukhoa.jsp'"">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu
									khoa</div>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-4 col-md-offset-8">
						<div class="form-group">
							<input type="text" class="form-control" name=""
								placeholder="Tìm kiếm"> </input>
						</div>
					</div>
				</div>
				<%
					String tengv = (String) request.getAttribute("tengv");
					int colCount = (int) request.getAttribute("colCount");
					//String url = "Giangvien_TinhtrangbieumaudaDK.jsp";
					String email = new String((String) request.getAttribute("email"));
					String role = new String((String) request.getAttribute("role"));
					String title = "Biểu mẫu đã đăng ký của ";
					switch(Integer.parseInt(role)){
					case(1):title+=" GV ";break;
					case(2):title+=" TBM ";break;
					case(3):title+="Trưởng khoa ";break;
					}
					ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
					int count = 0;
					int rowCol = form.size() / colCount;
					Object val = new Object();
					if(role.equals("2"))
					{
				%>
				<form action="QLbmdg1" method="get">
					<input type="hidden" name="quantity" value=<%=rowCol%> /> <input
						type="hidden" name="email" value=<%=email%> /> <input
						type="hidden" name="url"
						value="TruongKhoa_duyetbieumaudanhgiacuagv.jsp" /> <input
						type="hidden" name="ngduyet" value="trk" /> <input type="hidden"
						name="role" value=<%=role%> />
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="text-center">
								<%=title+tengv%></h3>
						</div>

						<%
							tengv = URLEncoder.encode(tengv, "UTF-8");
						%>
						<input type="hidden" name="tengv" value=<%=tengv%> />
						<div style="overflow-x: auto;">

							<table id="mytable">
								<thead>
									<tr>
										<th>Tên kế hoạch</th>
										<th>Chỉ tiêu</th>
										<th>Kpi max</th>
										<th>Kết quả</th>
										<th style="width: 100px">KPI tự đánh giá</th>
										<th style="width: 100px">KPI trưởng khoa đánh giá</th>
										<th>Duyệt</th>
									</tr>
								</thead>
								<tbody>
									<%
										for (int i = 1; i <= rowCol; i++) {
											val = form.get(count);
									%>
									<tr>
										<%
											for (int j = 1; j <= colCount; j++) {
													if (j == 1 || j == 8 || j == 10) {
														count++;
														continue;
													}
													if (j == 7) {
														String disable = "";
														if(role.equals("2")==false) disable = "disabled";
										%>
										<td><input type="hidden" name=<%="row"+i%> value=<%=val%> />
											<input  class="form-control" style="width: 80px" <%=disable %> type="text"
											id=<%=i%> name=<%=val%> placeholder="<%=form.get(count++)%>" /></td>
										<%
											continue;
													}
													if (j == 9) {
														String check = "";
														if ((boolean) form.get(count++))
															check = "checked";
										%>
										<td><input type="checkbox" disabled <%=check%> /></td>
										<%
											continue;
													}
										%>

										<td><%=form.get(count++)%></td>
										<%
											}
										%>
									</tr>
									<%
										}
									%>
								</tbody>
							</table>
							<div style="float: right">
								<div class="btn-group" role="group">
									<button type="submit" class="btn btn-primary"
										onclick="window.location.href=''">Duyệt biểu mẫu</button>
									<button name="abc" type="button" class="btn btn-danger">Hủy</button>
								</div>
							</div>
						</div>
					</div>
				</form>
				<%}
				  else{%>
				<form action="QLbmdg2" method="get">
					<input type="hidden" name="quantity" value=<%=rowCol%> /> <input
						type="hidden" name="email" value=<%=email%> /> <input
						type="hidden" name="url"
						value="TruongKhoa_duyetbieumaudanhgiacuagv.jsp" /> <input
						type="hidden" name="ngduyet" value="trk" /> <input type="hidden"
						name="role" value=<%=role%> />
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="text-center">
								<%=title+tengv%></h3>
						</div>

						<%
							tengv = URLEncoder.encode(tengv, "UTF-8");
						%>
						<input type="hidden" name="tengv" value=<%=tengv%> />
						<div style="overflow-x: auto;">

							<table id="mytable">
								<thead>
									<tr>
										<th>Tên kế hoạch</th>
										<th>Chỉ tiêu</th>
										<th>Kpi max</th>
										<th>Kết quả</th>
										<th style="width: 100px">KPI tự đánh giá</th>
										<th style="width: 100px">KPI TBM đánh giá</th>
										<th>TBM duyệt</th>
										<th>TrKhoa duyệt</th>
									</tr>
								</thead>
								<tbody>
									<%
										for (int i = 1; i <= rowCol; i++) {
											val = form.get(count);
									%>
									<tr>
										<%
											for (int j = 1; j <= colCount; j++) {
													if (j == 1 || j == 10) {
														count++;
														continue;
													}
													if (j == 7) {
														String disable = "";
														if(role.equals("2")==false) disable = "disabled";
										%>
										<td><input type="hidden" name=<%="row"+i%> value=<%=val%> />
											<input  class="form-control" style="width: 80px" <%=disable %> type="text"
											 placeholder="<%=form.get(count++)%>" /></td>
										<%
											continue;
													}
													if (j == 8) {
														String check = "";
														if ((boolean) form.get(count++))
															check = "checked";
										%>
										<td><input type="checkbox" disabled <%=check%> /></td>
										<%
											continue;
													}
													if(j == 9 ){
														String trkcheck = "";
														if((boolean)form.get(count++))
															trkcheck = "checked";
													
										%>
										<td><input name=<%=val%> type="checkbox" value="TRUE" <%=trkcheck%> /></td>
										<%continue;
											} %>
										<td><%=form.get(count++)%></td>
										<%
											}
										%>
									</tr>
									<%
										}
									%>
								</tbody>
							</table>
							<div style="float: right">
								<div class="btn-group" role="group">
									<button type="submit" class="btn btn-primary"
										onclick="window.location.href=''">Duyệt biểu mẫu</button>
									<button name="abc" type="button" class="btn btn-danger">Hủy</button>
								</div>
							</div>
						</div>
					</div>
				</form>
				<%} %>
			</div>
		</div>
	<hr></hr>
	<%@include file="footer.jsp"%>
	</div>
</body>
<script type="text/javascript">
	$('button[type="submit"]')
			.click(
					function() {

						for (var i = 1; i <= document.getElementById('mytable').rows.length; i++) {
							var val = document.getElementById("mytable").rows[i].cells[2].innerHTML;

							var kpi = document.getElementById(i).value;
							if (kpi > val || kpi >= 100) {
								$('button[type="submit"]').attr("type",
										"button");
								alert("KPI đánh giá phải bé hơn hoặc bằng KPI max tại dòng thứ "
										+ i);
							}
						}
					})
</script>
</html>