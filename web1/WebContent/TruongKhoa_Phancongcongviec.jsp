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

<link href="js/scripts.js" rel="stylesheet" />
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
							<button type="button" class="btn btn-default active"
								style="width: 100%"
								onclick="window.location.href='TruongKhoa_Phancongcongviec.jsp'"">
								<div class="danhmuc" style="float: left">Phân công công
									việc</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='TruongKhoa_Quanlybieumaukhoa.jsp'"">
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
				<ul class="nav nav-tabs">
					<li ><a data-toggle="tab" href="#home">Công việc được phân công</a></li>
					<li class="active"><a data-toggle="tab" href="#menu1">Danh sách công việc</a></li>
				</ul>
				<div class="tab-content">
					<div id="home" class="tab-pane fade ">
						<div class="panel panel-default">
							<div style="overflow-x: auto;">
								<form action="updateCV" method="get">
									<%
										int colCount = (int) request.getAttribute("colCount");
										ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
										int count = 0;
										int rowCol = form.size() / colCount;
										String[][] form1 = (String[][]) request.getAttribute("form1");
										int rowCount = (int) request.getAttribute("rowCount");
										int count1 = 1;
									%>
									<input name="quantity" type="hidden" value=<%=rowCount%> />
									 <input name="MaKhoa" type="hidden" value=${MaKhoa } /> 
									 <input name="email" type="hidden" value=${email } /> 
									 <input name="url" type="hidden" value="TruongKhoa_Phancongcongviec.jsp" />
									<table>
										<thead>
											<tr>
												<th style="witdh: 80px">Mã CV</th>
												<th>Tên công việc</th>
												<th>Chỉ đạo</th>
												<th>Thời hạn</th>
												<th style="witdh: 80px">CV chi tiết</th>
												<th>Tiến trình</th>
											</tr>
										</thead>
										<tbody>
											<%
												for (int i = 1; i <= rowCol; i++) {
													String Macv = form.get(count).toString();
											%>
											<tr>
												<%
													for (int j = 1; j <= 7; j++) {
															if( j == 4 ){%>
												<td><a role="button" data-toggle="collapse"
													href="#<%="r"+i%>" aria-expanded="false"
													aria-controls="collapseExample"> Xem </a>
													<div class="collapse" id=<%="r"+i%>>
														<div style="width: 150px" class="well">
															<h6><%=form.get(count++)%></h6>
															<h6><%=form.get(count++)%></h6>
														</div>
													</div></td>

												<%continue;
															}
															if( j == 5 ) continue;
															if (j == 6 ) {
												%>
												<td><a role="button" data-toggle="collapse"
													href="#<%=i%>" aria-expanded="false"
													aria-controls="collapseExample"> Xem </a>
													<div class="collapse" id=<%=i%>>
														<div style="witdh: 200px" class="well">
															<table>
																<%
																	for (int row = 0; row < rowCount; row++) {
																					if (form1[row][0].equals(Macv) == false)
																						continue;
																%>
																<tr>
																	<%
																		for (int col = 0; col < 4; col++) {
																							if (col == 0 || col == 1)
																								continue;
																							if (col == 3) {
																								String checked = "";
																								String disable = "";
																								if (form1[row][col].equals("true")) {
																									checked = "checked";
																									disable = "disabled";
																								}
																	%>
																	<td><input name=<%=count1%>
																		value=<%=form1[row][1]%> type="checkbox" <%=checked%>
																		<%=disable%> /></td>
																	<%
																		count1++;
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
													continue;
															}
															if (j == 7) {
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
															}%>

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
									<button type="submit" style="float: right;"
										class="btn btn-primary">Cập nhật</button>
								</form>
							</div>
						</div>
					</div>
					<div id="menu1" class="tab-pane fade in active">
						<div class="panel panel-default">
							<%
								int colCount1 = (int) request.getAttribute("colCount1");
								ArrayList<Object> form2 = (ArrayList<Object>) request.getAttribute("form2");
								count = 0;
								rowCol = form2.size() / colCount1;
								
								String[][] form3 = (String[][]) request.getAttribute("form3");
								rowCount = (int) request.getAttribute("rowCount1");
								String url = "TruongKhoa_Phancongcongviec.jsp";
							%>
							<div style="overflow-x: auto;">
								<table>
									<thead>
										<tr>
											<th style="witdh: 80px">Mã CV</th>
											<th>Tên công việc</th>
											<th>Chỉ đạo</th>
											<th>Thời hạn</th>
											<th>CV chi tiết</th>
											<th>Phân công</th>
										</tr>
									</thead>
									<tbody>
										<%
											for (int i = 1; i <= rowCol; i++) {
												String Macv = form2.get(count).toString();
										%>
										<tr>
											<%
												for (int j = 1; j <= 7; j++) {
													if( j == 4 ){%>
											<td><a role="button" data-toggle="collapse"
												href="#<%="r1"+i%>" aria-expanded="false"
												aria-controls="collapseExample"> Xem </a>
												<div class="collapse" id=<%="r1"+i%>>
													<div style="width: 150px" class="well">
														<h6><%=form2.get(count++)%></h6>
														<h6><%=form2.get(count++)%></h6>
													</div>
												</div></td>

											<%continue;
												}
												if( j == 5 ) continue;
														if (j == 7) {
											%>
											<td><a
												onclick="window.location.href='<%=request.getContextPath()%>/Phancong?url=TruongKhoa_Chitietphancong.jsp&MaCV=<%=Macv%>&email=${email }&MaKhoa=${MaKhoa }'">Chi
													tiết</a></td>
											<%
												count++;
												continue;
														}
														if (j == 6) {
											%>
											<td><a role="button" data-toggle="collapse"
												href="#<%=i + "2"%>" aria-expanded="false"
												aria-controls="collapseExample"> Xem </a>
												<div class="collapse" id=<%=i + "2"%>>
													<div class="well">
														<table>
															<%
																for (int row = 0; row < rowCount; row++) {
																				if (form3[row][0].equals(Macv) == false)
																					continue;
															%>
															<tr>
																<%
																	for (int col = 0; col < 3; col++) {
																						if (col == 0 || col == 1)
																							continue;
																%>
																<td><%=form3[row][col]%></td>
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
												continue;
														}
											%>
											<td><%=form2.get(count++)%></td>
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
							<div class="col-sm-4 col-sm-offset-10">
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#myModal">Tạo Công
									việc</button>

								<!-- Modal -->
								<div style="left: 10%" class="modal fade" id="myModal"
									tabindex="-5" role="dialog" aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<%@include file="TaoCVPC.jsp"%>
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
		</div>
</body>
</html>