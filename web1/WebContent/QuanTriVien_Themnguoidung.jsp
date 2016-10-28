<%@ page contentType="text/html; charset=UTF-8"%>

<!document html>
<html>
<head>
<title>Them nguoi dung</title>
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

		<div class="container bg-success"
			style="width: 600px; height: 900px; margin-top: 0px; margin-left: 450px">
			<div class="col-md-12">
				<h1 class="text-center">Thêm người dùng</h1>
				<div class="form-group center-block">
					<div class="form-inline" style="padding-top: 20px; margin-left: 45px">
						<div class="form-group">
							<label class="sr-only" for="exampleInputEmail3">Email
								address</label> <input type="email" class="form-control"
								id="exampleInputEmail3" placeholder="Email">
						</div>
						<div class="form-group">
							<label class="sr-only" for="exampleInputPassword3">Password</label>
							<input type="password" class="form-control"
								id="exampleInputPassword3" placeholder="Password">
						</div>

					</div>

					<div class="col-md-10" style="padding-top: 20px; margin-left: 30px">
						<input class="form-control" type="text" placeholder="Mã số cán bộ"></input>
					</div>
					<div class="col-md-10" style="padding-top: 20px; margin-left: 30px">
						<input class="form-control" type="text" placeholder="Khoa"></input>
					</div>
					<div class="col-md-10" style="padding-top: 20px; margin-left: 30px">
						<input class="form-control" type="text" placeholder="Tên cán bộ"></input>
					</div>
					<div class="form-group">

						<div class="col-md-10" style="padding-top: 20px; margin-left: 20px">
							<div class="col-md-12"
								style="padding-top: 20px; margin-left: 10px">
								<textarea name="" id="" cols="50" rows="10"
									placeholder="Thông tin chi tiết" class="form-control"></textarea>
							</div>
							<div class="btn-group "
								style="padding-top: 20px; margin-left: 300px">
								<button type="button" class="btn btn-success">Tạo</button>
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