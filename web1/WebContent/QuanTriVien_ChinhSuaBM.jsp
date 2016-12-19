<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
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
</head>
<body>
	<div class="container">
		<%@include file="header.jsp"%>
		<div class="row ">
			<div class="col-md-3">
				<div class="col-md-12 ">
					<div class="row ">
						<div class="btn-group-vertical">
							<button type="button " class="btn btn-default"
								style="width: 100%"
								onclick="window.location.href='<%=request.getContextPath()%>/DSGV'">
								<div class="danhmuc " style="float: left">Quản lý người
									dùng</div>
							</button>
							<button type="button" class="btn btn-default active" style="width: 100%"
								onclick="window.location.href='<%=request.getContextPath()%>/AllForm?url=QuanTriVien_Quanlybieumau.jsp'">
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
						<h3 class="text-center">CHỈNH SỬA BIỂU MẪU</h3>
					</div>
					<%
						ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
						int count = 0;
						
						ArrayList<Object> form1 = (ArrayList<Object>) request.getAttribute("khoa");
						int columnCount = (int) request.getAttribute("fasize");
						int count1 = 0;
						int rowCnt = form1.size() / columnCount;
					%>
					<form action="UpdateBM" method="get">
						<input type="hidden" name="MABIEUMAU" value=<%=form.get(0)%> />
						<input type="hidden" name="TmpTYTRONG" value=<%=form.get(3)%> />
						<input type="hidden" name="TmpKPIMAX" value=<%=form.get(6)%> />
						<input type="hidden" name="url" value="QuanTriVien_Quanlybieumau.jsp" />
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
									<div class="col-md-3 col-md-offset-2">
										<div class="form-group">
										<label style="float: left">Tỷ trọng</label>
										<select name="MK" class="form-control">
											<%
											int MaKhoa = (int)form.get(7);
											String TenKhoa ="";
											int count2 = 0;
											for(int i=1;i<=rowCnt;i++){
												if(MaKhoa == (int)form1.get(count2)){
														TenKhoa = form1.get(count2+1).toString();
														count=0;
														break;
													}
													count2+=2;
											}%>
											<option value=<%=MaKhoa %>><%=TenKhoa %></option>
											<%for(int i=1;i<=rowCnt;i++){
												if(MaKhoa !=(int)form1.get(count)){
													TenKhoa = form1.get(count+1).toString();%>
											<option value=<%=(int)form1.get(count) %>><%=TenKhoa %></option>
												<%}
												count+=2;
											} %>
										</select>
									</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8 col-md-offset-2">
											<label style="float: left">Kế hoạch</label>
											<textarea name="KEHOACH" class="form-control" rows="1"
												placeholder="Kế hoạch"><%=form.get(1)%></textarea>
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
												onclick="window.location.href='<%=request.getContextPath()%>/AllForm'">Quay
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