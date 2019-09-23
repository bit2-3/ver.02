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
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/template/header.jsp" />
	<br>
	<div class="ht-tm-wrapper ht-tm-wrapper-inspectoron">
		<div class="container ht-tm-container">

			<div class="row">
				<div class="col-xl-12">
					<div id="ht-tm-maincolumn" class="ht-tm-maincolumn">
						<div class="ht-tm-componentsblock">
							<div class="ht-tm-cat ht-tm-btn-replaceable">
								<div class="ht-tm-codeblock">
									<div class="row">
										<div class="col-xl-6">
											<div class="card">
												<div class="card-body">
													<h1 class="display-4" align="center">User Find Id</h1>

													<c:forEach items="${userFindId}" var="userFindId">
														<div class="ht-tm-element ht-tm-element-inner">
															<h6>아이디</h6>
															<input type="text" class="form-control" name="id"
																value="${userFindId.id}" readonly>
														</div>
														<br>
													</c:forEach>
													<div align="center">
														<button type="button" class="btn btn-outline-primary"
															onclick="location.href='/user/loginPage'">로그인</button>
														<button type="button" class="btn btn-outline-dark"
															onclick="location.href='/user/findPwPage'">비밀번호
															찾기</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>