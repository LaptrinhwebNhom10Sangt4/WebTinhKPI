<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
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
									onclick="window.location.href='TBD_Bieumaugiangvien.jsp'">
									<div class="danhmuc" style="float: left">Biểu mẫu giảng
										viên</div>
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
					<%
						String tengv = (String) request.getAttribute("tengv");
						int colCount = (int) request.getAttribute("colCount");
						//String url = "Giangvien_TinhtrangbieumaudaDK.jsp";
						String email = new String((String) request.getAttribute("email"));
						ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
						String role = new String((String) request.getAttribute("role"));
						int count = 0;
						int rowCol = form.size() / colCount;
						Object val = new Object();
					%>
						<form action="QLbmdk2" method="get">
							<input type="hidden" name="quantity" value=<%=rowCol%> /> <input
								type="hidden" name="email" value=<%=email%> /> 
									<input type="hidden" name="url" value="TBD_duyetbieumaudadkcuagv.jsp" />
									<input type="hidden" name="role" value=<%=role%> />
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="text-center">
										Biểu mẫu đã đăng kí của GV
										<%=tengv%></h3>
								</div>
							
								<%
									//tengv = tengv.replaceAll(" ", "%20");
									tengv = URLEncoder.encode(tengv,"UTF-8");
								%>
								<input
								type="hidden" name="tengv" value=<%=tengv%> />
								<div style="overflow-x: auto;">

									<table>
										<thead>
											<tr>
												<th style="width: 50px">Mã biểu mẫu</th>
												<th>Kế hoạch</th>
												<th>Chi tiết kế hoạch</th>
												<th style="width: 50px">Tỷ trọng</th>
												<th>KPI max</th>
												<th>Đã duyệt</th>
											</tr>
										</thead>
										<tbody>
											<%
												for (int i = 1; i <= rowCol; i++) {
													val = form.get(count);
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
													aria-expanded="false" aria-controls="collapseExample">
														Chi tiết </a>
													<div class="collapse" id=<%=c%>>
														<div class="well"><%=form.get(count++)%></div>
													</div></td>
												<%
													continue;
															}
															if (j == 6) {
																String checked = new String();
																String disable = new String();
																if ((boolean) form.get(count++)) {
																	checked = "checked";
																	disable = "disabled";
																}
												%>
												<td><input type="checkbox" name=<%=i%> value=<%=val%>
													<%=disable%> <%=checked%>></input></td>
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
							<div class="row">
								<div class="col-sm-4 col-sm-offset-9">
									<div class="btn-group" role="group">
										<button type="submit" class="btn btn-primary">Duyệt
											biểu mẫu</button>
										<button type="button" class="btn btn-danger">Hủy</button>
									</div>
								</div>
							</div>
						</form>
			</div>
		</div>
	</div>
	<!-- /container -->
	<hr></hr>
	<%@include file="footer.jsp"%>
</body>
</html>