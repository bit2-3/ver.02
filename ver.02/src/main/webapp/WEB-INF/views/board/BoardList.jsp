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
	<table width=50% border="0" cellpadding="0" cellspacing="0">
		<tr align="center" valign="middle">
			<td colspan="4">게시판</td>
			<td align=right><font size=2> <%-- 글 개수 : ${listcount } --%>
			</font></td>
		</tr>
		<tr align="center" valign="middle">
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