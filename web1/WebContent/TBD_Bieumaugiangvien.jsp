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
								<button type="button" class="btn btn-default active"
									style="width: 100%"
									onclick="window.location.href='TBD_Bieumaugiangvien.jsp'"">
									<div class="danhmuc" style="float: left">Biểu mẫu giảng
										viên</div>
								</button>
								</button>
								<button type="button" class="btn btn-default"
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
					<li class="active"><a data-toggle="tab" href="#home">Duyệt
							biểu mẫu đã đăng ký của GV</a></li>
					<li><a data-toggle="tab" href="#menu1">Duyệt biểu mẫu đã
							đánh giá của GV</a></li>
				</ul>
				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						<div class="panel panel-default">
							<div style="overflow-x: auto;">
								<table>
									<thead>
										<tr>
											<th>Mã số cán bộ</th>
											<th>Tên giáo viên</th>
											<th>Các biểu mẫu đã đăng ký</th>
											<th>Duyệt</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>123</td>
											<td>Nguyễn Văn A</td>
											<td><a href="TBD_duyetbieumaudadkcuagv.jsp">xem</a></td>
											<td><input type="checkbox"></td>
										</tr>
										<tr>
											<td>222</td>
											<td>Nguyễn Văn D</td>
											<td><a href="TBD_duyetbieumaudadkcuagv.jsp">xem</a></td>
											<td><input type="checkbox" checked></td>
										</tr>
										<tr>
											<td>333</td>
											<td>Nguyễn Thị D</td>
											<td><a href="TBD_duyetbieumaudadkcuagv.jsp">xem</a></td>
											<td><input type="checkbox" checked></td>
										</tr>
										<tr>
											<td>345</td>
											<td>Nguyễn Trung D</td>
											<td><a href="TBD_duyetbieumaudadkcuagv.jsp">xem</a></td>
											<td><input type="checkbox"></td>
										</tr>
										<tr>
											<td>123</td>
											<td>Trần Văn A</td>
											<td><a href="TBD_duyetbieumaudadkcuagv.jsp">xem</a></td>
											<td><input type="checkbox" checked></td>
										</tr>
										<tr>
											<td>666</td>
											<td>Trần Thị B</td>
											<td><a href="TBD_duyetbieumaudadkcuagv.jsp">xem</a></td>
											<td><input type="checkbox" checked></td>
										</tr>
										<tr>
											<td>222</td>
											<td>Vũ Văn H</td>
											<td><a href="TBD_duyetbieumaudadkcuagv.jsp">xem</a></td>
											<td><input type="checkbox"></td>
										</tr>
										<tr>
											<td>111</td>
											<td>Trần Văn B</td>
											<td><a href="TBD_duyetbieumaudadkcuagv.jsp">xem</a></td>
											<td><input type="checkbox"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div id="menu1" class="tab-pane fade">
					<div class="panel panel-default">
							<div style="overflow-x: auto;">
							<table>
								<tr>
									<th>Mã số cán bộ</th>
									<th>Tên giáo viên</th>
									<th>Các biểu mẫu đã đánh giá</th>
									<th>Duyệt</th>
								</tr>
								<tr>
									<td>123</td>
									<td>Nguyễn Văn A</td>
									<td><a href="TBD_duyetbieumaudadanhgiacuagv.jsp">xem</a></td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>222</td>
									<td>Nguyễn Văn D</td>
									<td><a href="TBD_duyetbieumaudadanhgiacuagv.jsp">xem</a></td>
									<td><input type="checkbox" checked></td>
								</tr>
								<tr>
									<td>333</td>
									<td>Nguyễn Thị D</td>
									<td><a href="TBD_duyetbieumaudadanhgiacuagv.jsp">xem</a></td>
									<td><input type="checkbox" checked></td>
								</tr>
								<tr>
									<td>345</td>
									<td>Nguyễn Trung D</td>
									<td><a href="TBD_duyetbieumaudadanhgiacuagv.jsp">xem</a></td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>123</td>
									<td>Trần Văn A</td>
									<td><a href="TBD_duyetbieumaudadanhgiacuagv.jsp">xem</a></td>
									<td><input type="checkbox" checked></td>
								</tr>
								<tr>
									<td>666</td>
									<td>Trần Thị B</td>
									<td><a href="TBD_duyetbieumaudadanhgiacuagv.jsp">xem</a></td>
									<td><input type="checkbox" checked></td>
								</tr>
								<tr>
									<td>222</td>
									<td>Vũ Văn H</td>
									<td><a href="TBD_duyetbieumaudadanhgiacuagv.jsp">xem</a></td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>111</td>
									<td>Trần Văn B</td>
									<td><a href="TBD_duyetbieumaudadanhgiacuagv.jsp">xem</a></td>
									<td><input type="checkbox"></td>
								</tr>
							</table>
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