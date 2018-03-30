<%@page import="kr.co.bit.day4.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script type="text/javascript">
function id_check(){
	//alert("success");
	var checkid= document.getElementById("userid").value;
	window.open("id_check.jsp?id="+checkid,"","width=300px height=200px");//첫번째 칸 호출 페이지,둘쨰이름,셋쨰크기
	return false; // 원래 가려고했던 페이지로 안가고 우리가 지금 열어주는 곳으로 갑니당.
}
function check_empty(){
	var val = document.getElementById("pw").value;
	if(val==""){
		alert("empty~");
	}
	return false
}
function checkbox_check(){
	var eles = document.getElementsByClassName("langs"); /* 변 수 이름뒤에 s 붙으면 배열 */
	alert(eles.length); /*  지금 이건 langs안에 배열이 잘 들어갔는지 크기가 4가 맞는지 체크 !!*/
	var count=0;
	for(var i=0;i<eles.length;i++){
		if(eles[i].checked){
			//alert((i+1)+checked);
			count++;
		}
	}
	alert("selected count is"+count)
	return false;
}

function select_check(){
	var val=document.getElementById("id").value;
	if(val=="0"){
		alert("프로젝트 경험을 선택해 주세요");
	}
	return false;
}
function final_check(){
	var val= document.getElementById("isIdcheck").value;
	alert(val)
	return false;
}

function zip_check(){
	var checkzip1 = document.getElementById("userzip1").value;
	var checkzip2 = document.getElementById("userzip2").value;
	window.open("zip_check.jsp?zip1="+checkzip1+"&zip2="+checkzip2,"","width=300px height=200px");
	return false;
}

</script>
</head>
<body>
<%
MemberVO vo = (MemberVO)session.getAttribute("vo");
if(vo==null){
	vo= new MemberVO(); //공백이오도록 하라는 말은 아무런 값이 찍히지 않도록 객체 생성 
	vo.setId("");
	vo.setPw("");
	vo.setName("");
	vo.setEmail("");
	vo.setZip1("");
	vo.setZip2("");
	vo.setAddr1("");
	vo.setAddr2("");
	vo.setTool("0");
	vo.setLang(new String[]{"0","","",""});
	vo.setProject("1"); //0,0,1 이렇게 하면  애초 체크하도록 격려ㅋㅋㅋ
}
%>

<form action="process_regist.jsp" method="post">
<table>
	<tr><td>아이디</td>
	<td><input type="text" name="id" id="userid" value="<%=vo.getId()%>" readonly="readonly" onclick="id_check()"> </td><td></td><td>
	<button onclick="return id_check()">id check</button></td>
	<td><input type="hidden" name="isIdcheck" value="false" id="isIdcheck"></td></tr>
	<tr><td>패스워드</td>
	<td><input type="password" name="pw" id="pw" value="<%=vo.getPw() %>"></td><td></td><td>
	<button onclick="return check_empty()">빈칸체크</button></td><td></td><td></td></tr>
	<tr><td>이름</td><td><input type="text" name="name"value="<%=vo.getName()%>"></td><td></td><td></td></tr>
	<tr><td>우편번호</td>
		<td><input type="text" name="zip1" id="userzip1" size="3" value="<%=vo.getZip1()%>" readonly="readonly" onclick="zip_check()">-
		<input type="text" name="zip2" id="userzip2"size="3" value="<%=vo.getZip2()%>" readonly="readonly" onclick="zip_check()"></td>
		<td><button onclick=" return zip_check()">zip check</button></td><td></td></tr>
		
	<tr><td>주소1</td><td><input type="text" name="addr1" size="30" value="<%=vo.getAddr1()%>"></td><td></td><td></td></tr>
	<tr><td>주소2</td><td><input type="text" name="addr2" size="30" value="<%=vo.getAddr2()%>"></td><td></td><td></td></tr>
	
	<tr><td>이메일</td><td><input type="text" name="email" value="<%=vo.getEmail()%>"></td><td></td><td></td></tr>
	<tr><td>사용언어</td><td>
		<input type="checkbox" name="lang" class="langs" value="0" <%=vo.getLang()[0].equals("0")?"checked":"" %>>자바
		<input type="checkbox" name="lang" class="langs" value="1" <%=vo.getLang()[1].equals("1")?"checked":"" %>>파이썬
		<input type="checkbox" name="lang" class="langs" value="2" <%=vo.getLang()[2].equals("2")?"checked":"" %>>C++
		<input type="checkbox" name="lang" class="langs" value="3" <%=vo.getLang()[3].equals("3")?"checked":"" %>>C
		
		</td><td><button onclick="return checkbox_check()">체크박스확인</button></td><td></td></tr>
	<tr><td>사용툴</td><td>
		<input type="radio" name="tool" value="0" <%=vo.getTool().equals("0")?"checked":"" %>>이클립스
		<input type="radio" name="tool" value="1" <%=vo.getTool().equals("1")?"checked":"" %>>Visual Studio
		<input type="radio" name="tool" value="2" <%=vo.getTool().equals("2")?"checked":"" %>>Xcode
		<input type="radio" name="tool" value="3" <%=vo.getTool().equals("3")?"checked":"" %>>notepad
		</td><td></td><td></td></tr>
	<tr><td>프로젝트경험</td>
		<td>
		<select name="project" id="id">
			<option value="0">프로젝트 경험
			<option value="1"<%=vo.getProject().equals("1")?"selected":"" %>>1~2회
			<option value="2"<%=vo.getProject().equals("2")?"selected":"" %>>3~4회
			<option value="3"<%=vo.getProject().equals("3")?"selected":"" %>>5~6회
			<option value="4"<%=vo.getProject().equals("4")?"selected":"" %>>7회이상
		</select>
		</td><td><button onclick="return select_check()">select확인</button></td><td></td></tr>
	<tr>
		<td colspan="4"><input type="submit" value="가입" onclick="return final_check()"></td>
		
	</tr>
</table>	
</form>
</body>
</html>