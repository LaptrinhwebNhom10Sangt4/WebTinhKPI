<%@ page contentType="text/html; charset=UTF-8"%>

<!document html>
<html>
<head>
	<title>Tao biểu mẫu</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="css/styles.css" rel="stylesheet" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
	
	
</head>	
<body>
	<div class="row bg-success">
		
		<div class="container bg-success " style="width:600px;height:900px;margin-top:0px;margin-left:400px">
			<div class="col-md-12">
				<h1 style="margin-left:120px">Tạo biểu mẫu</h1>
				<div class="form-group center-block">
					<div class="col-md-9 " style="padding-top: 20px;margin-left:30px">
						<input class="form-control" type="text" placeholder="Mã biểu mẫu"></input>
					</div>
					<div class="col-md-9" style="padding-top: 20px;margin-left:30px">
						<input class="form-control" type="text" placeholder="Tên kế hoạch"></input>
					</div>
					<div class="col-md-9" style="padding-top: 20px;margin-left:30px">
						<input class="form-control" type="text" placeholder="Mục tiêu"></input>
					</div>
					<div class="col-md-9" style="padding-top: 20px;margin-left:30px">
						<input class="form-control" type="text" placeholder="KPI max"></input>
					</div>						
					<div class="col-md-9" style="padding-top: 20px;margin-left:30px">
						<input class="form-control" type="text" placeholder="Chỉ đạo và hướng dẫn"></input>
						<span id="helpBlock" class="help-block">Điền đầy đủ họ và tên</span>
					</div>
					<div class="form-inline">
						
						<div class="col-md-5" style="padding-top: 20px;margin-left:10px">
							
								<input class="form-control" type="date" placeholder="Ngay bat dau"></input>
							</div>

							<div class="col-md-5" style="padding-top: 20px;margin-left:10px">
								
									<input class="form-control" type="date" placeholder="Ngay ket thuc"></input>
								</div>
							</div>
							<div class="col-md-9" style="padding-top: 20px;margin-left:30px">
								<textarea name="" id="" cols="50" rows="10" placeholder="Nội dung chi tiết" class="form-control"></textarea>
								<span id="helpBlock" class="help-block">Không quá 500 từ</span>
							</div>
							<div class="btn-group " style="padding-top:20px; margin-left: 400px">
								<button type="button" class="btn btn-success">Tạo</button>
								<button type="button" class="btn btn-danger">Hủy</button>
							</div>
						</div>
					</div>
				</div>
			</div>

		</body>
		</html>