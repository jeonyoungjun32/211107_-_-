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
width:1200px;
margin: 0 auto;
}
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<section>
		<h4>수강생 조회/수정</h4>
		<table border="1">
			<tr>
				<th>수강생번호</th>
				<th>이름</th>
				<th>연락처</th>
				<th>생년월일</th>
				<th>메일주소</th>
				<th>어이디</th>
				<th>비밀번호</th>
				<th>수강과목수</th>
			</tr>
			<%
			sql ="select STUDENT_NO, STUDENT_NAME, STUDENT_ADDR, STUDENT_PHONE, to_char(STUDENT_BIRTH,'yyyy/mm/dd') as STUDENT_BIRTH, STUDENT_EMAIL, STUDENT_ID, STUDENT_PW from STUDENT_TBL_01";
			
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			%>
			<%while(rs.next()) {%>
			<tr>
				<td align="center"><a href="update.jsp?STUDENT_NO=<%=rs.getInt(1) %>"><%=rs.getInt(1) %></a></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<% if (rs.getString(7) == null) {%>
				<td></td>
				<%} else {%>
				<td><%=rs.getString(7) %></td>
				<%} %>
				<% if (rs.getString(8) == null) {%>
				<td></td>
				<%} else {%>
				<td><%=rs.getString(8) %></td>
				<%} %>
				<td></td>
			</tr>
			<%} %>
		</table>
	</section>
	
	<%@ include file="footer.jsp" %>
</body>
</html>