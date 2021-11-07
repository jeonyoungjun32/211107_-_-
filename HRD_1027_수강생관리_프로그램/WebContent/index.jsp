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
}

section .list{
margin-top: 30px;
margin-left: 30px;
}
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<section>
		<h4>학원 수강관리 프로그램</h4>
		<p>국제학원의 수강생 정보 수강신청 정보 데이터베이스를 구축하고 수강생관리 프로그램을 작성하는 프로그램이다.</p>
		<p>프로그램 작성 순서</p>
		<ol class="list" start="1">
			<li>수강생정보 테이블을 생성한다.</li>
			<li>과목정보 테이블을 생성한다.</li>
			<li>수강정보 테이블을 생성한다.</li>
			<li>수강생정보, 과목정보, 수강정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.</li>
			<li>수강생정보 입력 화면프로그램을 작성한다.</li>
			<li>수강생정보 조회 프로그램을 작성한다.</li>
			<li>수강신청 화면 프로그램을 작성한다.</li>
			<li>수강신청 정보 조회 프로그램을 작성한다.</li>
		</ol>
	</section>
	
	<%@ include file="footer.jsp" %>
</body>
</html>