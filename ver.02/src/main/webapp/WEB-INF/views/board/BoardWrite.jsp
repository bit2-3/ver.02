<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Write</title>
</head>
<body>
	<form method="post" action="/board/write">
		<table>
			<tr align="center">
				<td>게시판 글 작성</td>
			</tr>
			<tr>
				<td>
					<div align="center">작성자</div>
				</td>
				<td><input name="id" type="text" value="${sessionScope.id}"
					readonly /></td>
			</tr>
			<tr>
				<td>
					<div align="center">제목</div>
				</td>
				<td><input name="title" type="text" id="title" /></td>
			</tr>
			<tr>
				<td>
					<div align="center">내용</div>
				</td>
				<td><textarea name="content" id="content"></textarea></td>
			</tr>
			<tr align="center">
				<td><button type="submit">확인</button>
					<button type="button"
						onclick="location.href='/board/list'">뒤로</button>
			</tr>
		</table>
	</form>
</body>
</html>