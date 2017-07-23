<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	color :#000;
	font-size:14px;
	margin:20 px auto;
}
#message{
	test-align: center;
	}
</style>
</head>
<body>
	<div id="message">
		登录失败。<br/>
		错误信息：
		<%
			Object obj= request.getAttribute("msg");
			if (obj != null){
				out.println(obj.toString());
			}else{
				out.println("无");
			}
		%>
		提交的信息为：<br/>
		账号：<%=request.getParameter("userName") %><br/>
		密码：<%=request.getParameter("passWord") %><br/>
	</div>
</body>
</html>