<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<title>Truong Bo Mon</title>
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
		<div class="row">
			<div class="col-md-3">
				<div class="col-md-12 ">
					<div class="row ">
						<form action="FormLoad" method="post">
							<div class="btn-group-vertical">
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TruongBoMon.jsp'">
									<div class="danhmuc" style="float: left">Thông tin cá
										nhân</div>
								</button>
								<button type="submit" name="getform"
									class="btn btn-default" value="TBD_Dangkybieumau.jsp"
									style="width: 100%">
									<div class="danhmuc" style="float: left">Đăng Kí biểu mẫu</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TBD_Quanlybieumaudadk.jsp'">
									<div class="danhmuc" style="float: left">Quản lý biểu mẫu
										đã đăng kí</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TBD_Bieumaugiangvien.jsp'"">
									<div class="danhmuc" style="float: left">Biểu mẫu giảng
										viên</div>
								</button>
								</button>
								<button type="button" class="btn btn-default active"
									style="width: 100%"
									onclick="window.location.href='TBD_Phancongcongviec.jsp'"">
									<div class="danhmuc" style="float: left">Phân công công
										việc</div>
								</button>
							</div>
						</form>
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
								placeholder="Tìm kiếm"> </input>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-center">CÔNG VIỆC ĐƯỢC PHÂN CÔNG</h3>
					</div>
					<div style="overflow-x: auto;">
						<table>
							<thead>
								<tr>
									<th>Mã công việc</th>
									<th>Tên công việc</th>
									<th>MSCB </th>
									<th>Tên CB</th>
									<th>Công việc đã thực hiện</th>
									<th style="width:200px">Tiến trình</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>KPI123</td>
									<td>Phổ biến sd KPI cho GV</td>
									<td>1</td>
									<td>Nguyễn Văn A</td>
									<td><a role="button" data-toggle="collapse"
										href="#collapseExample1" aria-expanded="false"
										aria-controls="collapseExample"> Xem </a>
										<div class="collapse" id="collapseExample1">
											<div class="well">
												<table>
													<tr>
														<td>Xây dựng web kpi</td>
														<td>
														<td><input type="checkbox"></td>
														</td>
													</tr>
													<tr>
														<td>Phổ biến cho toàn bộ GV</td>
														<td>
														<td><input type="checkbox"></td>
														</td>
													</tr>
													<tr>
														<td>Hướng dẫn GV</td>
														<td>
														<td><input type="checkbox"></td>
														</td>
													</tr>
												</table>
											</div>
										</div></td>
									<td>
										<div class="progress">
											<div class="progress-bar" role="progressbar"
												aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												style="width: 60%;">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td>KPI123</td>
									<td>Giảng dạy abc</td>
									<td>2</td>
									<td>Nguyễn Văn b</td>
									<td><a role="button" data-toggle="collapse"
										href="#collapseExample2" aria-expanded="false"
										aria-controls="collapseExample"> Xem </a>
										<div class="collapse" id="collapseExample2">
											<div class="well">
												<table>
													<tr>
														<td>Xây dựng web kpi</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
													<tr>
														<td>Phổ biến cho toàn bộ GV</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
													<tr>
														<td>Hướng dẫn GV</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
												</table>
											</div>
										</div></td>
									<td>
										<div class="progress">
											<div class="progress-bar-info" role="progressbar"
												aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												style="width: 60%;">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td>CV33</td>
									<td>Hướng dẫn xzy</td>
									<td>3</td>
									<td>Lê Văn B</td>
									<td><a role="button" data-toggle="collapse"
										href="#collapseExample3" aria-expanded="false"
										aria-controls="collapseExample"> Xem </a>
										<div class="collapse" id="collapseExample3">
											<div class="well">
												<table>
													<tr>
														<td>Xây dựng web kpi</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
													<tr>
														<td>Phổ biến cho toàn bộ GV</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
													<tr>
														<td>Hướng dẫn GV</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
												</table>
											</div>
										</div></td>
									<td>
										<div class="progress">
											<div class="progress-bar progress-bar-danger"
												role="
												progressbar" aria-valuenow="60"
												aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td>CV234</td>
									<td>Thực hiện abc</td>
									<td>Lê Thị D</td>
									<td>1/5/2016-21/12/2017</td>
									<td><a role="button" data-toggle="collapse"
										href="#collapseExample1" aria-expanded="false"
										aria-controls="collapseExample"> Xem </a>
										<div class="collapse" id="collapseExample1">
											<div class="well">
												<table>
													<tr>
														<td>Xây dựng web kpi</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
													<tr>
														<td>Phổ biến cho toàn bộ GV</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
													<tr>
														<td>Hướng dẫn GV</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
												</table>
											</div>
										</div></td>
									<td>
										<div class="progress">
											<div class="progress-bar progress-bar-warning"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 90%;">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td>CV454</td>
									<td>Cung cấp xyz</td>
									<td>4</td>
									<td>Trần Thị A</td>
									<td><a role="button" data-toggle="collapse"
										href="#collapseExample1" aria-expanded="false"
										aria-controls="collapseExample"> Xem </a>
										<div class="collapse" id="collapseExample1">
											<div class="well">
												<table>
													<tr>
														<td>Xây dựng web kpi</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
													<tr>
														<td>Phổ biến cho toàn bộ GV</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
													<tr>
														<td>Hướng dẫn GV</td>
														<td>
														<td><input type="checkbox"></td>

													</tr>
												</table>
											</div>
										</div></td>
									<td>
										<div class="progress">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 20%;">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
							<div class="col-md-6 col-md-offset-7">
								<div class="btn-group">
									<button name="submit" class="btn btn-primary">Phân công</button>
									<button name="submit" class="btn btn-info">Xóa phân công</button>
									<button name="submit" class="btn btn-danger" onclick="window.location.href='TBD_Phancongcongviec.jsp'">Quay về</button>
								</div>
							</div>
						</div>
			</div>
		</div>

		<hr></hr>

		<%@include file="footer.jsp"%>
</body>
</html>