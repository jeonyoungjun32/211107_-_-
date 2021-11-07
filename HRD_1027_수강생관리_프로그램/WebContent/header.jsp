<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "dbcon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강생관리 프로그램</title>
<style type="text/css">
* {margin: 0; padding: 0;}
a {text-decoration: none; color:inherit;}

header {
width:100%;
overflow:hidden;
background-color: gray;
}
header h2 {
color:white;
margin-top:30px;
text-align: center;
}
nav {
width: 100%;
height: 30px;
border: 1px solid;
background-color:black;
margin-top: 50px;
}

nav ul li {
float: left;
color:white;
line-height:30px;
margin-right: 30px;
list-style: none;
}
</style>
</head>
<body>
	<header>
	<h2>학원수강관리</h2>
		<nav>
			<ul>
				<li><a href="insert.jsp">수강생등록</a></li>
				<li><a href="select.jsp">수강생목록조회/수정</a></li>
				<li><a href="#">수강신청</a></li>
				<li><a href="#">수강조회</a></li>
				<li><a href="index.jsp">홈으로</a></li>
			</ul>
		</nav>
	</header>
</body>
</html>