package kr.co.bit.day4;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

public class FileData {

	public Date getDatetime() {
		Date date =null;
		date = new Date();
		return date;
	}
	
	public ArrayList<StudentVO> getFileData (String path) throws IOException  {
		
		ArrayList<StudentVO> list = new ArrayList<StudentVO>();
		
		File file = new File(path);
		if(file.exists()) {
		System.out.println(file.getName());
		FileReader fr =new FileReader(file);
		BufferedReader br = new BufferedReader(fr);
		
		String line="";
		while (true) {
			if(line==null) {
				break;
			}
			list.add(this.splitData(line));
			System.out.println(line);
		}
		fr.close();
		br.close();
		}
		
		
		
		return list;
	}
	
	private StudentVO splitData(String line) {
		StudentVO vo = null;
		return vo;
	}
	
}
