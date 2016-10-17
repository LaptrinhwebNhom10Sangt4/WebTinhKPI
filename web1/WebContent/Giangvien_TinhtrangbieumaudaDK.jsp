<%@ page contentType="text/html; charset=UTF-8" %>

<!document html>
<html>
<head>
	<title>Giang Vien</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="css/styles.css" rel="stylesheet" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
	
	
</head>	
<body>
	${email}
	<div class="container">
<%@include file="header.jsp" %>
<div class="row">
	<div class="col-md-12 drmenu" >
		<nav id="menu" class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="TrangChu.jsp" >Trang Chủ</a></li>
						<li><a href="#">Hướng Dẫn</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Gv:Nguyễn Văn A">
							</div>
								<button type="button" class="btn btn-info" onclick="window.location.href='TrangChu.jsp'"><i class="fa fa-sign-out" ></i>Đăng Xuất</button>
							</form>
						</ul>
					</div><!--/.nav-collapse -->
				</div><!--/.container-fluid -->
			</nav>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="col-md-12 ">
				<div class="row ">	
					<div class="btn-group-vertical">
						<button type="button" class="btn btn-default" style="width:100%" onclick="window.location.href='GiangVien.jsp'">
							<div class="danhmuc" style="float:left">Thông tin cá nhân</div>
						</button>
						<button type="button" class="btn btn-default" style="width:100%" onclick="window.location.href='Giangvien_DangkyBieumau.jsp'">
							<div class="danhmuc" style="float:left">Đăng Kí biểu mẫu</div>
						</button>
						<button type="button" class="btn btn-default active" style="width:100% " onclick="window.location.href='Giangvien_Quanlybieumaudadangky.jsp'">
							<div class="danhmuc" style="float:left">Quản lý biểu mẫu đã đăng kí</div>
						</button>
					<button type="button" class="btn btn-default" style="width:100% " onclick="window.location.href='Giangvien_Congviecduocphancong.jsp'"">
							<div class="danhmuc" style="float:left">Cập nhật tiến trình được phân công</div>
						</button>		
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-9">
			<div class="container4">
				<div class="row">
				<div class="col-md-4 col-md-offset-6">
					<div class="form-group">
						<input type="text" class="form-control" name="" placeholder="Tìm kiếm"> </input>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center"> <h1>CHI TIẾT BIỂU MẪU</h1> </div>
				<div class="col-md-12">
					<table>
						<tr><th>Chỉ tiêu kế hoạch</th>
							<th>Tiến trình kế hoạch</th>
							<th>KPI max</th>
							<th>KPI tự đánh giá</th>
							<th>KPI cấp trên</th>
							<th>Trưởng bộ môn duyệt</th>
							<th>Trưởng khoa duyệt</th>
						</tr>
						<tr>
							<td>120 tiết</td>
							<td><input type="text" placeholder="30 tiết"> </td>
							<td>40</td>
							<td><input type="text" placeholder="30"> </td>
							<td>20</td>
							<td> <input type="checkbox"> </td>
							<td> <input type="checkbox"> </td>
						</tr>
					</table>

				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-md-offset-8" style="margin-top:330px">
					<button class="btn btn-primary">Duyệt biểu mẫu</button>
					<button class="btn btn-primary" onclick="window.location.href='Giangvien_Quanlybieumaudadangky.jsp'">Quay về</button>
				</div>
			</div>
			</div>
			</div>
	</div>
		</div>
	<hr></hr>
	<%@include file="footer.jsp" %>
 


</body>
</html>