<%@page import="kr.co.bit.day4.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ID검사</title>
<script type="text/javascript">
function work_close(){
	var userid = document.getElementById("id").value; //체크한 아이디를 다시 불러워서 원래 아이디칸에 넣을꺼야
	opener.document.getElementById("inputid").value=userid;//오프너를 통해 보내는게 가능하다 여긴 sendRei이런게 안된까
	opener.document.getElementById("isIdcheck").value=true;
	
	self.close();
}
</script>
</head>
<body>
<%
String id = request.getParameter("point");


String code = request.getParameter("code");
if(id==null){
	id="";
}
if(code!=null){
	if(code.equals("0")){
		out.print("사용이 가능합니다.");
	}else if(code.equals("1")){
		out.print("사용이 불가능합니다.");
	}
}else if(code==null){
	code="";
}


%>
<%-- <%
MemberVO vo = (MemberVO)session.getAttribute("vo");
String id = request.getParameter("id");
if(vo==null){
	vo.setId("");
}
%> --%>
ID check 
<form action="serch_id.jsp">
아이디<input type="text" name="id" value="<%=id %>" id="id"><!-- 여기 아이디값이 위로가는거야  -->
<input type="submit" value="아이디 확인" id="id">
<button onclick="work_close()">아이디사용</button>
</form>
</body>
</html>