<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
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


</head>
<body>

	<div class="container">
		<%@include file="header.jsp"%>
		<div class="row ">
			<div class="col-md-3">
				<div class="col-md-12 ">
					<div class="row ">
						<div class="btn-group-vertical">
							<div class="btn-group-vertical">
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TruongKhoa.jsp'">
									<div class="danhmuc" style="float: left">Thông tin cá
										nhân</div>
								</button>
								<button type="button"
									onclick="window.location.href='<%=request.getContextPath()%>/FormLoad1?url=TruongKhoa_Dangkybieumau.jsp&email=${email}&MaKhoa=${MaKhoa }'"
									class="btn btn-default" style="width: 100%">
									<div class="danhmuc" style="float: left">Đăng kí biểu mẫu</div>
								</button>
								<button type="button"
									onclick="window.location.href='<%=request.getContextPath()%>/BmGV?url=TruongKhoa_Quanlybieumaudadk.jsp&email=${email}&MaKhoa=${MaKhoa }'"
									class="btn btn-default" style="width: 100%">
									<div class="danhmuc" style="float: left">Quản lý biểu mẫu đã đăng kí</div>
								</button>
								<button type="button"
									onclick="window.location.href='<%=request.getContextPath()%>/QLbmdk?url=TruongKhoa_Bieumaugiangvien.jsp&email=${email}&MaKhoa=${MaKhoa }'"
									class="btn btn-default" style="width: 100%">
									<div class="danhmuc" style="float: left">Biểu mẫu giảng viên</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='<%=request.getContextPath()%>/CvDcPc?url=TruongKhoa_Phancongcongviec.jsp&email=${email}&MaKhoa=${MaKhoa}'">
									<div class="danhmuc" style="float: left">Phân công công việc</div>
								</button>
								<button type="button" class="btn btn-default active"
									style="width: 100%"
									onclick="window.location.href='<%=request.getContextPath()%>/BieuMauKhoa?url=TruongKhoa_Quanlybieumaukhoa.jsp&MaKhoa=${MaKhoa }'">
									<div class="danhmuc" style="float: left">Quản lý biểu mẫu khoa</div>
								</button>
							</div>
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
						<h3 class="text-center">CHỈNH SỬA BIỂU MẪU</h3>
					</div>
					<%
						ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
						int count = 0;
					%>
					<form action="UpdateBM" method="get">
						<input type="hidden" name="url" value="TruongKhoa_Quanlybieumaukhoa.jsp" />
						<input type="hidden" name="MABIEUMAU" value=<%=form.get(0)%> />
						<input type="hidden" name="MaKhoa" value=${MaKhoa } />
						<input type="hidden" name="TmpTYTRONG" value=<%=form.get(3)%> />
						<input type="hidden" name="TmpKPIMAX" value=<%=form.get(6)%> />
						<div class="form-group">
							<div align="center" style="margin: 0 auto">
								<div class="row">
									<div class="col-md-8 col-md-offset-2">
										<div style="padding-top: 20px">
											<label style="float: left">Mã biểu mẫu</label> 
											<input class="form-control" type="text" placeholder=<%=form.get(0)%> disabled></input>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8 col-md-offset-2">
										<div style="padding-top: 20px">
											<label style="float: left">Kế hoạch</label>
											<textarea name="KEHOACH" class="form-control" rows="1"
												placeholder="Kế hoạch"><%=form.get(1)%></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8 col-md-offset-2">
										<div style="padding-top: 20px">
											<label style="float: left">Chỉ đạo</label>
											<textarea name="CHIDAO" class="form-control" rows="1"
												placeholder="Chỉ đạo"><%=form.get(4)%></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8 col-md-offset-2">
										<div style="padding-top: 20px">
											<label style="float: left">Chỉ tiêu</label>
											<textarea name="CHITIEU" class="form-control" rows="1"
												placeholder="Chỉ tiêu"><%=form.get(5)%></textarea>
										</div>
									</div>
								</div>
								<div class="form-inline" style="padding-top: 20px">
									<div class="form-group">
									<label>Tỷ trọng</label>
										<input type="text" class="form-control" name="TYTRONG"
											id="exampleInputName2" placeholder=<%=form.get(3)%>>
									</div>
									<div class="form-group">
									<label >KPI max</label>
										<input type="text" class="form-control" name="KPIMAX"
											id="exampleInputEmail2" placeholder=<%=form.get(6)%>>
									</div>

								</div>
								<div style="padding-top: 20px" class="row">
									<div class="col-md-8 col-md-offset-2">
										<label style="float: left">Chi tiết kế hoạch</label>
										<textarea name="CHITIETKEHOACH" class="form-control" rows="5"
											placeholder="Chi tiết kế hoạch"><%=form.get(2)%></textarea>
									</div>
								</div>
								<hr></hr>
								<div class="form-group">
									<div class="row">
										<div class="btn-group">
											<button name="submit" class="btn btn-primary">Chỉnh
												sửa</button>
											<button type="button" class="btn btn-danger"
												onclick="window.location.href='<%=request.getContextPath()%>/BieuMauKhoa?url=TruongKhoa_Quanlybieumaukhoa.jsp&MaKhoa=${MaKhoa }'">Quay
												về</button>
										</div>
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
</html>