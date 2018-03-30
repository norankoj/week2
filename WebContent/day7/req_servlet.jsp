<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>서블릿 호출</title>
</head>
<body>
<form action="../myservlet" method="post">  <!--/myservlet이렇게 하고 실행하면 호스트번호다음 바로 실행 우리가 필요한것 week2  -->

<input type="text" name="id">
<input type="submit" value="서블릿 호출"><!--myservlet 이렇게만 하면 day6까지 됩니다. 우린 week2만 필요한데! 그래서 한칸 위에 ../myservlet 이렇게! -->
</form>

</body>
</html>