<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구구단 프로그래밍 연습</title>
</head>
<body>
	<%
		for (int j = 0; j < 8; j++) {
			int dan = j + 2;
			for (int i = 0; i < 9; i++) {
				System.out.print(dan + "*" + (i + 1) + "=" + (dan * (1 + i)) + "\n");
			}
		}

		/* 
		//고정 단수를 재거 
		int dan=2;
		for(int i=0; i<9; i++){
			out.print(dan+"*"+(i+1)+"="+(dan*(1+i))+"<br>");
		}  */

		/* 
		//2. 고정 숫자를 제거
		for(int i=0; i<9; i++){
			out.print("2*"+(i+1)+"="+(2*(1+i))+"<br>");
		}
		 */
		/*
		//1. 위에서 반복제거
		out.print("2*1=2<br>");
		out.print("2*2=4<br>");
		out.print("2*3=6<br>");
		out.print("2*4=8<br>");
		out.print("2*5=10<br>");
		out.print("2*6=12<br>");
		out.print("2*7=14<br>");
		out.print("2*8=16<br>");
		out.print("2*9=18<br>"); */
	%>
</body>
</html>