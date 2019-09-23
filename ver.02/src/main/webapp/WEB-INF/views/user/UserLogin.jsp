<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>User Login</title>
</head>
<body>
	<br>
	<div class="ht-tm-wrapper ht-tm-wrapper-inspectoron">
		<div class="container ht-tm-container">

			<div class="row">
				<div class="col-xl-12">
					<div id="ht-tm-maincolumn" class="ht-tm-maincolumn">
						<div class="ht-tm-componentsblock">
							<div class="ht-tm-cat ht-tm-btn-replaceable">
								<div class="ht-tm-codeblock">
									<div class="ht-tm-element jumbotron">
										<h1 class="display-4" align="center">Login</h1>
										<form action="/user/login" name="LoginForm" method="post">
											<div class="col-xl-6" align="center">
												<div class="ht-tm-codeblock">
													<div class="ht-tm-element input-group">
														<div class="input-group-prepend">
															<button class="btn btn-lg btn-dark" type="button">ID</button>
														</div>
														<input type="text" class="form-control form-control-lg"
															name="id">
													</div>
												</div>
											</div>
											<br>
											<div class="col-xl-6">
												<div class="ht-tm-codeblock">
													<div class="ht-tm-element input-group">
														<div class="input-group-prepend">
															<button class="btn btn-lg btn-dark" type="button">pw</button>
														</div>
														<input type="text" class="form-control form-control-lg"
															name="pw">
													</div>
												</div>
											</div>
											<br>
											<div align="center">
												<button type="submit" class="btn btn-outline-primary">로그인</button>
												<button type="button" class="btn btn-outline-dark"
													onclick="location.href='/user/joinPage'">회원가입</button>
												<button type="button" class="btn btn-outline-warning"
													onclick="location.href='/user/findPage'">아이디 비밀번호
													찾기</button>
											</div>
										</form>
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