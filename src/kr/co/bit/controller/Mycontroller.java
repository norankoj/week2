package kr.co.bit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bit.day4.MemberVO;


public class Mycontroller extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);

	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setCharacterEncoding("UTF-8");
	System.out.println("working");
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String zip1 = request.getParameter("zip1");
	String zip2 = request.getParameter("zip2");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String tool = request.getParameter("tool");
	String project = request.getParameter("project");
	String[] langs = request.getParameterValues("lang");
	String[] temp = {"","","",""};
	for(String index : langs){
		int idx = Integer.parseInt(index);
		temp[idx] = index;
	}
	//MemberVO 데이터 클래스를 만들어서 인스턴스를 하나 생성
	MemberVO vo = new MemberVO();
	vo.setId(id);
	vo.setPw(pw);
	vo.setName(name);
	vo.setEmail(email);
	vo.setZip1(zip1);
	vo.setZip2(zip2);
	vo.setAddr1(addr1);
	vo.setAddr2(addr2);
	vo.setTool(tool);
	vo.setProject(project);
	vo.setLang(temp);
	//out.print(vo);
	request.setAttribute("vo", vo);
	RequestDispatcher rd = request.getRequestDispatcher("./MVC/home.jsp");
	rd.forward(request, resp);
	//response.sendRedirect("storage.jsp");
	}
}
