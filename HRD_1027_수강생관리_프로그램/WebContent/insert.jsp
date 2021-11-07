<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강생관리 프로그램</title>
<style type="text/css">
section {
width:100%;
height: 900px;
background-color: lightgray;
padding: 30px 0px;
}

section h4 {
text-align: center;
margin-bottom: 20px;
}

table {
width:500px;
margin: 0 auto;
}
table td {
padding-left: 5px;
}

table th {
background-color: white;
color:black;
}
.inputBox {
width: 500px;
margin: 10px auto;
text-align: center;
}
.inputBox input {
width: 50px;
}
</style>
<script type="text/javascript">
function check() {
	
	if(s.STUDENT_NAME.value=="") {
		alert("이름을 입력해주세요");
		return s.STUDENT_NAME.focus();
	}
	
	if(s.STUDENT_ADDR.value=="") {
		alert("주소를 입력해주세요");
		return s.STUDENT_ADDR.focus();
	}
	
	if(s.STUDENT_PHONE.value=="") {
		alert("연락처를 입력해주세요");
		return s.STUDENT_PHONE.focus();
	}
	
	if(s.STUDENT_BIRTH.value=="") {
		alert("생년월일을 입력해주세요");
		return s.STUDENT_BIRTH.focus();
	}
	
	if(s.STUDENT_EMAIL.value=="") {
		alert("메일 주소를 입력해주세요");
		return s.STUDENT_EMAIL.focus();
	} 
	
	if(s.STUDENT_EMAIL_CHOICE.value=="") {
		alert("메일 상세주소를 선택해주세요");
		return;
	}
	if(s.STUDENT_ID.value=="") {
		alert("아이디를 입력해주세요");
		return s.STUDENT_ID.focus();
	}
	
	if(s.STUDENT_PW.value=="") {
		alert("패스워드를 입력해주세요");
		return s.STUDENT_PW.focus();
	}
	
	s.submit();
}
</script>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<section>
		<h4>수강생 등록</h4>
		<form name="s" action="insertPro.jsp" method="post">
		<table border="1">
			<tr>
				<th>이름</th>
				<td>
					<input type="text" name="STUDENT_NAME" value="">
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<input type="text" name="STUDENT_ADDR" value="" size=50>
				</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td>
					<input type="text" name="STUDENT_PHONE" value="">
				</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td>
					<input type="text" name="STUDENT_BIRTH" value="">
				</td>
			</tr>
			<tr>
				<th>메일주소</th>
				<td>
					<input type="text" name="STUDENT_EMAIL" value="">@
					<select name="STUDENT_EMAIL_CHOICE" >
						<option value="" disabled="disabled" selected="selected">메일주소를 선택해주세요</option>
						<option value="naver.com">naver.com</option>
						<option value="google.co.kr">google.co.kr</option>
						<option value="daum.net">daum.net</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="STUDENT_ID" value="">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="text" name="STUDENT_PW" value="">
				</td>
			</tr>
		</table>
		<div class="inputBox">
			<input type="submit" value="등록" onclick="check(); return false;">
			<input type="button" value="조회" onclick="location='select.jsp'">
		</div>
		</form>
	</section>
	
	<%@ include file="footer.jsp" %>
</body>
</html>