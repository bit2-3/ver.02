<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Read</title>
</head>
<body>
	<form action="" method="post" enctype="multipart/form-data"
		name="boardDetail">
		<table>
			<tr>
				<td>게시판 글 읽기</td>
			</tr>
			<tr>
				<td>
					<div align="center">글번호</div>
				</td>
				<td><input name="id" type="text" value="${boardDetail.no}"
					readonly /></td>
			</tr>
			<tr>
				<td>
					<div align="center">조회수</div>
				</td>
				<td><input name="id" type="text" value="${boardDetail.hit}"
					readonly /></td>
			</tr>
			<tr>
				<td>
					<div align="center">작성자</div>
				</td>
				<td><input name="id" type="text" value="${boardDetail.id}"
					readonly /></td>
			</tr>
			<tr>
				<td>
					<div align="center">제목</div>
				</td>
				<td><input name="title" type="text"
					value="${boardDetail.title}" readonly /></td>
			</tr>
			<tr>
				<td>
					<div align="center">내용</div>
				</td>
				<td><textarea name="content" readonly>${boardDetail.content}</textarea></td>
			</tr>
			<tr>
				<td>
					<div align="center">날짜</div>
				</td>
				<td><input type="text" name="date" value="${boardDetail.date}"
					readonly></input></td>
			</tr>
			<tr align="center">
				<td><c:if test="${sessionScope.id eq boardDetail.id }">
						<button type="button"
							onclick="location.href='/board/editPage?no=${boardDetail.no}'">수정</button>
					<button type="button"
						onclick="location.href='/board/delete?no=${boardDetail.no}'">삭제</button>
					</c:if>
					<button type="button" onclick="location.href='/board/list'">뒤로</button></td>
			</tr>
		</table>
	</form>
</body>
</html>