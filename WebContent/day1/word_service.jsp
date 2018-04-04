<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 선언파트 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Word Service</title>
</head>
<body>

	<h1>
		<!-- 여는태그 -->
		<%
		    //스크립트릿 
			//격언 5개를 마나들어서 접속하는 클라이언트에게 하나를 선택해서 보여주는 코드작성
			// 클라이언트 브라우저에 연결하는 스트림을 가져와야함 소켓프로그래밍 

			String[] words = { "연습만이 살 길이다.", "정리하지 않은 인풋은 아웃풋을 만들지 못한다.", "자신의 페이스로 전진", "나그네는 길에서도 쉬지 않는다.",
					"방향성이 없는 배는 목적지에 도달 할 수 없다." };
			Random r = new Random();
			int index = r.nextInt(words.length);
			out.print(words[index]); 
		%>
	</h1>
	<!-- 닫는태그 -->

</body>
</html>