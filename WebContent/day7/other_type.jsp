<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>다른타입의 jsp</title>
</head>
<body>
<%
/* int a = 10/0;
out.print(a); */

%>
<!-- MemberVO member= new MemberVO(); 이내용과 똑같 -->
<jsp:useBean id="member" class="kr.co.bit.day4.MemberVO" scope="request"></jsp:useBean><!--멤버객체가 만들어진다 위에설몀  -->
<%
member.setId("admin");
System.out.println(member.getId());

%>
<jsp:getProperty property="id" name="member"/>
<jsp:setProperty property="pw" name="member" value="1234"/>
<%
System.out.println(member.getPw());
/* session.setAttribute("member", member); */
//request.setAttribute("member", member); scope= requet를 해줫기에 주석처리 이렇게 해도 작동 
%>
<jsp:forward page="process.jsp">
<jsp:param value="data1" name="etc1"/>
<jsp:param value="data2" name="etc2"/>


</jsp:forward>

</body>
</html>