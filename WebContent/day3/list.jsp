<%@page import="kr.co.bit.day3.Data"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>


table{
    text-align:center;
    border:1px solid gray;
}

</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기사 데이터 리스트</title>
</head>
<body>
	<!-- 파일의 리스트를 표 형식으로 출력 (1~100) -->


<% 
   ArrayList<Data> d=(ArrayList<Data>)session.getAttribute("member"); 
%>
	<table>


		<tr>
	        <td>학번</td>
			<td>이메일</td>
			<td>국어점수</td>
			<td>영어점수</td>
			<td>수학점수</td>
			<td>과학점수</td>
			<td>국사점수</td>
			<td>총점</td>
			<td>담임코드</td>
			<td>성취도</td>
			<td>지역코드</td>
		</tr>

<% for(int i=0; i<d.size(); i++){
out.print("<tr>");
out.print("<td>"+ d.get(i).getNum());
out.print("</td>");
out.print("<td>"+ d.get(i).getEmail());
out.print("</td>");
out.print("<td>"+ d.get(i).getKorean());
out.print("</td>");
out.print("<td>"+ d.get(i).getEnglish());
out.print("</td>");
out.print("<td>"+ d.get(i).getMath());
out.print("</td>");
out.print("<td>"+ d.get(i).getScience());
out.print("</td>");
out.print("<td>"+ d.get(i).getSociety());
out.print("</td>");
out.print("<td>"+ d.get(i).getScore());
out.print("</td>");
out.print("<td>"+ d.get(i).getTcode());
out.print("</td>");
out.print("<td>"+ d.get(i).getAch());
out.print("</td>");
out.print("<td>"+ d.get(i).getAcode());
out.print("</td>");
out.print("</tr>");
}%>

	</table>

</body>
</html>