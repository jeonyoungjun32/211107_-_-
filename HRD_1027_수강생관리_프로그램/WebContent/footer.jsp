<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강생관리 프로그램</title>
<style type="text/css">
footer {
width: 100%;
height: 30px;
background-color: gray;
text-align: center;
color:white;
}

</style>
</head>
<body>
	<footer>
		<p>HRDKOREA Copyright&copy; 2016 All right reserved. Human Resources Development Service of Korea.</p>
	</footer>
</body>
</html>

<%
try {
	if(con != null) con.close();
	if(st != null) st.close();
	if(pstmt != null) pstmt.close();
	if(rs != null) rs.close();
} catch (Exception e) {
	e.printStackTrace();
}
%>