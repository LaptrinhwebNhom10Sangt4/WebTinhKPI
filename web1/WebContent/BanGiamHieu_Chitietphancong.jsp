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
							<button type="button" class="btn btn-default active"
								style="width: 100%"
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
					<div class="col-md-4 col-md-offset-8">
						<div class="form-group">
							<input type="text" class="form-control" name=""
								placeholder="Tìm kiếm">
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
							<button name="submit" class="btn btn-danger"
								onclick="window.location.href='BanGiamHieu_Phancongcongviec.jsp'">Quay
								về</button>
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