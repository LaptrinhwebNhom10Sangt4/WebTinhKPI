<%@ page contentType="text/html; charset=UTF-8"%>
<form >
	<div class="panel panel-info" style="width: 500px">
		<div class="panel panel-heading">
			<h1 class="text-center">
				<span class=" glyphicon glyphicon-list-alt" aria-hidden="true"></span>
				Tạo biểu mẫu
			</h1>
		</div>
		<div class="panel panel-body">
			<div class="form-group">
				<div align="center" style="margin: 0 auto">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="MABIEUMAU" class="form-control" type="text"
									placeholder="Mã biểu mẫu"></input>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="KEHOACH" class="form-control" type="text"
									placeholder="Tên kế hoạch"></input>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
						<div style="padding-top: 20px">
							<select name="MaKhoa" class="form-control">
								<option value="">Khoa</option>
								<%count1=0;
								for (int i = 1;i<=rowCnt;i++){%>
									<option value=<%=form1.get(count1++) %>><%=form1.get(count1++) %></option>
								<%} %>

							</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="CHIDAO" class="form-control" type="text"
									placeholder="Chỉ đạo"></input>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div style="padding-top: 20px">
								<input name="CHITIEU" class="form-control" type="text"
									placeholder="Chỉ tiêu"></input>
							</div>
						</div>
					</div>
					<div class="form-inline" style="padding-top: 20px">
						<div class="form-group">
							<input type="text" class="form-control" name="TYTRONG"
								id="exampleInputName2" placeholder="Tỷ trọng">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="KPIMAX"
								id="exampleInputEmail2" placeholder="KPI max">
						</div>

					</div>
					<div style="padding-top:20px" class="row">
						<div class="col-md-8 col-md-offset-2" >
							<textarea name="CHITIETKEHOACH" class="form-control" rows="5"
								placeholder="Chi tiết kế hoạch"></textarea>
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