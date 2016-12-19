<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Phong to chuc can bo</title>
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
							<button type="button" class="btn btn-default"
								style="width: 100%"
								onclick="window.location.href='PhongToChuc_CanBo.jsp'">
								<div class="danhmuc" style="float: left">Thông tin cá nhân</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='<%=request.getContextPath()%>/QLbmdk?url=PhongToChuc_Xembieumaucb.jsp&email=${email}'">
								<div class="danhmuc" style="float: left">Xem biểu mẫu cán bộ</div>
							</button>
							<button type="button" class="btn btn-default active" style="width: 100%"
								onclick="window.location.href='<%=request.getContextPath()%>/CvDcPc?url=PhongToChuc_Phancongcongviec.jsp&email=${email}&MaKhoa=${MaKhoa}'">
								<div class="danhmuc" style="float: left">Phân công công việc</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='<%=request.getContextPath()%>/AllForm?url=PhongToChuc_Quanlybieumau.jsp'">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu</div>
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
					<%
					
						int colCount1 = (int) request.getAttribute("colCount1");
						//int c = (int) request.getAttribute("fasize");
						ArrayList<Object> form2 = (ArrayList<Object>) request.getAttribute("form2");
						int count = 0;
						int rowCol = form2.size() / colCount1;

						String[][] form3 = (String[][]) request.getAttribute("form3");
						int rowCount = (int) request.getAttribute("rowCount1");
						String url = "PhongToChuc_Phancongcongviec.jsp";
						
					//	int columnCnt = (int) request.getAttribute("faCount");
						
					%>
					<div style="overflow-x: auto;">
						<table>
							<thead>
								<tr>
									<th style="witdh: 80px">Mã CV</th>
									<th >Tên công việc</th>
									<th>Chỉ đạo</th>
									<th>Thời hạn</th>
									<th>CV chi tiết</th>
									<th>Khoa</th>
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
										for (int j = 1; j <= 8; j++) {
												if (j == 4) {
									%>
									<td><a role="button" data-toggle="collapse"
										href="#<%="r1" + i%>" aria-expanded="false"
										aria-controls="collapseExample"> Xem </a>
										<div class="collapse" id=<%="r1" + i%>>
											<div style="width: 150px" class="well">
												<h6><%=form2.get(count++)%></h6>
												<h6><%=form2.get(count++)%></h6>
											</div>
										</div></td>

									<%
										continue;
												}
												if (j == 5)
													continue;
												if (j == 8) {
									%>
									<td><a
										onclick="window.location.href='<%=request.getContextPath()%>/Phancong?url=PhongToChuc_Chitietphancong.jsp&MaCV=<%=Macv%>&email=${email }&MaKhoa=${MaKhoa }'">Chi
											tiết</a></td>
									<%
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
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#myModal">Tạo Công việc</button>
						<div style="left: 10%" class="modal fade" id="myModal"
							tabindex="-5" role="dialog" aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<%@include file="TaoCVPC1.jsp"%>
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