<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
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


</head>
<body>
	<div class="container">
		<%@include file="header.jsp"%>
		<div class="row ">
			<div class="col-md-3">
				<div class="col-md-12 ">
					<div class="row ">
						<form action="FormLoad" method="post">
							<div class="btn-group-vertical">
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TruongKhoa.jsp'">
									<div class="danhmuc" style="float: left">Thông tin cá
										nhân</div>
								</button>
								<button type="button"
									onclick="window.location.href='<%=request.getContextPath()%>/FormLoad1?url=TruongKhoa_Dangkybieumau.jsp&email=${email}'"
									class="btn btn-default active" style="width: 100%">
									<div class="danhmuc" style="float: left">Đăng kí biểu mẫu</div>
								</button>
								<button type="button"
									onclick="window.location.href='<%=request.getContextPath()%>/BmGV?url=TruongKhoa_Quanlybieumaudadk.jsp&email=${email}'"
									class="btn btn-default" style="width: 100%">
									<div class="danhmuc" style="float: left">Quản lý biểu mẫu
										đã đăng kí</div>
								</button>
								<button type="button"
									onclick="window.location.href='<%=request.getContextPath()%>/QLbmdk?url=TruongKhoa_Bieumaugiangvien.jsp&email=${email}'"
									class="btn btn-default" style="width: 100%">
									<div class="danhmuc" style="float: left">Biểu mẫu giảng
										viên</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TruongKhoa_Phancongcongviec.jsp'"">
									<div class="danhmuc" style="float: left">Phân công công
										việc</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TruongKhoa_Quanlybieumaukhoa.jsp'"">
									<div class="danhmuc" style="float: left">Quản lý biểu mẫu
										khoa</div>
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
								placeholder="Tìm kiếm"> </input>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-center">DANH SÁCH BIỂU MẪU</h3>
					</div>
					<%
						int colCount = (int) request.getAttribute("colCount");
						ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
						int count = 0;
						int rowCol = form.size() / colCount;
					%>
					<form action="DKbm" method="get">
						<input type="hidden" name="MaKhoa" value=${MaKhoa } />
						<input type="hidden" name="email" value=${email } /> <input
							type="hidden" name="url" value="TruongKhoa_Dangkybieumau.jsp" />
						<input type="hidden" name="quantity" value=<%=rowCol%> />
						<div style="overflow-x: auto;">
							<table class="table">
								<thead>
									<tr>
										<th style="width: 50px">Mã biểu mẫu</th>
										<th>Kế hoạch</th>
										<th>Chi tiết kế hoạch</th>
										<th>Tỷ trọng</th>
										<th>Chỉ đạo</th>
										<th>Chỉ tiêu</th>
										<th>KPI max</th>
										<th>Chọn</th>
									</tr>
								</thead>
								<tbody>
									<%
										for (int i = 1; i <= rowCol; i++) {
											Object mabm = new Object();
											mabm = form.get(count);
									%>
									<tr>
										<%
											for (int j = 1; j <= colCount; j++) {
													if (j == colCount) {
														count++;
														continue;
													}
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
										%>
										<td><%=form.get(count++)%></td>

										<%
											}
										%>
										<td><input type="checkbox" name=<%=i%> value=<%=mabm%> /></td>
									</tr>
									<%
										}
									%>

								</tbody>
							</table>
							<button style="float: right;" class="btn btn-primary"
								data-toggle="modal" type="submit">Đăng ký</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<hr></hr>
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>