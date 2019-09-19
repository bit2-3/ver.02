<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Join</title>
<script language="javascript">
	function checks() {
		//값 불러오기 
		var getId = document.getElementById("id");
		var getPw = document.getElementById("password");
		var getPwCheck = document.getElementById("password_check");
		var getMail = document.getElementById("email");
		var getName = document.getElementById("name");

		//value 불러오기 
		var id = getId.value;
		var pw = getPw.value;
		var pwCheck = getPwCheck.value;
		var name = getName.value;

		//유효성 검사 
		var regExp = /^[a-zA-Z0-9]{4,12}$/;
		//id, password 
		var regName = /^[가-힝]{2,}$/;
		//name 
		var regMail = /[a-z0-9]{2,}@[a-z0-9-]{2,}.[a-z0-9]{2,}/i;
		//mail 
		if (!regExp.test(id)) { //id 
			alert("아이디 다시 설정");
			getId.value = "";
			getId.focus();
			return false;
		} else if (!regExp.test(pw)) { //password 
			alert("비밀번호 다시 설정");
			getPw.value = "";
			getPw.focus();
			return false;
		} else if (!(pwCheck.slice(0, pwCheck.length) == pw.slice(0, pw.length))) { //password 동일한지 확인 
			alert("비밀번호 서로 안맞아");
			getPwCheck.value = "";
			getPwCheck.focus();
			return false;
		} else if ((pw.slice(0, pwCheck.length) == id.slice(0, id.length))) { //password랑 id 다른지 확인 
			alert("비밀번호와 id가 동일하면 다매요!");
			getPw.value = "";
			getPwCheck.value = "";
			getPw.focus();
			return false;
		} else if (!regMail.test(email)) { //메일주소 확인 
			alert("이메일 형식 이상하노");
			getMail.value = "";
			getMail.focus();
			return false;
		} else if (!regName.test(name)) { //이름 확인 
			alert("이름 다시");
			getName.value = "";
			getName.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<form action="" name="joinForm" method="post"
		onSubmit="return checks()">
		<table border="1" align="center">
			<tbody>
				<tr>
					<td colspan="2" align="center">회원 가입</td>
				</tr>
				<tr>
					<td align="center">아이디</td>
					<td><input size="15" type="text" id="id"> 4~12자의 영문
						대소문자와 숫자로만 입력</td>
				</tr>
				<tr>
					<td align="center">비밀번호</td>
					<td><input size="15" type="password" id="password">
						4~12자의 영문 대소문자와 숫자로만 입력</td>
				</tr>
				<tr>
					<td align="center">비밀번호 확인</td>
					<td><input size="15" type="password" id="password_check"></td>
				</tr>
				<tr>
					<td align="center">이름</td>
					<td><input type="text" id="name"></td>
				</tr>
				<tr>
					<td align="center">우편번호</td>
					<td><input type="text" id="zipcode"></td>
				</tr>
				<tr>
					<td align="center">주소</td>
					<td><input type="text" id="addr1"></td>
				</tr>
				<tr>
					<td align="center">주소 상세</td>
					<td><input type="text" id="addr2"></td>
				</tr>
				<tr>
					<td align="center">전화번호</td>
					<td><input type="text" id="phone"></td>
				</tr>
				<tr>
					<td align="center">메일 주소</td>
					<td><input type="text" id="email"> 예) id@domain.com</td>
				</tr>
			</tbody>
		</table>
		<p align="center">
			<input type="submit" value="회원 가입"> 
			<input type="reset" value="다시 입력">
		</p>
	</form>
</body>
</html>