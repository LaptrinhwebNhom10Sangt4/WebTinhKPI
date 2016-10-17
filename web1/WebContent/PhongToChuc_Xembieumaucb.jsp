<%@ page contentType="text/html; charset=UTF-8"%>

<!document html>
<html>
<head>
<title>Phong to chuc can bo</title>
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
								onclick="window.location.href='PhongToChuc_CanBo.jsp'">
								<div class="danhmuc" style="float: left">Thông tin cá nhân</div>
							</button>
							<button type="button" class="btn btn-default active"
								style="width: 100%"
								onclick="window.location.href='PhongToChuc_Xembieumaucb.jsp'">
								<div class="danhmuc" style="float: left">Xem biểu mẫu cán
									bộ</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='PhongToChuc_Phancongcongviec.jsp'">
								<div class="danhmuc" style="float: left">Phân công công
									việc</div>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="container4">
					<div class="row">
						<div class="dropdown">
							<div class="col-md-2">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">
									Lựa chọn <span class="caret"></span>
								</button>
								<ul class="dropdown-menu dropdown"
									aria-labelledby="dropdownMenu1">
									<li><a href="#">Tất cả</a></li>
									<li><a href="#">Đề tài</a></li>
									<li><a href="#">Môn học</a></li>
								</ul>
							</div>

						</div>
						<div class="col-md-4 col-md-offset-6">
							<div class="form-group">
								<input type="text" class="form-control" name=""
									placeholder="Tìm kiếm"> </input>
							</div>
						</div>
					</div>
					<h2 class="text-center">Biểu mẫu cán bộ</h2>
					<div class="row">
						<table>
							<tr>
								<th>MSCB</th>
								<th>Tên cán bộ</th>
								<th>Chức vụ</th>
								<th>Khoa</th>
								<th>Biểu mẫu đã đăng ký</th>
								<th>Biểu mẫu đã đánh giá</th>
							</tr>
							<tbody>
								<tr>
									<td>123</td>
									<td>Nguyễn Văn A</td>
									<td>Trưởng khoa</td>
									<td>CNTT</td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
								<tr>
									<td>333</td>
									<td>Nguyễn Văn B</td>
									<td>Trưởng khoa</td>
									<td>CNTT</td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
								<tr>
									<td>123</td>
									<td>Lê Văn D</td>
									<td>Trưởng bộ môn</td>
									<td>CKM</td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
								<tr>
									<td>456</td>
									<td>Trần Văn G</td>
									<td>Giảng viên</td>
									<td>Kinh tế</td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
								<tr>
									<td>567</td>
									<td>Trần Văn D</td>
									<td>Giảng viên</td>
									<td>CNTT</td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
								<tr>
									<td>322</td>
									<td>Nguyễn Văn H</td>
									<td>Trưởng khoa</td>
									<td>Hóa</td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="PhongToChuc_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr></hr>
	<%@include file="footer.jsp"%>
</body>
</html>