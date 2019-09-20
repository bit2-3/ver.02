<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List</title>
</head>
<body>
	<h1>id : ${sessionScope.id}</h1>
	<c:if test="${sessionScope.id != null}">
		<button type="button"
			onclick="location.href='/user/detail?id=${sessionScope.id}'">정보
			수정</button>
			<button type="button" onclick="location.href='/user/logout'">로그아웃</button>
	</c:if>
	<table>
		<tr align="center">
			<td colspan="4">게시판</td>
		</tr>
		<tr align="center">
			<td>번호</td>
			<td>작성자</td>
			<td>제목</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
		<c:forEach items="${boardList}" var="boardList">
			<tr align="center">
				<td>${boardList.no}</td>
				<td>${boardList.id}</td>
				<td><a href="/board/detail?no=${boardList.no}">${boardList.title}</a></td>
				<td>${boardList.date}</td>
				<td>${boardList.hit}</td>
			</tr>
		</c:forEach>
		<tr align=center>
			<td>
				<%-- <%
					if (nowpage <= 1) {
				%> [이전]&nbsp; <%
 	} else {
 %> <a
				href="./BoardList.bo?page=<%=nowpage - 1%>">[이전]</a>&nbsp; <%
 	}
 %> <%
 	for (int a = startpage; a <= endpage; a++) {
 		if (a == nowpage) {
 %>
				[<%=a%>] <%
 	} else {
 %> <a href="./BoardList.bo?page=<%=a%>">[<%=a%>]
			</a>&nbsp; <%
 	}
 %> <%
 	}
 %> <%
 	if (nowpage >= maxpage) {
 %> [다음] <%
 	} else {
 %> <a
				href="./BoardList.bo?page=<%=nowpage + 1%>">[다음]</a> <%
 	}
 %> --%>
			</td>
		</tr>
		<tr align="right">
			<td><button type="button" onclick="location.href='./writePage'">글쓰기</button></td>
		</tr>
	</table>
</body>
</html>