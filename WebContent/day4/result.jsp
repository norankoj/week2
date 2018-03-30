<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터페이지</title>
</head>
<body>
<% 
/* Date date =(Date)session.getAttribute("date");
String now = String.format("%s:%s:%s", date.getHours(), date.getMinutes(),date.getSeconds());
//String now2 = date.getHours()+":"+ date.getMinutes()+":"+date.getSeconds();
out.print(now); */

ArrayList list = (ArrayList)session.getAttribute("list");
out.print(list.size());
%>
</body>
</html>