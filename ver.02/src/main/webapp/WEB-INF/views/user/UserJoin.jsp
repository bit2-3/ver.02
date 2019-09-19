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
		var getMail = document.getElementById("mail");
		var getName = document.getElementById("name");
		var getNum = document.getElementById("id_num");
		var getNumBack = document.getElementById("id_num_back");

		//value 불러오기 
		var id = getId.value;
		var pw = getPw.value;
		var pwCheck = getPwCheck.value;
		var name = getName.value;
		var idNum = getNum.value;
		var idNumBack = getNumBack.value;

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
		} else if (!regMail.test(mail)) { //메일주소 확인 
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

	//주민등록번호 유효성 검사 
	function check_jumin() {
		var jumin = document.getElementById("id_num").value
				+ document.getElementById("id_num_back").value;
		//pnum = 주민번호 앞자리 
		//nnum = 주민번호 뒷자리 
		var fmt = /^\d{6}[1234]\d{6}$/;
		if (!fmt.test(jumin)) {
			return false;
		}
		var birthYear = (jumin.charAt(6) <= "2") ? "19" : "20";
		birthYear += jumin.substr(0, 2);
		var birthMonth = jumin.substr(2, 2) - 1;
		var birthDate = jumin.substr(4, 2);
		var birth = new Date(birthYear, birthMonth, birthDate);
		if (birth.getYear() % 100 != jumin.substr(0, 2)
				|| birth.getMonth() != birthMonth
				|| birth.getDate() != birthDate) {
			return false;
		}
		var buf = new Array(13);
		for (var i = 0; i < 13; i++)
			buf[i] = parseInt(jumin.charAt(i));
		multipliers = [ 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5 ];
		for (var sum = 0, i = 0; i < 12; i++)
			sum += (buf[i] *= multipliers[i]);
		if ((11 - (sum % 11)) % 10 != buf[12]) {
			return false;
		}
		return true;
	}

	function checked() {
		if (check_jumin()) {
			alert("올바른 주민등록번호입니다.");
			var year1 = document.getElementById("year");
			var num1 = document.getElementById('id_num');
			var num2 = num1.value;
			var num3 = num2.substring(0, 2);
			var num4 = num2.substring(2, 4);
			var num5 = num2.substring(4, 6);
			year1.value = "19" + num3;
			document.data.mon.value = num4;
			document.data.day.value = num5;
			return true;
		} else
			var num1 = document.getElementById('id_num');
		var num2 = document.getElementById('id_num_back');
		alert("똑바로 입력하세요");
		num1.value = "";
		num1.focus();
		num2.value = "";
		return false;
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
					<td align="center">메일 주소</td>
					<td><input type="text" id="mail"> 예) id@domain.com</td>
				</tr>
				<tr>
					<td align="center">이름</td>
					<td><input type="text" id="name"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">개인 신상 정보</td>
				</tr>
				<tr>
					<td align="center">주민등록번호</td>
					<td><input size="7" type="text" id="id_num"> - <input
						size="7" type="password" id="id_num_back">
						예)123456-1234567</td>
				</tr>
				<tr>
					<td align="center"><b>생일</b></td>
					<td><input type="text" AUTOCOMPLETE="off" name="year"
						id="year" size="4" readonly disabled><b> 년</b> <input
						type="text" AUTOCOMPLETE="off" name="month" id="month"
						style="width: 20px;" readonly disabled><b> 월</b> <input
						type="text" AUTOCOMPLETE="off" name="date" id="date"
						style="width: 20px;" " readonly disabled><b> 일</b></td>
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