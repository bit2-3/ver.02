<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
</head>
<body>
	<h1 align="center">Login</h1>
	<form action="/user/login" name="LoginForm" method="post">
		<table align="center">
			<tr>
				<td align="center">아이디</td>
				<td><input type="text" required name="id" /></td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td><input type="password" required name="pw"/></td>
			</tr>
			<tr>
				<td><button align="center" type="submit" name="userLogin">로그인</button></td>
				<td><button align="center" type="button" name="userJoin" onclick="location.href='/user/joinPage'">회원가입</button></td>
				<td><button align="center" type="button" name="userFind" onclick="location.href='/user/findPage'">아이디 비밀번호 찾기</button></td>
			</tr>
		</table>
	</form>
</body>
</html>