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
						<h3 class="text-center">BIỂU MẪU ĐÃ ĐÁNH GIÁ</h3>
					</div>
					<div style="overflow-x: auto;">
						<table>
							<thead>
								<tr>
									<th>Tên biểu mẫu</th>
									<th>Kế hoạch</th>
									<th>Mục tiêu</th>
									<th>Kết quả</th>
									<th>KPI max</th>
									<th>KPI GV đánh giá</th>
									<th>KPI TBM đánh giá</th>
									<th>Duyệt</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>BM123</td>
									<td>Giảng dạy 120 tiết</td>
									<td>120 tiết</td>
									<td>120 tiết</td>
									<td>40</td>
									<td>40</td>
									<td><input class="form-control text-center" type="text"
										style="width: 60px" disabled="disabled" placeholder="50">
										</input></td>
									<td><input type="checkbox" checked></td>
								</tr>
								<tr>
									<td>BM222</td>
									<td>Phân công abc</td>
									<td>40 công việc</td>
									<td>35 công việc</td>
									<td>50</td>
									<td>50</td>
									<td><input class="form-control text-center" type="text"
										style="width: 60px" disabled="disabled" placeholder="30">
										</input></td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>BM333</td>
									<td>Bảo vệ đồ án</td>
									<td>2 đồ án</td>
									<td>2 đồ án</td>
									<td>60</td>
									<td>60</td>
									<td><input class="form-control text-center" type="text"
										style="width: 60px" disabled="disabled" placeholder="40">
										</input></td>
									<td><input type="checkbox" checked></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-2 col-sm-offset-10">
						<button class="btn btn-primary"
							onclick="window.location.href='BanGiamHieu_Xembieumaucb.jsp'">Quay
							về</button>
					</div>
				</div>
	<hr></hr>
	<%@include file="footer.jsp"%>
		</div>
	<!-- /container -->
</body>
</html>