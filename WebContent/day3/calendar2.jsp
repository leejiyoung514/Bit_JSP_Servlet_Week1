<%@page import="java.util.Arrays"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>달력</title>
<style type="text/css">
	.sun {
		color : red;
	}
	
	.sat {
		color : blue;
	}
	
	table {
		width: 200px;
		border-collapse: collapse;
		border : 1px solid black;
		text-align: center;
	}
	td {
		border : 1px solid black;
	}
</style>
</head>
<body>
<%
	String[] days = new String[42];
	Arrays.fill(days, "");
	int year = Integer.parseInt(request.getParameter("year"));
	int month = Integer.parseInt(request.getParameter("month"));
	
	Calendar cal = Calendar.getInstance();
	year = year==0?cal.get(Calendar.YEAR):year;
	month = month==0?cal.get(Calendar.MONTH)+1:month;
	cal.set(year,month-1,1);
	
	int day = 1;
	int lastDay = 
			cal.getActualMaximum(Calendar.DAY_OF_MONTH);// cal로 부터 취득
	int space = cal.get(Calendar.DAY_OF_WEEK)-1; // cal로 부터 취득
	for(int i=0;i<lastDay;i++) {
		days[space+i] = String.valueOf(day++);
	}
	
%>
<table>
	<tr><td colspan="7"><%=year%>년 <%=month%>월</td></tr>
	<tr><td class="sun">일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td class="sat">토</td></tr>
	<%
		StringBuffer sb = new StringBuffer();
		int count = 0;
		int rep = space==6?6:5;
		for(int i=0;i<rep;i++){
			sb.append("<tr>");
			for(int j=0;j<7;j++){
				String attr = "";
				if(j==0){
					attr = "class=\"sun\"";
				} else if(j==6){
					attr = "class=\"sat\"";
				}
				sb.append("<td "+attr+">");
				sb.append(days[count++]);
				sb.append("</td>");
			}
			sb.append("</tr>");
		}
		out.print(sb.toString());
	%>
	
</table>
</body>
</html>