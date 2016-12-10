<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Giang Vien</title>
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
		<div class="row">
			<div class="col-md-3">
				<div class="col-md-12 ">
					<div class="row ">
						<div class="btn-group-vertical">
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='BanGiamHieu.jsp'">
								<div class="danhmuc" style="float: left">Thông tin cá nhân</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='BanGiamHieu_Bieumautruongkhoa.jsp'">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu cán bộ</div>
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
								placeholder="Tìm kiếm">
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-center">BIỂU MẪU CÁN BỘ</h3>
					</div>
					<div style="overflow-x: auto;">
						<table>
							<thead>
								<tr>
									<th>MSCB</th>
									<th>Tên cán bộ</th>
									<th>Chức vụ</th>
									<th>Khoa</th>
									<th>Biểu mẫu đã đăng ký</th>
									<th>Biểu mẫu đã đánh giá</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>123</td>
									<td>Nguyễn Văn A</td>
									<td>Trưởng khoa</td>
									<td>CNTT</td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
								<tr>
									<td>333</td>
									<td>Nguyễn Văn B</td>
									<td>Trưởng khoa</td>
									<td>CNTT</td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
								<tr>
									<td>123</td>
									<td>Lê Văn D</td>
									<td>Trưởng bộ môn</td>
									<td>CKM</td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
								<tr>
									<td>456</td>
									<td>Trần Văn G</td>
									<td>Giảng viên</td>
									<td>Kinh tế</td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
								<tr>
									<td>567</td>
									<td>Trần Văn D</td>
									<td>Giảng viên</td>
									<td>CNTT</td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
								<tr>
									<td>322</td>
									<td>Nguyễn Văn H</td>
									<td>Trưởng khoa</td>
									<td>Hóa</td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadk.jsp">Xem</a></td>
									<td class="text-center"><a
										href="BanGiamHieu_Bieumaudadanhgia.jsp">Xem</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<hr></hr>
	<%@include file="footer.jsp"%>
	</div>
	<!-- /container -->
</body>
</html>