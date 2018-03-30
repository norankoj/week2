<%@page import="java.util.Iterator"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>업로드</title>
</head>
<body>
<%
long maxSize=50*1024*1024;
long holdSize=maxSize/10; //메모리에서 최대로 핸들링할 사이즈가 얼마일까요 (버퍼처럼, 찰때까지 기다렸다가 holdsize만큼 차면 보내주는 그런개념이래)
String path= "d:\\dev\\upload\\";
DiskFileItemFactory factory = new DiskFileItemFactory();
factory.setDefaultCharset("UTF-8");//인코딩
factory.setRepository(new File(path));//파일을 만들고 그 경로랑 똑같이..?
		factory.setSizeThreshold((int)holdSize);
ServletFileUpload upload = new ServletFileUpload(factory);
upload.setSizeMax(maxSize);
upload.setHeaderEncoding("UTF-8");
List<FileItem> items =upload.parseRequest(new ServletRequestContext(request)); //태그분석해서 리스트에 넣어준다
Iterator<FileItem> i= items.iterator();//순서관계없이 꺼낼 수 있는게 iterator 
while(i.hasNext()){ //hasnext로 하나씩 꺼냅니다.
	FileItem item =(FileItem)i.next();
	if(item.isFormField()){ //isFormField는 파일인지 아닌지 구분하는 것
		String name =item.getFieldName();
	String value = item.getString();
	System.out.println(name+"/"+value);
	}else{
		String fileName = item.getName();
		System.out.println(fileName);
		int index = fileName.lastIndexOf("\\");//출력하면 "\"됩니당
		fileName = index!=-1?fileName.substring(index+1):fileName; //-1은 \\을 찾을 수 없습니다. !썼으니 찾으면 이뜻
		System.out.println(fileName);
		File file = new File(path+fileName);
		item.write(file);//업로드 
	}
}
out.print("success");
%>
</body>
</html>