<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.bit.day3.Good"%>
<%@page import="java.io.Reader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일이용</title>
</head>
<body>
	<%
		//파일 불러오기
		String path = application.getRealPath("WEB-INF/file/Abc1115.txt");
		File file = new File(path);
		//파일 읽기준비
		Reader fr = new FileReader(file);
		BufferedReader br = new BufferedReader(fr);
		//리스트 생성
		List<Good> list = new ArrayList<Good>();
		//객체 생성
		Good g = new Good();
		String str = "";
		while (true) {
			str = br.readLine();
			if (str == null) {
				break;
			}
			g = new Good();
			g.setCode(str.substring(0, 6));
			g.setMail(str.substring(6, 10));
			g.setKorea(str.substring(10, 13));
			g.setEnglish(str.substring(13, 16));
			g.setMath(str.substring(16, 19));
			g.setScience(str.substring(19, 22));
			g.setHistory(str.substring(22, 25));
			g.setSum(str.substring(24, 27));
			g.setTeacher(str.substring(27, 28));
			g.setAchievement(str.substring(28, 29));
			g.setArea(str.substring(29, 30));

			//리스트 추가
			list.add(g);
		}
		//세션이용
		session.setAttribute("text", list);
		fr.close();
		br.close();
		response.sendRedirect("list.jsp");
	%>

</body>
</html>