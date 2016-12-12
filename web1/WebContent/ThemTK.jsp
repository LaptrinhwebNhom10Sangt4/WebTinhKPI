<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<form >
	<div class="panel panel-info" style="width: 500px">
		<div class="panel panel-heading">
			<h1 class="text-center">
				<span class=" glyphicon glyphicon-list-alt" aria-hidden="true"></span>
				Tạo biểu mẫu
			</h1>
		</div>
		<%
			ArrayList<Object> form1 = (ArrayList<Object>) request.getAttribute("khoa");
			int columnCount = (int) request.getAttribute("fasize");
			int count1 = 0;
			int rowCnt = form1.size() / columnCount;
		%>
		<div class="panel panel-body">
			<div class="form-group">
				<div align="center" style="margin: 0 auto">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="email" class="form-control" type="email"
									placeholder="email"></input>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="pass" class="form-control" type="text"
									placeholder="Password"></input>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="name" class="form-control" type="text"
									placeholder="Họ tên"></input>
							</div>
						</div>
					</div>
					<div class="form-inline" style="padding-top: 20px">
						<div class="form-group">
							<select name="role" class="form-control">
								<option value="1">Giảng viên</option>
								<option value="2">Trưởng bộ môn</option>
								<option value="3">Trưởng khoa</option>
								<option value="4">Ban giám hiệu</option>
								<option value="5">Phòng tổ chức</option>
							</select>	
						</div>
						<div class="form-group">
							<select name="gender" class="form-control">
								<option value="Nam">Nam</option>
								<option value="Nữ">Nữ</option>
							</select>	
						</div>
						<div class="form-group">
						<select name="faculty" class="form-control">
								<option value="">Khoa</option>
								<%for (int i = 1;i<=rowCnt;i++){%>
									<option value=<%=form1.get(count1++) %>><%=form1.get(count1++) %></option>
								<%} %>

							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="mscb" class="form-control" type="text"
									placeholder="Mã số cán bộ"></input>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="address" class="form-control" type="text"
									placeholder="Địa chỉ"></input>
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