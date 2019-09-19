<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Edit</title>
<head>
<title>MVC 게시판</title>
</head>
<body>
	<form action="/board/edit" method="post">
		<input type="hidden" name="no" value="${boardEdit.no}"></input>
		<table>
			<tr align="center">
				<td>게시판 글 수정</td>
			</tr>
			<tr>
				<td>
					<div align="center">작성자</div>
				</td>
				<td><input name="id" type="text" value="${boardEdit.id}"
					value="" /></td>
			</tr>
			<tr>
				<td>
					<div align="center">제목</div>
				</td>
				<td><input name="title" type="text" value="${boardEdit.title}" /></td>
			</tr>
			<tr>
				<td>
					<div align="center">내용</div>
				</td>
				<td><textarea name="content">${boardEdit.id}</textarea></td>
			</tr>
			<tr>
				<td>
					<div align="center">날짜</div>
				</td>
				<td><input type="text" name="date" value="${boardEdit.date}"></input></td>
			</tr>
			<tr align="center">
				<td><button type="submit">수정</button>
					<button type="button"
						onclick="location.href='javascript:history.go(-1)'">뒤로</button></td>
			</tr>
		</table>
	</form>
</body>
</html>