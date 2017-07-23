<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆首页</title>
<style type="text/css">
body{
	color :#000;
	font-size:14px;
	margin:20 px auto;
}

</style>
<script type="text/javascript">
	function check(form) {
		if (document.forms.loginForm.userName.value == "") {
			alert("请输入用户名！");
			document.forms.loginForm.userName.focus();
			return false;
		}
		if (document.forms.loginForm.passWord.value == "") {
			
			
			alert("请输入密码！");
			document.forms.loginForm.passWord.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<form action="<%=request.getContextPath()%>/checkServlet" method = "post" name="loginForm">
		<table>
			<tr>
				<td>用户登陆</td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="userName"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="passWord"></td>
			</tr>
			<tr>
				<td><input type="Submit" name="submit"
					onclick="return check(this);" /> <input type="Reset" name="reset">

				</td>
			</tr>
		</table>

	</form>
</body>
</html>