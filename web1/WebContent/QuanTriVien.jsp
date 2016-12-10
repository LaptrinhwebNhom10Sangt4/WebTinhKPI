<%@ page contentType="text/html; charset=UTF-8"%>

<!document html>
<html>
<head>
<title>Quan tri vien</title>
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
							<button type="button " class="btn btn-default active"
								style="width: 100%"
								onclick="window.location.href='QuanTriVien.jsp'">
								<div class="danhmuc " style="float: left">Quản lý người
									dùng</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='QuanTriVien_Quanlybieumau.jsp'">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu</div>
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
						<h3 class="text-center">BIỂU MẪU ĐÃ ĐĂNG KÝ</h3>
					</div>
					<div  style="overflow-x:auto;">
					<table>
							<thead>
								<tr>
									<th>MSCB</th>
									<th>Khoa</th>
									<th>Email</th>
									<th>Password</th>
									<th>Is active</th>
									<th>Chi tiết</th>
								</tr>
								</thead>
								<tbody>
									<tr>
										<td>1111</td>
										<td>CNTT</td>
										<td>1234@hcmute.edu.vn</td>
										<td>&@*&abcd*&^</td>
										<td><input type="checkbox" checked></td>
										<td><a href="QuanTriVien_Chitietnguoidung.jsp">Xem</a></td>
									</tr>
									<tr>
										<td>2222</td>
										<td>Kinh tế</td>
										<td>2345@gmail.com</td>
										<td>(&*&(adv))(*^</td>
										<td><input type="checkbox" checked></td>
										<td><a href="QuanTriVien_Chitietnguoidung.jsp">Xem</a></td>
									</tr>
									<tr>
										<td>4444</td>
										<td>CKM</td>
										<td>33fdf3@hcmute.edu.vn</td>
										<td>(*&afdsfjk((*&)</td>
										<td><input type="checkbox" checked></td>
										<td><a href="QuanTriVien_Chitietnguoidung.jsp">Xem</a></td>
									</tr>
									<tr>
										<td>5555</td>
										<td>CNTT</td>
										<td>33444@hcmute.edu.vn</td>
										<td>((*&afasdffsd(*UUP</td>
										<td><input type="checkbox"></td>
										<td><a href="QuanTriVien_Chitietnguoidung.jsp">Xem</a></td>
									</tr>
									<tr>
										<td>1111</td>
										<td>CNTT</td>
										<td>1234@hcmute.edu.vn</td>
										<td>&@*&abcd*&^</td>
										<td><input type="checkbox" checked></td>
										<td><a href="QuanTriVien_Chitietnguoidung.jsp">Xem</a></td>
									</tr>
									<tr>
										<td>2222</td>
										<td>Kinh tế</td>
										<td>2345@gmail.com</td>
										<td>(&*&(adv))(*^</td>
										<td><input type="checkbox" checked></td>
										<td><a href="QuanTriVien_Chitietnguoidung.jsp">Xem</a></td>
									</tr>
									<tr>
										<td>4444</td>
										<td>CKM</td>
										<td>33fdf3@hcmute.edu.vn</td>
										<td>(*&afdsfjk((*&)</td>
										<td><input type="checkbox" checked></td>
										<td><a href="QuanTriVien_Chitietnguoidung.jsp">Xem</a></td>
									</tr>
									<tr>
										<td>5555</td>
										<td>CNTT</td>
										<td>33444@hcmute.edu.vn</td>
										<td>((*&afasdffsd(*UUP</td>
										<td><input type="checkbox"></td>
										<td><a href="QuanTriVien_Chitietnguoidung.jsp">Xem</a></td>
									</tr>
								</tbody>
							</table>
							</div>
				</div>
				<div class="row">
						<div class="col-md-6 col-md-offset-6">
							<div class="btn-group">
								<button type="button" class="btn btn-primary"
								onClick="javascript:open_window('QuanTriVien_Themnguoidung.jsp',600,600);">Thêm
									người dùng</button>
								<button class="btn btn-danger">Xóa người dùng</button>
								<button class="btn btn-success">Chỉnh sửa</button>
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