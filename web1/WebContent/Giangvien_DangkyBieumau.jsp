<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Giang Vien</title>
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
						<form action="FormLoad" method="post">
						<div class="btn-group-vertical">
							<button type="button" class="btn btn-default"
								style="width: 100%"
								onclick="window.location.href='GiangVien.jsp'">
								<div class="danhmuc" style="float: left">Thông tin cá nhân</div>
							</button>
							<button type="button"
								onclick="window.location.href='<%=request.getContextPath()%>/FormLoad1?url=Giangvien_DangkyBieumau.jsp&email=${email}&MaKhoa=${MaKhoa} '"
								class="btn btn-default active" style="width: 100%">
								<div class="danhmuc" style="float: left">Đăng kí biểu mẫu</div>
							</button>
							<button type="button"
								onclick="window.location.href='<%=request.getContextPath()%>/BmGV?url=Giangvien_Quanlybieumaudadangky.jsp&email=${email}&MaKhoa=${MaKhoa}'"
								class="btn btn-default" style="width: 100%">
								<div class="danhmuc" style="float: left">Quản lý biểu mẫu
									đã đăng kí</div>
							</button>
							<button type="button" class="btn btn-default" style="width: 100%"
								onclick="window.location.href='<%=request.getContextPath()%>/CvDcPc?url=Giangvien_Congviecduocphancong.jsp&email=${email}&MaKhoa=${MaKhoa}'">
								<div class="danhmuc" style="float: left">Cập nhật tiến
									trình được phân công</div>
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
								placeholder="Tìm kiếm">
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-center">DANH SÁCH BIỂU MẪU</h3>
					</div>
					<%int colCount = (int) request.getAttribute("colCount");
					ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
					int count = 0;
					int rowCol = form.size() / colCount; %>
					<form action="DKbm" method="get">
						<input type="hidden" name="email" value=${email} />
						<input type="hidden" name="MaKhoa" value=${MaKhoa} />
						<input type="hidden" name="url" value="Giangvien_DangkyBieumau.jsp" />
						<input type="hidden" name="quantity" value=<%=rowCol %> />
						<div style="overflow-x: auto;">
							<table class="table">
								<thead>
									<tr>
										<th>Mã biểu mẫu</th>
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
									<%for (int i = 1; i <= rowCol; i++) {
											Object mabm = new Object();
											mabm = form.get(count);
									%>
									<tr>
										<%
											for (int j = 1; j <= colCount; j++) {
													if(j==colCount){
														count++;
														continue;
													}
													if (j == 3)
													{
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
								<button style="float: right" type="submit" class="btn btn-primary" >Đăng ký</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	<hr></hr>
	<%@include file="footer.jsp"%>
	<!-- /container -->
	</div>
</body>
<script>
	$(document).ready(function(){
		  var ngayBD = new Date('<%=bddk%>');
		  var ngayKT = new Date('<%=ktdk%>');
		  var today = new Date();
		  if(today < ngayBD || today> ngayKT){
			  alert("Không trong thời gian đăng ký");
			  $('button[type="submit"]').prop('disabled', true);
		  }
	});
</script>
</html>