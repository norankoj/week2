<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자바스크립트 연습</title>
<script type="text/javascript">
function welcome(){
	document.write("HelloWorld! javascript!"); //이랗게 하면 화면에 안떠 호출을 안했기 떄문이지 호출은 밑에서
	alert("message box");
}

function smile(){
	document.write("하하하");
	alert("너무 웃진마");
	
}

function ex01(){
	//데이터타입이 하나다 
	//브라우저에서 알아서 해석한다
	var name= "admin";
	var kor=30;
	var average=30.2
}

function ex02(){
	for(var i=0;i<10;i++){
		document.write(i+1);
	}
	sum(10,20); //다른 함수 호출 어디서나 가능
	var total = sum2(11,22);
	alert(total+" from return funtion");
}
function sum(a,b){ //피라미터 변수 앞에 var 안붙인다.
	var result=a+b;
	alert(result);
}
function sum2(a,b){
	return a+b;
}

function connectServer(){
	var xhp = new XMLHttpRequest();
	xhp.onreadystatechange=function(){//on이 붙었으니까 이건 핸들링 이건 이벤트야 
		if(this.readyState==4&&this.status==200){
			var text = this.responseText;
			alert(text);
		}
	} 
	xhp.open("GET", "server.jsp", true);
	xhp.send();
}
</script>
</head>
<body>
<button onclick="connectServer()">서버접속</button>
<button onclick="welcome()">자바스크립트실행</button>
<button onclick="smile()">smile</button>
<button onclick="ex02()">ex02</button>

</body>
</html>