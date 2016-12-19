<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
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
		<div class="row">
			<div class="col-md-3">
				<div class="col-md-12 ">
					<div class="row ">
						<button type="button" class="btn btn-default "
								style="width: 100%"
								onclick="window.location.href='BanGiamHieu.jsp'">
								<div class="danhmuc" style="float: left">Thông tin cá nhân</div>
							</button>
							<button type="button"
								onclick="window.location.href='<%=request.getContextPath()%>/QLbmdk?url=BanGiamHieu_Bieumautruongkhoa.jsp&email=${email}'"
								class="btn btn-default active" style="width: 100%">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu cán bộ</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='<%=request.getContextPath()%>/CvDcPc?url=BanGiamHieu_Phancongcongviec.jsp&email=${email}&MaKhoa=${MaKhoa}'">
								<div class="danhmuc" style="float: left">Phân công công việc</div>
							</button>
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
						<h3 class="text-center">BIỂU MẪU ĐÃ ĐĂNG KÝ</h3>
					</div>
					<div style="overflow-x: auto;">
						<table>
								<thead>
									<tr>
										<th>Tên biểu mẫu</th>
										<th>Kế hoạch</th>
										<th>Chỉ tiêu</th>
										<th>Duyệt</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>BM23</td>
										<td>Hướng dẫn đồ án</td>
										<td>40</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>BM44</td>
										<td>Nghiên cứu xyz</td>
										<td>30</td>
										<td><input type="checkbox"></td>
									</tr>
									<tr>
										<td>BM55</td>
										<td>Phổ biến abc</td>
										<td>30</td>
										<td><input type="checkbox"></td>
									</tr>
								</tbody>
							</table>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-2 col-sm-offset-10">
				<button class="btn btn-primary" onclick="window.location.href='BanGiamHieu_Xembieumaucb.jsp'">Quay về</button>
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