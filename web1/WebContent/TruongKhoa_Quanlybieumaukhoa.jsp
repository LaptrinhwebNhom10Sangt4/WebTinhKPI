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
								onclick="window.location.href='TruongKhoa.jsp'">
								<div class="danhmuc" style="float: left">Thông tin cá nhân</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Dangkybieumau.jsp'">
								<div class="danhmuc" style="float: left">Đăng Kí biểu mẫu</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Quanlybieumaudadk.jsp'">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu đã đăng kí</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Bieumaugiangvien.jsp'"">
								<div class="danhmuc" style="float: left">Biểu mẫu giảng viên</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Phancongcongviec.jsp'"">
								<div class="danhmuc" style="float: left">Phân công công việc</div>
							</button>
							<button type="button" class="btn btn-default active" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Quanlybieumaukhoa.jsp'"">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu khoa</div>
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
								placeholder="Tìm kiếm"> </input>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<h1>DANH SÁCH BIỂU MẪU KHOA</h1>
					</div>
					<div class="col-md-12">
						<table>
							<tr>
								<th>Mã biểu mẫu</th>
								<th>Tên kế hoạch</th>
								<th>Chi tiết kế hoạch</th>
								<th>Mục tiêu</th>
								<th>Chỉ đạo</th>
								<th>Thời hạn</th>
								<th>KPI max</th>
							</tr>
							<tr>
								<td>BM123</td>
								<td>Giảng dạy 120 tiết</td>
								<td><a role="button" data-toggle="collapse"
									href="#collapseExample" aria-expanded="false"
									aria-controls="collapseExample"> Chi tiết </a>
									<div class="collapse" id="collapseExample">
										<div class="well">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Necessitatibus quia provident,
											reprehenderit itaque velit optio quisquam facilis, animi
											blanditiis explicabo magnam ipsa incidunt. Laboriosam ab
											adipisci, libero quasi reprehenderit excepturi quae ipsum
											eius nam quis quia error perferendis alias, harum.</div>
									</div></td>
								<td>120 tiết</td>
								<td>Nguyễn Văn A</td>
								<td>13/1/2015-14/9/2016</td>
								<td>40</td>
							</tr>
							<tr>
								<td>BM143</td>
								<td>Giảng dạy 125 tiết</td>
								<td><a role="button" data-toggle="collapse"
									href="#collapseExample1" aria-expanded="false"
									aria-controls="collapseExample"> Chi tiết </a>
									<div class="collapse" id="collapseExample1">
										<div class="well">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Necessitatibus quia provident,
											reprehenderit itaque velit optio quisquam facilis, animi
											blanditiis explicabo magnam ipsa incidunt. Laboriosam ab
											adipisci, libero quasi reprehenderit excepturi quae ipsum
											eius nam quis quia error perferendis alias, harum.</div>
									</div></td>
								<td>125 tiết</td>
								<td>Nguyễn Văn H</td>
								<td>18/9/2016-12/12/2016</td>
								<td>30</td>
							</tr>
							<tr>
								<td>BM345</td>
								<td>Hướng dẫn abc</td>
								<td><a role="button" data-toggle="collapse"
									href="#collapseExample2" aria-expanded="false"
									aria-controls="collapseExample"> Chi tiết </a>
									<div class="collapse" id="collapseExample2">
										<div class="well">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Necessitatibus quia provident,
											reprehenderit itaque velit optio quisquam facilis, animi
											blanditiis explicabo magnam ipsa incidunt. Laboriosam ab
											adipisci, libero quasi reprehenderit excepturi quae ipsum
											eius nam quis quia error perferendis alias, harum.</div>
									</div></td>
								<td>abc</td>
								<td>Lê Thị B</td>
								<td>17/9/2016-28/9/2016</td>
								<td>20</td>
							</tr>
							<tr>
								<td>BM789</td>
								<td>Chỉ đạo xyz</td>
								<td><a role="button" data-toggle="collapse"
									href="#collapseExample10" aria-expanded="false"
									aria-controls="collapseExample"> Chi tiết </a>
									<div class="collapse" id="collapseExample10">
										<div class="well">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Necessitatibus quia provident,
											reprehenderit itaque velit optio quisquam facilis, animi
											blanditiis explicabo magnam ipsa incidunt. Laboriosam ab
											adipisci, libero quasi reprehenderit excepturi quae ipsum
											eius nam quis quia error perferendis alias, harum.</div>
									</div></td>
								<td>xyz</td>
								<td>Trần Thị A</td>
								<td>27/8/2016-17/12/2016</td>
								<td>50</td>
							</tr>
							<tr>
								<td>BM345</td>
								<td>Phân công</td>
								<td><a role="button" data-toggle="collapse"
									href="#collapseExample9" aria-expanded="false"
									aria-controls="collapseExample"> Chi tiết </a>
									<div class="collapse" id="collapseExample9">
										<div class="well">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Necessitatibus quia provident,
											reprehenderit itaque velit optio quisquam facilis, animi
											blanditiis explicabo magnam ipsa incidunt. Laboriosam ab
											adipisci, libero quasi reprehenderit excepturi quae ipsum
											eius nam quis quia error perferendis alias, harum.</div>
									</div></td>
								<td>abcd</td>
								<td>Nguyễn Thị C</td>
								<td>2/2/2016-26/12/2016</td>
								<td>30</td>
							</tr>
							<tr>
								<td>BM8904</td>
								<td>Chỉ đạo xyz</td>
								<td><a role="button" data-toggle="collapse"
									href="#collapseExample8" aria-expanded="false"
									aria-controls="collapseExample"> Chi tiết </a>
									<div class="collapse" id="collapseExample8">
										<div class="well">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Necessitatibus quia provident,
											reprehenderit itaque velit optio quisquam facilis, animi
											blanditiis explicabo magnam ipsa incidunt. Laboriosam ab
											adipisci, libero quasi reprehenderit excepturi quae ipsum
											eius nam quis quia error perferendis alias, harum.</div>
									</div></td>
								<td>xyzz</td>
								<td>Vũ Văn H</td>
								<td>30/4/2016-7/12/2016</td>
								<td>40</td>
							</tr>
							<tr>
								<td>BM684</td>
								<td>Phổ biến abc</td>
								<td><a role="button" data-toggle="collapse"
									href="#collapseExample7" aria-expanded="false"
									aria-controls="collapseExample"> Chi tiết </a>
									<div class="collapse" id="collapseExample7">
										<div class="well">Lorem ipsum dolor sit amet,
											consectetur adipisicing elit. Necessitatibus quia provident,
											reprehenderit itaque velit optio quisquam facilis, animi
											blanditiis explicabo magnam ipsa incidunt. Laboriosam ab
											adipisci, libero quasi reprehenderit excepturi quae ipsum
											eius nam quis quia error perferendis alias, harum.</div>
									</div></td>
								<td>abcd</td>
								<td>Lê Văn B</td>
								<td>15/9/2016-22/9/2016</td>
								<td>20</td>
							</tr>
						</table>

					</div>
				</div>
				<div class="row" style="padding-top: 10px">
					<div class="col-md-12 col-md-offset-8">
						<div class="btn-group">
							<button type="button" class="btn btn-primary"
								onClick="javascript:open_window('Taobieumau.jsp',600,600);">Tạo
								công việc</button>
							<button type="button" class="btn btn-primary">Xóa công
								việc</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr></hr>
	<%@include file="footer.jsp"%>
</body>
</html>