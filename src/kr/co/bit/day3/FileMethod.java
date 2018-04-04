package kr.co.bit.day3;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;

public class FileMethod {

	public ArrayList<Data> read(File file) throws IOException {
		Reader fr = new FileReader(file);
		BufferedReader br = new BufferedReader(fr);

		ArrayList<Data> d = new ArrayList<Data>();

		while (true) {
			String line = br.readLine();
			if (line == null) {
				break;
			}

			String num = line.substring(0, 6); // 6
			String email = line.substring(6, 10); // 4
			String korean = line.substring(10, 13); // 3
			String English = line.substring(13, 16); // 3
			String math = line.substring(16, 19); // 3
			String science = line.substring(19, 22); // 3
			String society = line.substring(22, 25);// 3
			String score = line.substring(25, 28); // 3
			String tcode = line.substring(28, 29); // 1
			String ach = line.substring(29, 30); // 1
			String acode = line.substring(30, 31); // 1

			d.add(new Data(num, email, korean, English, math, science, society, score, tcode, ach, acode));
  	
		}
		
		return d;
	}

}
