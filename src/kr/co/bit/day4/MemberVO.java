package kr.co.bit.day4;

import java.util.Arrays;

public class MemberVO {

	private String id;
	private String pw;
	private String name;
	private String zip1;
	private String zip2;
	private String email;
	private String addr1;
	private String addr2;
	private String[] lang;
	private String tool;
	private String project;

	public MemberVO() {
	}

	

	public MemberVO(String id, String pw, String name, String zip1, String zip2, String email, String addr1,
			String addr2, String[] lang, String tool, String project) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.zip1 = zip1;
		this.zip2 = zip2;
		this.email = email;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.lang = lang;
		this.tool = tool;
		this.project = project;
	}



	public String[] getLang() {
		return lang;
	}



	public void setLang(String[] lang) {
		this.lang = lang;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getZip1() {
		return zip1;
	}

	public void setZip1(String zip1) {
		this.zip1 = zip1;
	}

	public String getZip2() {
		return zip2;
	}

	public void setZip2(String zip2) {
		this.zip2 = zip2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}



	public String getTool() {
		return tool;
	}

	public void setTool(String tool) {
		this.tool = tool;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}



	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", zip1=" + zip1 + ", zip2=" + zip2 + ", email="
				+ email + ", addr1=" + addr1 + ", addr2=" + addr2 + ", lang=" + Arrays.toString(lang) + ", tool=" + tool
				+ ", project=" + project + "]";
	}

	
}
