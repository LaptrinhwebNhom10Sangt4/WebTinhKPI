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
							<div class="btn-group-vertical">
							<button type="button " class="btn btn-default active"
								style="width: 100%"
								onclick="window.location.href='<%=request.getContextPath()%>/DSGV'">
								<div class="danhmuc " style="float: left">Quản lý người
									dùng</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='<%=request.getContextPath()%>/AllForm?url=QuanTriVien_Quanlybieumau.jsp'">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu</div>
							</button>
						</div>
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
				<%
						ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
						ArrayList<Object> form1 = (ArrayList<Object>) request.getAttribute("formInfo");
						ArrayList<Object> form2 = (ArrayList<Object>) request.getAttribute("khoa");
						int rowCount = (int)request.getAttribute("fasize");
						int colCount = form2.size()/rowCount;
				%>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-center">CHỈNH SỬA THÔNG TIN</h3>
					</div>
					<form  action="CSUser" method="get">
					<input type="hidden" name="email" value=<%=form.get(0) %> />
						<div class="form-group">
							<div align="center" style="margin: 0 auto">
								<div class="row">
									<div class="col-md-8 col-md-offset-2">
										<div style="padding-top: 20px">
											<label style="float: left">Email</label>
											<textarea name="email" class="form-control" rows="1"
												placeholder="email" disabled><%=form.get(0) %></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8 col-md-offset-2">
										<div style="padding-top: 20px">
											<label style="float: left">Password</label>
											<textarea name="pass" class="form-control" rows="1"
												placeholder="Password"><%=form1.get(2) %></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8 col-md-offset-2">
										<div style="padding-top: 20px">
											<label style="float: left">Họ Tên</label>
											<textarea name="name" class="form-control" rows="1"
												placeholder="Họ tên"><%=form.get(1) %></textarea>
										</div>
									</div>
								</div>
								<div class="form-inline" style="padding-top: 20px">
									<div class="form-group">
										<select name="role" class="form-control">
										  <%String cv="";
											int c = Integer.parseInt(form1.get(2).toString());
											switch(c)
											{
											case(1):cv="Giảng viên";break;
											case(2):cv="Trưởng bộ môn";break;
											case(3):cv="Trưởng khoa";break;
											case(4):cv="Ban giám hiệu";break;
											case(5):cv="Phòng tổ chức";break;
											}%>
											<option value=<%=c %>><%=cv %></option>
											<%for(int i=1;i<=4;i++){
												if(i==c) continue;
												switch(i)
												{
												case(1):cv="Giảng viên";break;
												case(2):cv="Trưởng Bộ Môn";break;
												case(3):cv="Trưởng Khoa";break;
												case(4):cv="Ban giám hiệu";break;
												case(5):cv="Phòng tổ chức";break;
												}%>
												<option value=<%=i %>><%=cv %></option>
											<%}%>
										</select>
									</div>
									<div class="form-group">
										<select name="gender" class="form-control">
											<% if(form.get(2).equals("Nam")){%>
												<option value="Nam">Nam</option>
												<option value="Nữ">Nữ</option>
											<% }else{%>
												<option value="Nữ">Nữ</option>
												<option value="Nam">Nam</option>
											<% } %>
											
										</select>
									</div>
									<div class="form-group">
										<select name="faculty" class="form-control">
											<%
											int MaKhoa = (int)form1.get(3);
											String TenKhoa ="";
											int count = 0;
											for(int i=1;i<=rowCount;i++){
												if(MaKhoa == (int)form2.get(count)){
														TenKhoa = form2.get(count+1).toString();
														count=0;
														break;
													}
													count+=2;
											}%>
											<option value=<%=MaKhoa %>><%=TenKhoa %></option>
											<%for(int i=1;i<=rowCount;i++){
												if(MaKhoa !=(int)form2.get(count)){
													TenKhoa = form2.get(count+1).toString();%>
											<option value=<%=(int)form2.get(count) %>><%=TenKhoa %></option>
												<%}
												count+=2;
											} %>
										</select>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8 col-md-offset-2">
										<div style="padding-top: 20px">
											<label style="float: left">Mã số cán bộ</label>
											<textarea name="mscb" class="form-control" rows="1"
												placeholder="Mã số cán bộ"><%=form.get(3) %></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8 col-md-offset-2">
										<div style="padding-top: 20px">
											<label style="float: left">Địa chỉ</label>
											<textarea name="address" class="form-control" rows="1"
												placeholder="Địa chỉ"><%=form.get(4) %></textarea>
										</div>
									</div>
								</div>
								<hr></hr>
								<div class="form-group">
									<div class="row">
										<div class="btn-group">
											<button name="submit" class="btn btn-primary">Chỉnh sửa</button>
											<button type="button" class="btn btn-danger"
												onclick="window.location.href='<%=request.getContextPath()%>/DSGV'">Quay về</button>
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