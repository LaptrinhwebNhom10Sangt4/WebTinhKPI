<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLEncoder"%>
<!document html>
<html>
<head>
<title>Ban giam hieu</title>
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
		<div class=" row ">
			<div class="col-md-12 drmenu">
				<nav id="menu" class="navbar navbar-default">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse" data-target="#navbar"
								aria-expanded="false" aria-controls="navbar">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#"><span
								class="glyphicon glyphicon-home"></span></a>
						</div>
						<div id="navbar" class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="TrangChu.jsp">Trang Chủ</a></li>
								<li><a href="#">Hướng Dẫn</a></li>
							</ul>
							<ul class="nav navbar-nav navbar-right">
								<form class="navbar-form navbar-left" role="search">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Gv:Nguyễn Văn A">
									</div>
									<button type="button" class="btn btn-info"
										onclick="window.location.href='TrangChu.jsp'">
										<i class="fa fa-sign-out"></i>Đăng Xuất
									</button>
								</form>
							</ul>
						</div>
						<!--/.nav-collapse -->
					</div>
					<!--/.container-fluid -->
				</nav>
			</div>
		</div>
		<div class="row ">
			<div class="col-md-3">
				<div class="col-md-12 ">
					<div class="row ">
						<div class="btn-group-vertical">
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='BanGiamHieu.jsp'">
								<div class="danhmuc" style="float: left">Thông tin cá nhân</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='BanGiamHieu_Xembieumaucb.jsp'">
								<div class="danhmuc" style="float: left">Xem biểu mẫu cán
									bộ</div>
							</button>
							<button type="button" class="btn btn-default active"
								style="width: 100%"
								onclick="window.location.href='BanGiamHieu_Bieumautruongkhoa.jsp'">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu
									trưởng khoa</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='BanGiamHieu_Phancongcongviec.jsp'"">
								<div class="danhmuc" style="float: left">Phân công công
									việc</div>
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
								placeholder="Tìm kiếm">
						</div>
					</div>
				</div>
				<%
					String tengv = (String) request.getAttribute("tengv");
					int colCount = (int) request.getAttribute("colCount");
					//String url = "Giangvien_TinhtrangbieumaudaDK.jsp";
					String email = new String((String) request.getAttribute("email"));
					ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
					String role = new String((String) request.getAttribute("role"));
					String title = "Biểu mẫu đã đăng ký của ";
					switch(Integer.parseInt(role)){
					case(1):title+=" GV ";break;
					case(2):title+=" TBM ";break;
					case(3):title+="Trưởng khoa ";break;
					}
					int count = 0;
					int rowCol = form.size() / colCount;
					Object val = new Object();
					if (role.equals("3")) {
				%>
				<form action="QLbmdg1" method="get">
					<input type="hidden" name="quantity" value=<%=rowCol%> /> <input
						type="hidden" name="email" value=<%=email%> /> <input
						type="hidden" name="url"
						value="BanGiamHieu_duyetbieumaudadanhgia.jsp" /> <input
						type="hidden" name="ngduyet" value="bgh" /> <input type="hidden"
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
										<th style="width: 100px">KPI đánh giá</th>
										<th style="width: 100px">KPI BGH đánh giá</th>
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
														if (j == 1 || j == 8 || j == 9) {
															count++;
															continue;
														}
														if (j == 7) {
															String disable = "";
															if (role.equals("3") == false)
																disable = "disabled";
										%>
										<td><input type="hidden" name=<%="row" + i%>
											value=<%=val%> /> <input type="text" id=<%=i%> name=<%=val%>
											placeholder="<%=form.get(count++)%>" /></td>
										<%
											continue;
														}
														if (j == 10) {
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
				<%
					}
					if (role.equals("2")) {
				%>
				<form>
					<div class="panel panel-default">
						<div class="panel-heading">s
							<h3 class="text-center">
								Biểu mẫu đã đánh giá của TBM
								<%=tengv%></h3>
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
										%>
										<td>
											<input style="width: 80px" disabled type="text"
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
						</div>
					</div>
				</form>
				<%
					}
					if (role.equals("1")) {
				%>
					<form>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="text-center">
								Biểu mẫu đã đánh giá của GV
								<%=tengv%></h3>
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
										<th style="width: 80px">KPI GV đánh giá</th>
										<th >KPI TBM đánh giá</th>
										<th>TBM duyệt</th>
										<th>Trưởng khoa duyệt</th>
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
										%>
										<td>
											<input disabled style="width: 80px" type="text" id=<%=i%> name=<%=val%>
											placeholder="<%=form.get(count++)%>" /></td>
										<%
											continue;
													}
													if (j == 8 || j == 9) {
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
						</div>
					</div>
				</form>
				<%} %>
			</div>
		</div>
	</div>

	<hr></hr>
	<%@include file="footer.jsp"%>
</body>
</html>