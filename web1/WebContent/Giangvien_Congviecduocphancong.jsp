<%@ page contentType="text/html; charset=UTF-8"%>

<!document html>
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
							<button type="submit" class="btn btn-default" name="getform"
								style="width: 100%" value="GiangVien.jsp">
								<div class="danhmuc" style="float: left">Thông tin cá nhân</div>
							</button>
							<button type="submit" name="getform" class="btn btn-default"
								style="width: 100%" value="Giangvien_DangkyBieumau.jsp">
								<div class="danhmuc" style="float: left">Đăng Kí biểu mẫu</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='Giangvien_Quanlybieumaudadangky.jsp'">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu
									đã đăng kí</div>
							</button>
							<button type="button" class="btn btn-default active"
								style="width: 100%"
								onclick="window.location.href='Giangvien_Congviecduocphancong.jsp'"">
								<div class="danhmuc" style="float: left">Cập nhật tiến
									trình được phân công</div>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-9">
			<div class="row">
				<div class="dropdown"></div>
				<div class="col-md-4 col-md-offset-8">
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
								<th>Chỉ đạo và hướng dẫn</th>
								<th>Thời hạn</th>
								<th>Công việc chi tiết</th>
								<th>Tiến trình</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>KPI123</td>
								<td>Phổ biến sd KPI cho GV</td>
								<td>Nguyễn Văn A</td>
								<td>10/9/2016-21/12/2016</td>
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
								<td>Nguyễn Văn b</td>
								<td>11/10/2016-1/2/2017</td>
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
								<td>Lê Văn B</td>
								<td>12/11/2016-1/12/2016</td>
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
								<td>Trần Thị A</td>
								<td>20/9/2016-15/12/2016</td>
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
							<tr>
								<td>CV144</td>
								<td>Thực hiện ttt</td>
								<td>Nguyễn Văn D</td>
								<td>20/5/2016-11/11/2016</td>
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
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100" style="width: 70%;">
											<span class="sr-only">60% Complete</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>CV234</td>
								<td>Phân công xxy</td>
								<td>Lê Thị A</td>
								<td>1/2/2016-11/12/2016</td>
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
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
											style="width: 85%;">
											<span class="sr-only">60% Complete</span>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 col-md-offset-10" style="margin-top: 10px">
			<button class="btn btn-primary">Cập nhật</button>
		</div>
	</div>

	<hr></hr>
	<%@include file="footer.jsp"%>
	<!-- /container -->


</body>
</html>