<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 체크</title>
</head>
<body>
<% 
String id=request.getParameter("id");
String pw=request.getParameter("pw");
boolean flag=false;

if(id.equals("admin")&&pw.equals("1234")){
	flag=true;
}
if(flag){
	out.print("반갑습니다. ");
	session.setAttribute("member", id); //hashmap put이지만setAttribute/ memeber 넣으면 id값이 나옴 문자열 기본 
}else{
	response.sendRedirect("login.jsp?code=0");
}

%>

</body>
</html>