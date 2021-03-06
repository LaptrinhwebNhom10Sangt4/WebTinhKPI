<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<form action="TaoCVPC1" method="get">
	<div class="panel panel-info" style="width: 500px">
		<div class="panel panel-heading">
			<h1 class="text-center">
				<span class=" glyphicon glyphicon-list-alt" aria-hidden="true"></span>
				Tạo công việc
			</h1>
		</div>
		<%
			ArrayList<Object> form = (ArrayList<Object>) request.getAttribute("khoa");
			int columnCount = (int) request.getAttribute("fasize");
			int count1 = 0;
			int rowCnt = form.size() / columnCount;
		%>
		<input type="hidden" name="url" value=<%=url%> /> <input
			type="hidden" name="email" value=${email } />
		<div class="panel panel-body">
			<div class="form-group">
				<div align="center" style="margin: 0 auto">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="MaCV" class="form-control" type="text"
									placeholder="Mã công việc"></input>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="TenCV" class="form-control" type="text"
									placeholder="Tên công việc"></input>
							</div>
						</div>
					</div>
					<div class="row">
						<div style="padding-top: 20px" class="col-md-5 col-md-offset-1">
							<select name="MaKhoa" class="form-control">
								<option value="">Khoa</option>
								<%for (int i = 1;i<=rowCnt;i++){%>
									<option value=<%=form.get(count1++) %>><%=form.get(count1++) %></option>
								<%} %>

							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="NgHD" class="form-control" type="text"
									placeholder="Chỉ đạo và hướng dẫn"></input>
							</div>
						</div>
					</div>

					<div class="form-inline" style="padding-top: 20px">
						<div class="row">
							<div>
								<div class="input-group input-daterange">
									<input name="Ngaybd" type="date" class="form-control">
									<span class="input-group-addon">to</span> <input name="Ngaykt"
										type="date" class="form-control">
								</div>
							</div>

						</div>
					</div>
					<div class="row">
						<span style="padding-top: 15px" id="helpBlock" class="help-block">List
							công việc chi tiết</span>
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="cv1" class="form-control " type="text"></input>
							</div>
						</div>
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="cv2" class="form-control " type="text"></input>
							</div>
						</div>
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="cv3" class="form-control " type="text"></input>
							</div>
						</div>
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="cv4" class="form-control " type="text"></input>
							</div>
						</div>
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="cv5" class="form-control " type="text"></input>
							</div>
						</div>
					</div>
					<hr></hr>
					<div class="row" style="padding-top: 15px">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>