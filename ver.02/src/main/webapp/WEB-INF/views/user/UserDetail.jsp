<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Join</title>
</head>
<body>
	<table align="center">
		<tbody>
			<tr>
				<td align="center">회원 정보</td>
			</tr>
			<tr>
				<td align="center">아이디</td>
				<td><input type="text" name="id" value="${userDetail.id}"
					readonly></td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td><input type="text" id="pw" name="pw"
					value="${userDetail.pw}" readonly></td>
			</tr>
			<tr>
				<td align="center">이름</td>
				<td><input type="text" name="name" readonly
					value="${userDetail.name}"></td>
			</tr>
			<tr>
				<td align="center">우편주소</td>
				<td><input type="text" name="zipcode"
					value="${userDetail.zipcode}"></td>
			</tr>
			<tr>
				<td align="center">도로명 주소</td>
				<td><input type="text" name="addr1" value="${userDetail.addr1}"
					readonly><br></td>
			</tr>
			<tr>
				<td align="center">상세주소</td>
				<td><input type="text" name="addr2" value="${userDetail.addr2}"
					readonly><br></td>
			</tr>
			<tr>
				<td align="center">전화번호</td>
				<td><input type="text" name="phone" value="${userDetail.phone}"
					readonly></td>
			</tr>
			<tr>
				<td align="center">메일 주소</td>
				<td><input type="text" name="email" value="${userDetail.email}"
					readonly></td>
			</tr>
		</tbody>
	</table>
	<p align="center">
		<button type="button"
			onclick="location.href='/user/editPage?id=${userDetail.id}'">수정</button>
			<button type="button"
			onclick="location.href='/user/delete?id=${userDetail.id}'">탈퇴</button>
		<button type="button" onclick="location.href='/board/list'">뒤로</button>
	</p>
	</form>
</body>
</html>