<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구구단 작성</title>
</head>
<body>
<%

for(int dan=2; dan<10; dan++){
 for(int num=1; num<10; num++){ 
    /*  out.println(dan+" * "+num+" = "+(dan*num)+"    "); */
     out.println(String.format("%d*%d=%d&nbsp;&nbsp;", dan, num, dan*num)); /* 한칸 뛰는거 &nbsp; */
 }out.println("<br>");
}
%>
<br>
<%
for(int dan=2; dan<10; dan++){
 for(int num=1; num<10; num++){ 
    /*  out.println(dan+" * "+num+" = "+(dan*num)+"    "); */
     out.print(String.format("%d*%d=%d<br>", dan, num, dan*num)); 
 }out.println("<br>");
}
%>

</body>
</html>