<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
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
								<button type="submit" class="btn btn-default" name="getform"
									style="width: 100%" value="GiangVien.jsp">
									<div class="danhmuc" style="float: left">Thông tin cá
										nhân</div>
								</button>
								<button type="submit" name="getform"
									class="btn btn-default active" style="width: 100%"
									value="Giangvien_DangkyBieumau.jsp">
									<div class="danhmuc" style="float: left">Đăng Kí biểu mẫu</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='Giangvien_Quanlybieumaudadangky.jsp'">
									<div class="danhmuc" style="float: left">Quản lý biểu mẫu
										đã đăng kí</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='Giangvien_Congviecduocphancong.jsp'">
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
						<h3 class="text-center">DANH SÁCH BIỂU MẪU</h3>
					</div>
					<div style="overflow-x:auto;">
					<table class="table">
						<thead>
							<tr>
								<th>Mã biểu mẫu</th>
								<th>Kế hoạch</th>
								<th>Chi tiết kế hoạch</th>
								<th>Tỷ trọng</th>
								<th>Chỉ đạo</th>
								<th>Chỉ tiêu</th>
								<th>KPI max</th>
							</tr>
						</thead>
						<tbody>
							<%
								int colCount = (int) request.getAttribute("colCount");
								ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
								int count = 0;
								int rowCol = form.size() / colCount;
								for (int i = 1; i <= rowCol; i++) {
							%>
							<tr>
								<%
									for (int j = 1; j <= colCount; j++) {
											if (j == 3) {
												String c, d = new String();
												c = Integer.toString(count);
												d = "#";
												d = d.concat(c);
								%>
								<td><a role="button" data-toggle="collapse" href=<%=d%>
									aria-expanded="false" aria-controls="collapseExample"> Chi
										tiết </a>
									<div class="collapse" id=<%=c%>>
										<div class="well"><%=form.get(count++)%></div>
									</div></td>
								<%
									} else {
								%>
								<td><%=form.get(count++)%></td>
								<%
									}
								%>
								<%
									}
								%>
							</tr>
							<%
								}
							%>

						</tbody>
					</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-md-offset-10">
						<button class="btn btn-primary" data-toggle="modal"
							data-target="#myModal">Đăng ký</button>
						<!-- Modal -->
						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h3>Thông báo</h3>
									</div>
									<div class="modal-body">
										<h4 class="text-center">
											Đã đăng ký thành công <span class="glyphicon glyphicon-check"></span>
										</h4>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr></hr>
	<%@include file="footer.jsp"%>
	<!-- /container -->
</body>
</html>