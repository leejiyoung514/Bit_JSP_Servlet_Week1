<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UI Data 처리</title>
</head>
<body>
<% 
   String r1=request.getParameter("r1");
   String[] hobby=request.getParameterValues("hobby"); 
 /*   String hobby=request.getParameter("hobby"); 결과값이 하나만 나옴 */
   String month=request.getParameter("month");
   String comment=request.getParameter("comment");
 
   out.print(r1+","+Arrays.toString(hobby)+","+month+","+comment);
   /*하나의 값으로 여러개를 저장 하지만 ,지정을 안해서 [Ljava.lang.String;@49f669bf로 출력
   배열이 가지고 있는 값을 자동으로 뽑아내는 건 Arrays 클래스들 사용해서 다 출력  */
%>

</body>
</html>