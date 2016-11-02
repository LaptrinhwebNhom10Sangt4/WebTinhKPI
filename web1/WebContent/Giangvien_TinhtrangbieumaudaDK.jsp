<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!document html>
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
								<button type="submit" name="getform" class="btn btn-default"
									style="width: 100%" value="Giangvien_DangkyBieumau.jsp">
									<div class="danhmuc" style="float: left">Đăng Kí biểu mẫu</div>
								</button>
								<button type="button" class="btn btn-default active"
									style="width: 100%"
									onclick="window.location.href='Giangvien_Quanlybieumaudadangky.jsp'">
									<div class="danhmuc" style="float: left">Quản lý biểu mẫu
										đã đăng kí</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='Giangvien_Congviecduocphancong.jsp'"">
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
					<div class="col-md-4 col-md-offset-8">
						<div class="form-group">
							<input type="text" class="form-control" name=""
								placeholder="Tìm kiếm">
						</div>
					</div>
				</div>
				<form action="updateForm" method="get">
					<%
						String mabieumau = (String) request.getAttribute("mabieumau");
					%>
					<input type="hidden" name="email" value=${email }/> <input
						type="hidden" name="mabieumau" value=<%=mabieumau%> />
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="text-center">TÌNH TRẠNG BIỂU MẪU</h3>
						</div>

						<div style="overflow-x: auto;">
							<table>
								<thead>
									<tr>
										<th>Chỉ tiêu kế hoạch</th>
										<th>Tiến trình kế hoạch</th>
										<th>KPI max</th>
										<th>KPI tự đánh giá</th>
										<th>KPI cấp trên</th>
										<th>Trưởng bộ môn duyệt</th>
										<th>Trưởng khoa duyệt</th>
									</tr>
								</thead>
								<tbody>
									<%
										ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
									%>
									<tr>
										<td><%=form.get(0)%></td>
										<td><input type="text" name="tientrinh"
											placeholder=<%=form.get(1)%>></input></td>
										<td><%=form.get(2)%></td>
										<td><input type="text" name="kpidanhgia"
											placeholder=<%=form.get(3)%>></input></td>
										<td><%=form.get(4)%></td>
										<%
											String tbm = new String();
											if ((boolean) form.get(5))
												tbm = "checked";
										%>
										<td><input type="checkbox" disabled <%=tbm%>></input></td>
										<%
											String trk = new String();
											if ((boolean) form.get(6))
												trk = "checked";
										%>
										<td><input type="checkbox" disabled <%=trk%>></input></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-md-4 col-md-offset-8">
								<div class="btn-group">
									<button type="submit" class="btn btn-primary">Duyệt
										biểu mẫu</button>
									<button type="button" class="btn btn-danger"
										onclick="window.location.href='<%=request.getContextPath()%>/BmGV?url=Giangvien_Quanlybieumaudadangky.jsp&email=${email}'">Quay
										về</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>


	</div>

	<hr></hr>
	<%@include file="footer.jsp"%>



</body>
</html>