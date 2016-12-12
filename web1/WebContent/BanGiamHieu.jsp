<%@ page contentType="text/html; charset=UTF-8"%>

<!document html>
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
							<button type="button"
								onclick="window.location.href='<%=request.getContextPath()%>/QLbmdk?url=BanGiamHieu_Bieumautruongkhoa.jsp&email=${email}'"
								class="btn btn-default" style="width: 100%">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu
									cán bộ</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='<%=request.getContextPath()%>/CvDcPc?url=BanGiamHieu_Phancongcongviec.jsp&email=${email}&MaKhoa=${MaKhoa}'">
								<div class="danhmuc" style="float: left">Phân công công
									việc</div>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9 ">
				<div class="panel panel-default">
					<div class="row">
						<div class="col-md-4 ">
							<div class="row ">
								<div class="col-md-12">
									<img class="img-responsive img-thumbnail" src="img/avatar.jpg"
										style="width: 100%; height: 250px;" />
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 ">
									<div class="panel panel-primary">
										<div class="panel-heading">Thông tin cơ bản:</div>
										<table>
											<tr>
												<td>Họ và tên: ${info.get(1)}</td>
											</tr>
											<tr>
												<td>Giới tính: ${info.get(2)}</td>
											</tr>
											<tr>
												<td>MSCB: ${info.get(3)}</td>
											</tr>
											<tr>
												<td>Địa chỉ: ${info.get(4)}</td>
											</tr>
										</table>
									</div>

								</div>
							</div>
						</div>
						<div class="col-md-8">
							<div class="panel panel-primary" style="height: 500px">
								<div class="panel-heading">Thông tin chi tiết</div>
							</div>
							<div class="row dieuchinh">
								<div class="col-md-12 cs" style="float: right">
									<button type="button" class="btn btn-info">Chỉnh sửa</button>
									<a href="TrangChu.jsp" target="_blank"><input type="button"
										value="Thoát" class="btn btn-info"></a>
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