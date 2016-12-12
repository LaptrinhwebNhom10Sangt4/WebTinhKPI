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
		<div class="row">
			<div class="col-md-3">
				<div class="col-md-12 ">
					<div class="row ">
						<div class="row ">
							<div class="btn-group-vertical">
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TruongKhoa.jsp'">
									<div class="danhmuc" style="float: left">Thông tin cá
										nhân</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TruongKhoa_Dangkybieumau.jsp'">
									<div class="danhmuc" style="float: left">Đăng Kí biểu mẫu</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TruongKhoa_Quanlybieumaudadk.jsp'">
									<div class="danhmuc" style="float: left">Quản lý biểu mẫu
										đã đăng kí</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TruongKhoa_Bieumaugiangvien.jsp'"">
									<div class="danhmuc" style="float: left">Biểu mẫu giảng
										viên</div>
								</button>
								<button type="button" class="btn btn-default active"
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
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-4 col-md-offset-8">
						<div class="form-group">
							<input type="text" class="form-control" name=""
								placeholder="Tìm kiếm"> </input>
						</div>
					</div>
				</div>
				<%
					int colCount = (int) request.getAttribute("colCount");
					ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
					int count = 0;
					int rowCol = form.size() / colCount;
					String[][] form1 = (String[][]) request.getAttribute("form1");
					int rowCount = (int) request.getAttribute("rowCount");
					String url = "TruongKhoa_Chitietphancong.jsp";
				%>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-center">CÔNG VIỆC ĐƯỢC PHÂN CÔNG</h3>
					</div>
					<div style="overflow-x: auto;">
						<table>
							<thead>
								<tr>
									<th>email</th>
									<th>Tên CB</th>
									<th>Công việc đã thực hiện</th>
									<th style="width: 200px">Tiến trình</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (int i = 1; i <= rowCol; i++) {
										String email = form.get(count).toString();
								%>
								<tr>
									<%
										for (int j = 1; j <= 4; j++) {
												if (j == 3) {
									%>
									<td><a role="button" data-toggle="collapse" href="#<%=i%>"
										aria-expanded="false" aria-controls="collapseExample"> Xem
									</a>
										<div class="collapse" id=<%=i%>>
											<div class="well">
												<table>
													<%
														for (int row = 0; row < rowCount; row++) {
																		if (form1[row][0].equals(email) == false)
																			continue;
													%>
													<tr>
														<%
															for (int col = 0; col < 3; col++) {
																				if (col == 0 )
																					continue;
																				if (col == 2) {
																					String checked = "";
																					if (form1[row][col].equals("true")) {
																						checked = "checked";
																					}
														%>
														<td><input  type="checkbox"
															<%=checked%> disabled /></td>
														<%
															continue;
																				}
														%>
														<td><%=form1[row][col]%></td>
														<%
															}
														%>
													</tr>
													<%
														}
													%>
												</table>
											</div>
										</div></td>
									<%
										continue;}
												if (j == 4) {
													String progress1 = form.get(count).toString();
													int progress = Integer.parseInt(progress1);
													count++;
													String color = "";
													if (progress <= 33)
														color = "progress-bar-info";
													if (progress > 33 && progress < 50)
														color = "progress-bar-success";
													if (progress >= 50 && progress < 80)
														color = "progress-bar-warning";
													if (progress >= 80)
														color = "progress-bar-danger";
									%>
									<td>
										<div class="progress">
											<div class="progress-bar <%=color%>" role="progressbar"
												aria-valuenow=<%=progress1%> aria-valuemin="0"
												aria-valuemax="100"
												style="color:black;width: <%=progress + "%"%>;">
												<%=progress + "%"%>
											</div>
										</div>
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
								<tr>
									<td></td>


								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4 col-sm-offset-10">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#myModal">Phân công</button>

								<!-- Modal -->
								<div  class="modal fade" id="myModal"
									tabindex="-5" role="dialog" aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<%@include file="PhanCongGV.jsp"%>
									</div>
								</div>
							</div>
				</div>
			</div>
		</div>
	
	<hr></hr>

	<%@include file="footer.jsp"%>
	</div>
</body>
</html>