<%@ page contentType="text/html; charset=UTF-8"%>

<!document html>
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

<link href="js/scripts.js" rel="stylesheet" />
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
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Bieumaugiangvien.jsp'"">
								<div class="danhmuc" style="float: left">Biểu mẫu giảng
									viên</div>
							</button>
							<button type="button" class="btn btn-default active"
								style="width: 100%"
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
								placeholder="Tìm kiếm">
						</div>
					</div>
				</div>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#home">Công
							việc được phân công</a></li>
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
																<td><input type="checkbox"></td>
															</tr>
															<tr>
																<td>Phổ biến cho toàn bộ GV</td>
																<td><input type="checkbox"></td>
															</tr>
															<tr>
																<td>Hướng dẫn GV</td>
																<td><input type="checkbox"></td>
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
													<div class="progress-bar progress-bar-info"
														role="progressbar" aria-valuenow="60" aria-valuemin="0"
														aria-valuemax="100" style="width: 85%;">
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
							<div class="col-sm-2 col-sm-offset-10">
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-primary">Phân
										công</button>
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
											<th>Phân công</th>
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
															</tr>
														</table>
													</div>
												</div></td>
												<td><a href="TruongKhoa_Chitietphancong.jsp">Chi tiết</a></td>
										<tr>
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

	<hr></hr>
	<%@include file="footer.jsp"%>
		</div>
</body>
</html>