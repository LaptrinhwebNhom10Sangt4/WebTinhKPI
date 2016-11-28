<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
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
									onclick="window.location.href='TBD_Phancongcongviec.jsp'">
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
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-center">BIỂU MẪU CỦA GIẢNG VIÊN</h3>
					</div>
					<div style="overflow-x: auto;">
						<table>
							<thead>
								<tr>
									<th>Mã số cán bộ</th>
									<th>Tên giáo viên</th>
									<th>Chức vụ</th>
									<th>Khoa</th>
									<th style="width: 150px">Các biểu mẫu đã đăng ký</th>
									<th style="width: 150px">Các biểu mẫu đã đánh giá</th>
								</tr>
							</thead>
							<tbody>
								<%
									int colCount = (int) request.getAttribute("colCount");
									ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
									int count = 0;
									int rowCol = form.size() / colCount;
									String url = new String("TBD_duyetbieumaudadkcuagv.jsp");
									String url1 = new String("TBD_duyetbieumaudadanhgiacuagv.jsp");
									String tengv = new String();
									String role = new String();
									for (int i = 1; i <= rowCol; i++) {
										
								%>
								<tr>
									<%
										for (int j = 1; j <= colCount; j++) {
												if (j == 3) {
													role = form.get(count).toString();
													String cv ="";
													switch((Integer)form.get(count++)){
													case(1):cv="Giảng viên";break;
													case(2):cv="Trưởng bộ môn";break;
													case(3):cv="Trưởng khoa";break;
													}%>
									<td><%=cv %></td>
									<%continue;
												}
												if(j==2)
												{
													tengv = form.get(count).toString();
												}
												if (j == 5) {
													if (role.equals("1")) {
									%>
									<td><a
										onclick="window.location.href='<%=request.getContextPath()%>/QLbmdk1?email=<%=form.get(count)%>&url=<%=url%>&tengv=<%=tengv%>&role=<%=role%>'">Chitiết</a>
									</td>
									<%
										} else {
									%>
									<td></td>
									<%
										}
									%>
									<td><a
										onclick="window.location.href='<%=request.getContextPath()%>/QLbmdg?email=<%=form.get(count++)%>&url=<%=url1%>&tengv=<%=tengv%>&role=<%=role%>'">Chitiết</a>
									</td>
									<%
										continue;
												}
									%>
									<td><%=form.get(count++)%></td>
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

			</div>
		</div>
	</div>
	<!-- /container -->
	<hr></hr>
	<%@include file="footer.jsp"%>
</body>
</html>