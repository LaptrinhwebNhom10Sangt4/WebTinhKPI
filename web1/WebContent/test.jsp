
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<form action="callme1" method="get">
		<button type="submit"
			onclick="window.location.href='<%=request.getContextPath()%>/callme?param=abc&param1=def&param2=ghi'"
			class="btn btn-default" style="width: 100%">
			<div class="danhmuc" style="float: left">Đăng Kí biểu mẫu</div>
		</button>

	</form>
		<a
			href="<%=request.getContextPath()%>/callme?param=abc&param1=def&param2=ghi">Call
			the servlet</a>
	

</body>
</html>