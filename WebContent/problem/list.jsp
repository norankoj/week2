<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.bit.day3.Good"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기사 데이터 리스트</title>
<style type="text/css">
table {
	width: 800px;
	border-collapse: collapse;
	border: 1px solid black;
	text-align: center;
}

td {
	border: 1px solid black;
}
</style>
</head>
<body>



	<%
		//리스트 가져오기
		List<Good> list = (ArrayList)session.getAttribute("text");
	%>
	<table>
		<tr>
			<td>학번</td>
			<td>이메일</td>
			<td>국어점수</td>
			<td>영어점수</td>
			<td>수학점수</td>
			<td>과학점수</td>
			<td>역사점수</td>
			<td>총점</td>
			<td>담임코드</td>
			<td>성취도</td>
			<td>지역코드</td>
		</tr>



	
	<%
		//100개 출력
		for (int i = 0; i < 100; i++) {
	%>

	
	
		<tr>
			<td><%=list.get(i).getCode()%></td>
			<td><%=list.get(i).getMail()%></td>
			<td><%=list.get(i).getKorea()%></td>
			<td><%=list.get(i).getEnglish()%></td>
			<td><%=list.get(i).getMath()%></td>
			<td><%=list.get(i).getScience()%></td>
			<td><%=list.get(i).getHistory()%></td>
			<td><%=list.get(i).getSum()%></td>
			<td><%=list.get(i).getTeacher()%></td>
			<td><%=list.get(i).getAchievement()%></td>
			<td><%=list.get(i).getArea()%></td>
		</tr>
		<%
			}
		%>




	</table>


</body>
</html>