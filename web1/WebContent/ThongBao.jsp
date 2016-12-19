<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<form action="ThoiHan" method="get">
	<input type="hidden" name="email" value=${email } />
	<div class="panel panel-info" style="width: 700px">
		<div class="panel panel-heading">
			<h1 class="text-center">
				<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
				Thời hạn
			</h1>
		</div>
		<%
									ArrayList<Object> tg = (ArrayList<Object>) session.getAttribute("tg");
									String bddk = tg.get(2).toString();
									bddk = bddk.substring(0, bddk.indexOf("."));
									bddk = bddk.replaceAll(" ", "T");
									String ktdk = tg.get(3).toString();
									ktdk = ktdk.substring(0, ktdk.indexOf("."));
									ktdk = ktdk.replaceAll(" ", "T");
									String bddg = tg.get(0).toString();
									bddg = bddg.substring(0, bddg.indexOf("."));
									bddg = bddg.replaceAll(" ", "T");
									String ktdg = tg.get(1).toString();
									ktdg = ktdg.substring(0, ktdg.indexOf("."));
									ktdg = ktdg.replaceAll(" ", "T");
		%>
		<div class="panel panel-body">
			<div class="form-group">
				<div align="center" style="margin: 0 auto">
					<div class="form-inline" style="padding-top: 20px">
						<div class="row" >
							<div>
								<label>Thời gian đăng ký biểu mẫu</label>
								<div class="input-group input-daterange">
									<input disabled value=<%=bddk %> name="Ngaybddk"
										type="datetime-local" class="form-control"> <span
										class="input-group-addon">to</span>
									 <input disabled value=<%=ktdk %> name="Ngayktdk" type="datetime-local" class="form-control">
								</div>
							</div>

						</div>
					</div>
					<div class="form-inline" style="padding-top: 20px">
						<div class="row">
							<div>
								<label>Thời gian đánh giá biểu mẫu</label>
								<div class="input-group input-daterange">
									<input disabled value=<%=bddg %> name="Ngaybddg" type="datetime-local"
										class="form-control"> <span class="input-group-addon">to</span>
									<input disabled value=<%=ktdg %> name="Ngayktdg" type="datetime-local"
										class="form-control">
								</div>
							</div>

						</div>
					</div>
					<hr></hr>
					<div class="row" style="padding-top: 15px">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>