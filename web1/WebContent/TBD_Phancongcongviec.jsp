<%@ page contentType="text/html; charset=UTF-8"%>

<!document html>
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

<style>
.nav-tabs li a {
	color: #777;
}
</style>
</head>
<script>
		function open_window(url, width, height) {
			var my_window;

    //screen.width = Desktop Width
    //screen.height = Desktop Height

    var center_left = (screen.width / 2) - (width / 2);
    var center_top = (screen.height / 2) - (height / 2);

    my_window = window.open(url, "Title", "scrollbars=0, width=" + width + ", height=" + height + ", left=" + center_left + ", top=" + center_top);
    my_window.focus();
}
</script>
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
								<button type="submit" name="getform" class="btn btn-default"
									value="TBD_Dangkybieumau.jsp" style="width: 100%">
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
					<div class="col-md-4 col-md-offset-8">
						<div class="form-group">
							<input type="text" class="form-control" name=""
								placeholder="Tìm kiếm">
						</div>
					</div>
				</div>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#home">Phân
							công</a></li>
					<li><a data-toggle="tab" href="#menu1">Danh sách công việc</a></li>
				</ul>
				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						<div class="panel panel-default">
							<div style="overflow-x: auto;">
								<table>
									<thead>
										<tr>
											<th>Mã công việc</th>
											<th>Tên công việc</th>
											<th>MSGV</th>
											<th>Chỉ đạo</th>
											<th>Thời hạn</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><select class="dropdown semi-square" id="cboRole"
												style="color: 000000; height: 30px">
													<option value="">CV1</option>
													<option value="1">CV2</option>
													<option value="2">CV3</option>
													<option value="3">CV4</option>
													<option value="4">CV5</option>
											</select></td>
											<td>Hướng dẫn đồ án</td>
											<td><input type="text"></td>
											<td>Nguyễn Văn A</td>
											<td>12/3/2015-22/9/2016</td>
										</tr>
										<tr>
											<td><select class="dropdown semi-square" id="cboRole"
												style="color: 000000; height: 30px">
													<option value="1">CV2</option>
													<option value="2">CV3</option>
													<option value="3">CV4</option>
													<option value="4">CV5</option>
											</select></td>
											<td>Phân công abcd</td>
											<td><input type="text"></td>
											<td>Nguyễn Thị C</td>
											<td>1/4/2016-2/11/2017</td>
										</tr>
										<tr>
											<td><select class="dropdown semi-square" id="cboRole"
												style="color: 000000; height: 30px">
													<option>Chọn</option>
													<option value="1">CV2</option>
													<option value="2">CV3</option>
													<option value="3">CV4</option>
													<option value="4">CV5</option>
											</select></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-3 col-sm-offset-9">
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-primary"
										onclick="window.location.href="#">Phân công</button>
									<button type="button" class="btn btn-danger">Hủy</button>
								</div>
							</div>
						</div>
					</div>
					<div id="menu1" class="tab-pane fade">
						<div class="panel panel-default">
							<div style="overflow-x: auto;">
								<table>
									<thead>
										<tr>
											<th>Mã công việc</th>
											<th>Tên công việc</th>
											<th>Chỉ đạo và hướng dẫn</th>
											<th>Thời hạn</th>
											<th>Công việc chi tiết</th>
										</tr>
									</thead>
									<tbody>
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
														</tr>
													</table>
												</div>
											</div></td>

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
															</tr>
															<tr>
																<td>Phổ biến cho toàn bộ GV</td>
															</tr>
															<tr>
																<td>Hướng dẫn GV</td>
															</tr>
														</table>
													</div>
												</div></td>

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
															</tr>
															<tr>
																<td>Phổ biến cho toàn bộ GV</td>
															</tr>
															<tr>
																<td>Hướng dẫn GV</td>
															</tr>
														</table>
													</div>
												</div></td>

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
															</tr>
															<tr>
																<td>Phổ biến cho toàn bộ GV</td>
															</tr>
															<tr>
																<td>Hướng dẫn GV</td>
															</tr>
														</table>
													</div>
												</div></td>

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
															</tr>
															<tr>
																<td>Phổ biến cho toàn bộ GV</td>
															</tr>
															<tr>
																<td>Hướng dẫn GV</td>
															</tr>
														</table>
													</div>
												</div></td>

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
															</tr>
															<tr>
																<td>Phổ biến cho toàn bộ GV</td>
															</tr>
															<tr>
																<td>Hướng dẫn GV</td>
															</tr>
														</table>
													</div>
												</div></td>

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
															</tr>
															<tr>
																<td>Phổ biến cho toàn bộ GV</td>
															</tr>
															<tr>
																<td>Hướng dẫn GV</td>
															</tr>
														</table>
													</div>
												</div></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4 col-sm-offset-9">
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-primary"
										onClick="javascript:open_window('TBD_TaoCV.jsp',600,600);">Tạo
										công việc</button>
									<button type="button" class="btn btn-danger">Hủy</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /container -->
		<hr></hr>
		<%@include file="footer.jsp"%>
</body>
</html>