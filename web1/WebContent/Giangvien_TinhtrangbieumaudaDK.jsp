<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!document html>
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
									<div class="danhmuc" style="float: left">Thông tin cá
										nhân</div>
								</button>
								<button type="button"
									onclick="window.location.href='<%=request.getContextPath()%>/FormLoad1?url=Giangvien_DangkyBieumau.jsp'"
									class="btn btn-default" style="width: 100%">
									<div class="danhmuc" style="float: left">Đăng kí biểu mẫu</div>
								</button>
								<button type="button"
									onclick="window.location.href='<%=request.getContextPath()%>/BmGV?url=Giangvien_Quanlybieumaudadangky.jsp&email=${email}'"
									class="btn btn-default active" style="width: 100%">
									<div class="danhmuc" style="float: left">Quản lý biểu mẫu
										đã đăng kí</div>
								</button>
								<button type="button" class="btn btn-default"
									style="width: 100%"
									onclick="window.location.href='Giangvien_Congviecduocphancong.jsp'"">
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
				<input type="hidden" name="email" value=${email } /> <input
					type="hidden" name="mabieumau" value=<%=mabieumau%> /> <input
					type="hidden" name="url" value="Giangvien_TinhtrangbieumaudaDK.jsp" />
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="text-center">TÌNH TRẠNG BIỂU MẪU</h3>
					</div>
					<%
							ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("form");
						%>
					<div class="row ">
						<div class="form-group col-md-offset-2 col-md-8 ">
							<label>Chỉ tiêu kế hoạch</label> <input class="form-control"
								placeholder=<%=form.get(0)%> disabled />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-offset-2 col-md-8 ">
							<label>KPI Max</label> <input class="form-control"
								placeholder=<%=form.get(2)%> name="kpimax"
								value=<%=form.get(2)%> id="kpimax" disabled />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-offset-2 col-md-3">
							<label>Tự đánh giá</label> <input class="form-control"
								id="kpidanhgia" type="text" name="kpidanhgia"
								placeholder=<%=form.get(3)%> />
						</div>
						<div class="form-group col-md-offset-2 col-xs-3">
							<label>Cấp trên đánh giá</label> <input class="form-control"
								placeholder=<%=form.get(4)%> disabled />
						</div>
					</div>
					<div class="row ">
						<div class="form-group col-md-offset-2 col-md-4">
							<%
								String tbm = new String();
								if ((boolean) form.get(5))
									tbm = "checked";
							%>
							<input type="checkbox" <%=tbm%> disabled /> <label>TBM
								Duyệt</label>
						</div>
						<div class="form-group col-md-offset-1 col-md-4">
							<%
								String trk = new String();
								if ((boolean) form.get(6))
									trk = "checked";
							%>
							<input type="checkbox" <%=trk%> disabled /> <label>TrKhoa
								duyệt</label>
						</div>
					</div>
					<div class="form-group col-md-offset-2 col-md-8">
						<label>Tiến trình</label>
						<textarea name="tientrinh" class="form-control" rows="4"><%=form.get(1)%></textarea>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-4 col-md-offset-8">
								<div class="btn-group">
									<button name="submit" class="btn btn-primary">Duyệt
										biểu mẫu</button>
									<button type="button" class="btn btn-danger"
										onclick="window.location.href='<%=request.getContextPath()%>/BmGV?url=Giangvien_Quanlybieumaudadangky.jsp&email=${email}'">Quay
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
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		var $submit = $('button[name="submit"]');
		$submit.prop('disabled', true);
		$('input[name="kpidanhgia"]').on('input change', function() { //'input change keyup paste'
			$submit.prop('disabled', !$(this).val().length);
		});
	});

	$('button[name="submit"]').click(
			function() {
				var kpi = document.getElementById('kpidanhgia').value;
				var kpimax = document.getElementById('kpimax').value;
				if (kpi > kpimax || kpi >= 100) {
					alert('kpi đánh giá phải bé hơn hoặc bằng kpi max');
					document.getElementById('kpidanhgia').focus();
					$('button[name="submit"]').prop('disabled', true);

				}
 				else {
 					var email = $('input[name="email"]').val();
 					
 					var mabm = $('input[name="mabieumau"]').val();
					var url = $('input[name="url"]').val();
 					var tientrinh = $('textarea[name="tientrinh"]').val();
// 					//String a = new String ()
					window.location.href="/web1/updateForm?email="+email+"&mabieumau="+mabm+"&url="+url+"&tientrinh="+tientrinh+"&kpi="+kpi;

 				}

			})
</script>
</html>