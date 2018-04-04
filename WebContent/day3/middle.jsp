<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>두번째페이지</title>
</head>
<body>

<% 
String value=request.getParameter("select");
//System.out.println(value);
//response.sendRedirect("back.jsp");//값이 null나와서 다른 방법을 사용해야함 request라는 커넥션이 3번째까지 이어지지 않음 RequestDispatcher메소드를 사용해야함

String url="error.jsp";
if(value.equals("0")){
	String id=(String)session.getAttribute("member"); 
	if(id!=null){
	url="../day2/poll.jsp";  //여기서 로그인체크 하기 위해서 어떤정보가 필요한지? 로그인을 했다는 정보가 필요
	}else{
		url="./login.jsp";
    }
}else if(value.equals("1")){
	url="./request_Calendar.jsp";
}else if(value.equals("2")){
	url="./login.jsp";
}

RequestDispatcher rd=request.getRequestDispatcher(url);
rd.forward(request, response);   //이방법은 무작정사용하는 것이 아니라 1~2페이지정도
%>

</body>
</html>