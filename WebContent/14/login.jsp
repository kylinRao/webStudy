<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/loginServlet" method = "get">
		userName:<input type='text' name='userName' /><br/>
		passWord:<input type='text' name='passWord' /><br/>
		<button type='submit' value='Login'>Login</button>
		<button type='Reset' value ='Reset'>Reset</button>
	</form>
</body>
</html>