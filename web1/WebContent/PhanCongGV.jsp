<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<form action="PhanConggv" method="get">
	<div class="panel panel-info" style="width: 500px">
		<div class="panel panel-heading">
			<h1 class="text-center">
				<span class=" glyphicon glyphicon-list-alt" aria-hidden="true"></span>
				Tạo công việc
			</h1>
		</div>
		<input type="hidden" name="url" value="TBD_Chitietphancong.jsp" /> <input
			type="hidden" name="email" value=${email } />
		<div align="center"  class="panel panel-body">
			<div class="form-group">
				<%
					int colCountnv = (int) request.getAttribute("colCount1");
					ArrayList<Object> formnv = (ArrayList<Object>) request.getAttribute("formnv");
					int countnv = 0;
					int rowColnv = formnv.size() / colCountnv;
					String MaCV = request.getAttribute("MaCV").toString();
				%>
				<input type="hidden" name="MaCV" value=<%=MaCV %> />
				<input type="hidden" name="quantity" value=<%=rowColnv %> />
				<div style="overflow-x: auto;">
					<table>
						<thead>
							<tr>
								<th style="witdh: 80px">MSCB</th>
								<th>email</th>
								<th style="witdh: 200px">Tên CB</th>
								<th style="witdh: 100px">Chức vụ</th>
								<th style="witdh: 100px">Khoa</th>
								<th>Chọn</th>
							</tr>
						</thead>
						<tbody>
							<%for(int i = 1; i<=rowColnv ; i++){
								String email="";%>
							<tr>
								<%for(int j = 1; j<=colCountnv;j++){
										if(j==2){
											email=formnv.get(countnv).toString();
										}
										if( j==4 ){
											String cv="";
											switch((Integer)formnv.get(countnv++)){
											case(1):cv="Giảng viên";break;
											case(2):cv="Trưởng bộ môn";break;
											case(3):cv="Trưởng khoa";break;
											}%>
								<td><%=cv %></td>
								<%continue;
										}%>
								<td><%=formnv.get(countnv++) %></td>
								<% } %>
								<td><input type="hidden" name=<%="row"+i %> value=<%=i%> /><input type="checkbox" name=<%=i %> value=<%=email %> /></td>
							</tr>
							<%} %>
						</tbody>
					</table>
				</div>

				<hr></hr>
				<div class="row" style="padding-top: 15px">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
</form>