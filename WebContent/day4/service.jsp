<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.bit.day4.FileData"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>서비스 페이지</title>
</head>
<body>
<%

 FileData fds = new FileData(); //객체를 생성 했음 
/*//Date date = new Date(); 
Date date = fds.getDatetime();
session.setAttribute("date", date);
response.sendRedirect("result.jsp"); */

String path = application.getRealPath("WEB-INF/file/Abc1115.txt");
 
ArrayList list = fds.getFileData(path);
session.setAttribute("list", list);
response.sendRedirect("result.jsp");

%>
</body>
</html>