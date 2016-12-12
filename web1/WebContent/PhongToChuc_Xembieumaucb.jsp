<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
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
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='PhongToChuc_CanBo.jsp'">
								<div class="danhmuc" style="float: left">Thông tin cá nhân</div>
							</button>
							<button type="button" class="btn btn-default active"
								style="width: 100%"
								onclick="window.location.href='PhongToChuc_Xembieumaucb.jsp'">
								<div class="danhmuc" style="float: left">Xem biểu mẫu cán
									bộ</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='PhongToChuc_Phancongcongviec.jsp'">
								<div class="danhmuc" style="float: left">Phân công công
									việc</div>
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
						<h3 class="text-center">BIỂU MẪU CỦA CÁN BỘ</h3>
					</div>
					<div style="overflow-x: auto;">
						<table>
							<thead>
								<tr>
									<th style="width: 80px">Mã số cán bộ</th>
									<th>Tên giáo viên</th>
									<th>Chức vụ</th>
									<th>Khoa</th>
									<th style="width: 110px">Các biểu mẫu đã đăng ký</th>
									<th style="width: 110px">Các biểu mẫu đã đánh giá</th>
								</tr>
							</thead>
							<tbody>
								<%
									int colCount = (int) request.getAttribute("colCount");
									ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
									int count = 0;
									int rowCol = form.size() / colCount;
									String url = new String("PhongToChuc_Bieumaudadk.jsp");
									String url1 = new String("PhongToChuc_Bieumaudadanhgia.jsp");
									String tengv = new String();
									String role = new String();
									for (int i = 1; i <= rowCol; i++) {
										
								%>
								<tr>
									<%
										for (int j = 1; j <= colCount; j++) {
											if (j == 3) {
												role = form.get(count).toString();
												String cv ="";
												switch((Integer)form.get(count++)){
												case(1):cv="Giảng viên";break;
												case(2):cv="Trưởng bộ môn";break;
												case(3):cv="Trưởng khoa";break;
												}%>
								<td><%=cv %></td>
								<%continue;
											}
												if(j==2)
												{
													tengv = form.get(count).toString();
												}
												if (j == 5) {
													
									%>
									<td><a
										onclick="window.location.href='<%=request.getContextPath()%>/QLbmdk1?email=<%=form.get(count)%>&url=<%=url%>&tengv=<%=tengv%>&role=<%=role%>'">Chitiết</a>
									</td>
									<td><a
										onclick="window.location.href='<%=request.getContextPath()%>/QLbmdg?email=<%=form.get(count++)%>&url=<%=url1%>&tengv=<%=tengv%>&role=<%=role%>'">Chitiết</a>
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
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<hr></hr>
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>