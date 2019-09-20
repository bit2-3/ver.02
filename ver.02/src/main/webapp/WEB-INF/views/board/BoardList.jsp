<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="/resources/css/bootstrap4-hello-world.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Fredoka+One|Roboto:300,400"
	rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Board List</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/template/header.jsp" />
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