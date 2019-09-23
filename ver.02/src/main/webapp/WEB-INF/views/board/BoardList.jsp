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

	<div class="container py-5 mb5">
		<h1 class="display-4 text-dark text-uppercase">Board List</h1>
		<c:if test="${sessionScope.id != null}">
			<button type="button"
				class="btn btn-outline-dark btn-hover-text-white btn-lg m-2"
				onclick="location.href='./writePage'">글쓰기</button>
		</c:if>
		<div class="row">
			<div class="col-md-12">
				<table class="table">
					<thead class="thead-light">
						<tr align="center">
							<th scope="col">번호</th>
							<th scope="col">작성자</th>
							<th scope="col">제목</th>
							<th scope="col">날짜</th>
							<th scope="col">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boardList}" var="boardList">
							<tr align="center">
								<td scope="row">${boardList.no}</td>
								<td scope="row">${boardList.id}</td>
								<td scope="row"><a href="/board/detail?no=${boardList.no}">${boardList.title}</a></td>
								<td scope="row">${boardList.date}</td>
								<td scope="row">${boardList.hit}</td>
							</tr>
						</c:forEach>
					</tbody>
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
				</table>
			</div>
		</div>
	</div>
</body>
</html>