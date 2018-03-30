<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우편번호</title>
<script type="text/javascript">
function work_close(){
	var userzip1 = document.getElementById("zip1").value; 
	opener.document.getElementById("inputzip1").value=userzip1;
	var userzip2 = document.getElementById("zip2").value; 
	opener.document.getElementById("inputzip2").value=userzip2;
	
	self.close();
}

</script>
</head>
<body>
<%
String zip1 = request.getParameter("zip1");
String zip2 = request.getParameter("zip2");

%>
우편번호 검색
<form action="">

<input type="text" name="zip1" id="zip1">
-<input type="text" name="zip2" id="zip2">
<input type="submit" value="우편번호 확인" id="zip" >
<button onclick="work_close()">우편번호 사용</button>
</form>

</body>
</html>