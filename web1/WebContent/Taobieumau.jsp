<%@ page contentType="text/html; charset=UTF-8"%>

<!document html>
<html>
<head>
<title>Tao biểu mẫu</title>
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
	<div class="row bg-success">

		<div class="container bg-success "
			style="width: 600px; height: 1000px; margin: auto">
			<div class="panel panel-info">

				<div class="panel panel-heading">
					<h1 class="text-center">Tạo biểu mẫu</h1>
				</div>
				<div class="panel panel-body">
					<div class="form-group">
						<div align="center" style="margin: 0 auto">
							<div class="row">
								<div class="col-md-10 col-md-offset-1">
									<div style="padding-top: 20px">
										<input class="form-control input-lg" type="text"
											placeholder="Mã biểu mẫu"></input>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-10 col-md-offset-1">
									<div style="padding-top: 20px">
										<input class="form-control input-lg" type="text"
											placeholder="Tên kế hoạch"></input>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-10 col-md-offset-1">
									<div style="padding-top: 20px">
										<input class="form-control input-lg" type="text"
											placeholder="Mục tiêu"></input>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-10 col-md-offset-1">
									<div style="padding-top: 20px">
										<input class="form-control input-lg" type="text"
											placeholder="KPI max"></input> <span id="helpBlock"
											class="help-block">Từ 0 đến 100</span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-10 col-md-offset-1">
									<div style="padding-top: 20px">
										<input class="form-control input-lg" type="text"
											placeholder="Chỉ đạo và hướng dẫn"></input> <span
											id="helpBlock" class="help-block">Điền đầy đủ họ và
											tên</span>
									</div>
								</div>
							</div>
							<div class="form-inline">
								<div class="row">
									<div>
										<div class="input-group input-daterange">
											<input type="date" class="form-control"> <span
												class="input-group-addon">to</span> <input type="date"
												class="form-control">
										</div>
									</div>

								</div>
							</div>


							<div class="row">
								<div class="col-sm-10 col-sm-offset-1">
									<div style="padding-top: 20px">
										<textarea name="" id="" cols="50" rows="10"
											placeholder="Nội dung chi tiết" class="form-control"></textarea>
										<span id="helpBlock" class="help-block">Không quá 500
											từ</span>
									</div>
								</div>
							</div>
							<div class="btn-group "
								style="padding-top: 20px; margin-left: 250px">
								<button type="button" class="btn btn-success">Tạo biểu mẫu</button>
								<button type="button" class="btn btn-danger">Hủy</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>