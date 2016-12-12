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
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu
									đã đăng kí</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Bieumaugiangvien.jsp'"">
								<div class="danhmuc" style="float: left">Biểu mẫu giảng
									viên</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Phancongcongviec.jsp'"">
								<div class="danhmuc" style="float: left">Phân công công
									việc</div>
							</button>
							<button type="button" class="btn btn-default active"
								style="width: 100%"
								onclick="window.location.href='TruongKhoa_Quanlybieumaukhoa.jsp'">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu
									khoa</div>
							</button>
						</div>
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
						<h3 class="text-center">DANH SÁCH BIỂU MẪU</h3>
					</div>
					<%
						int colCount = (int) request.getAttribute("colCount");
						ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
						int count = 0;
						int rowCol = form.size() / colCount;
					%>
					<form action="TaoBM" id="bmkhoa" method="get">
						<input type="hidden" name="MaKhoa" value=${MaKhoa } />
						<input type="hidden" name="email" value=${email } /> 
						<input type="hidden" name="quantity" value=<%=rowCol%> />
						<input type="hidden" name="url" value="TruongKhoa_Quanlybieumaukhoa.jsp" />
						<input type="hidden" name="urlcs" value="TruongKhoa_ChinhSuaBM.jsp" />
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
										%>
										<td><a role="button" data-toggle="collapse"
											href=<%="#" + i%> aria-expanded="false"
											aria-controls="collapseExample"> Chi tiết </a>
											<div class="collapse" id=<%=i%>>
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
							<div style="float: right" class="btn-group" role="group">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#myModal">Tạo biểu
									mẫu</button>
								<button name="Sua" type="submit" class="btn btn-success">Chỉnh
									sửa</button>
								<button name="Xoa" type="submit" class="btn btn-danger">Xóa</button>
								<div style="left: 10%" class="modal fade" id="myModal"
									tabindex="-5" role="dialog" aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<%@include file="TaoBM.jsp"%>
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
	</div>
</body>
<script type="text/javascript">
	$('button[name="Sua"]').click(function() {
		$("#bmkhoa").attr("action", "SuaBM");
	})
	$('button[name="Xoa"]').click(function() {
		$("#bmkhoa").attr("action", "DelBM");
	})
</script>
</html>