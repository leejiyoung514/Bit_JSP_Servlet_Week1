<%@page import="kr.co.bit.day3.FileMethod"%>
<%@page import="kr.co.bit.day3.Data"%>
<%@page import="java.io.Reader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 이용</title>
</head>
<body>
<%
        ArrayList<Data> d=new ArrayList<Data>();

		String path = application.getRealPath("WEB-INF/file/Abc1115.txt"); //전체적인 내용을 다 파악하고 있는 객체가 application 객체임 
		File file = new File(path); //
	
		FileMethod fileMethod=new FileMethod();
		d= fileMethod.read(file);
		  
		session.setAttribute("member", d);
		response.sendRedirect("list.jsp");
	

		
%>
	
</body>
</html>