package kr.co.bit.day7;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Yourservlet  extends HttpServlet{
	
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
	}

	private void destory() {
		// TODO Auto-generated method stub

		System.out.println("destory");
	}

}
