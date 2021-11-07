<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbcon.jsp" %>
<%
String email1 = request.getParameter("STUDENT_EMAIL");
String email2 = request.getParameter("STUDENT_EMAIL_CHOICE");
String email = email1 +"@"+email2;

sql ="insert into STUDENT_TBL_01 values ((select max(REGISTER_SEQ)+1 from REGISTER_TBL_01),?,?,?,?,?,?,?)";

try {
	pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1, request.getParameter("STUDENT_NAME"));
	pstmt.setString(2, request.getParameter("STUDENT_ADDR"));
	pstmt.setString(3, request.getParameter("STUDENT_PHONE"));
	pstmt.setString(4, request.getParameter("STUDENT_BIRTH"));
	pstmt.setString(5, email);
	pstmt.setString(6, request.getParameter("STUDENT_ID"));
	pstmt.setString(7, request.getParameter("STUDENT_PW"));
	
	pstmt.executeUpdate();
	
	%>
	<script type="text/javascript">
		alert("수강생등록이 완료 되었습니다.");
		location='select.jsp';
	</script>
	<%
} catch (Exception e) {
	%>
	<script type="text/javascript">
		alert("수강생등록이 실패 되었습니다.");
		history.back();
	</script>
	<%
} finally {
	try {
		if(con != null) con.close();
		if(st != null) st.close();
		if(pstmt != null) pstmt.close();
		if(rs != null) rs.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
}

%>