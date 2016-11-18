<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!document html>
<html>
<head>
<title>Truong Bo Mon</title>
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
			<div class="col-md-12 drmenu">
				<nav id="menu" class="navbar navbar-default">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse" data-target="#navbar"
								aria-expanded="false" aria-controls="navbar">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#"><span
								class="glyphicon glyphicon-home"></span></a>
						</div>
						<div id="navbar" class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="TrangChu.jsp">Trang Chủ</a></li>
								<li><a href="#">Hướng Dẫn</a></li>
							</ul>
							<ul class="nav navbar-nav navbar-right">
								<form class="navbar-form navbar-left" role="search">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Gv:Nguyễn Văn A">
									</div>
									<button type="button" class="btn btn-info"
										onclick="window.location.href='TrangChu.jsp'">
										<i class="fa fa-sign-out"></i>Đăng Xuất
									</button>
								</form>
							</ul>
						</div>
						<!--/.nav-collapse -->
					</div>
					<!--/.container-fluid -->
				</nav>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<div class="col-md-12 ">
					<div class="row ">
						<form action="FormLoad" method="post">
							<div class="btn-group-vertical">
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TruongBoMon.jsp'">
									<div class="danhmuc" style="float: left">Thông tin cá
										nhân</div>
								</button>
								<button type="submit" name="getform" class="btn btn-default"
									value="TBD_Dangkybieumau.jsp" style="width: 100%">
									<div class="danhmuc" style="float: left">Đăng Kí biểu mẫu</div>
								</button>
								<button type="button" class="btn btn-default active"
									style="width: 100%"
									onclick="window.location.href='TBD_Quanlybieumaudadk.jsp'">
									<div class="danhmuc" style="float: left">Quản lý biểu mẫu
										đã đăng kí</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TBD_Bieumaugiangvien.jsp'"">
									<div class="danhmuc" style="float: left">Biểu mẫu giảng
										viên</div>
								</button>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='TBD_Phancongcongviec.jsp'"">
									<div class="danhmuc" style="float: left">Phân công công
										việc</div>
								</button>
							</div>
						</form>
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
			
					<%
						String mabieumau = (String) request.getAttribute("mabieumau");
					%>
					<input type="hidden" name="email" value=${email } />
					<input type="hidden" name="mabieumau" value=<%=mabieumau%> />
					<input type="hidden" name="url" value="TBD_Tinhtrangbieumaudadk.jsp" />
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="text-center">TÌNH TRẠNG BIỂU MẪU</h3>
						</div>
						<div style="overflow-x: auto;">
							<table>
								<thead>
									<tr>
										<th>Chỉ tiêu kế hoạch</th>
										<th>Tiến trình kế hoạch</th>
										<th>KPI max</th>
										<th>KPI tự đánh giá</th>
										<th>KPI cấp trên</th>
										<th>Trưởng khoa duyệt</th>
									</tr>
								</thead>
								<tbody>
									<%
										ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
									%>
									<tr>
										<td><%=form.get(0)%></td>
										<td><input type="text" name="tientrinh"
											placeholder=<%=form.get(1)%>></input></td>
										<td><input type="hidden" name="kpimax" value=<%=form.get(2)%> id="kpimax"/> <%=form.get(2)%></td>
										<td><input id="kpidanhgia" type="text" name="kpidanhgia"
											placeholder=<%=form.get(3)%>></input></td>
										<td><%=form.get(4)%></td>
										<%
											String trk = new String();
											if ((boolean) form.get(6))
												trk = "checked";
										%>
										<td><input type="checkbox" disabled <%=trk%>></input></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-md-4 col-md-offset-8">
								<div class="btn-group">
									<button name="submit" class="btn btn-primary">Duyệt
										biểu mẫu</button>
									<button type="button" class="btn btn-danger"
										onclick="window.location.href='<%=request.getContextPath()%>/BmGV?url=TBD_Quanlybieumaudadk.jsp&email=${email}'">Quay
										về</button>
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
	</div>


	<hr></hr>
	<%@include file="footer.jsp"%>
	<!-- /container -->


</body>
<script type="text/javascript">
	$(document).ready(function() {
		var $submit = $('button[name="submit"]');
		$submit.prop('disabled', true);
		$('input[name="kpidanhgia"]').on('input change', function() { //'input change keyup paste'
			$submit.prop('disabled', !$(this).val().length);
		});
	});
	
	$('button[name="submit"]').click(function() {
		var kpi = document.getElementById('kpidanhgia').value;
		var kpimax = document.getElementById('kpimax').value;
		if(kpi > kpimax || kpi >= 100)
		{
			alert('kpi đánh giá phải bé hơn hoặc bằng kpi max');
			document.getElementById('kpidanhgia').focus();
			$('button[name="submit"]').prop('disabled', true);
			
		}
		else
		{
			var email = $('input[name="email"]').val();
			var mabm = $('input[name="mabieumau"]').val();
			var url = $('input[name="url"]').val();
			var tientrinh = $('input[name="tientrinh"]').val()
			//String a = new String ()
			window.location.href="/web1/updateForm?email="+email+"&mabieumau="+mabm+"&url="+url+"&tientrinh="+tientrinh+"&kpi="+kpi;}

	})
	
</script>
</html>