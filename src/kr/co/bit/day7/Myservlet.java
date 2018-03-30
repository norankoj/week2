package kr.co.bit.day7;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Myservlet extends HttpServlet{

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		System.out.println("get");
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

	
	System.out.println("post");
	resp.setContentType("text/html");
	String id = req.getParameter("id"); //req쓰는 이유 jsp와 달리 위에 메소드 파라미터가 정의해준 이름으로 호출한다.!
	System.out.println(id);
	PrintWriter out = resp.getWriter();//스트림
	out.print("<html><body><h1>Hello servlet</h1></body></html>");
	ServletConfig config = getServletConfig();
	String data = config.getInitParameter("data");
	ServletContext ctx =getServletContext();
	String dbinfo= ctx.getInitParameter("dbinfo");
	System.out.println(dbinfo);
	System.out.println(data);
//	ServletConfig sc = this.getServletConfig();
//	String data = sc.getInitParameter("data");
//	System.out.println(data);
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub

		System.out.println("destory");
	}
	
}

