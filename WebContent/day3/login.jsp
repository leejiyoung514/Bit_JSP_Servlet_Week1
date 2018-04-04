<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 

 1.아이디와 패스워드로 입력할 수 있도록 UI를 구성하시오.
 가. 처리페이지는 login_check.jsp 
 나. 성공했을 경우 '반갑습니다'라는 문자열을 브라우저에 출력
 다. 실패했을 경우 입력페이지로 이동해서'해당하는 회원이 없습니다'라는 문자열 출력
    -테스트 아이디:admin 테스트 비밀번호:1234
    
-->
<%
String code=request.getParameter("code");
if(code==null){
	code="";
}else{
	code=code.equals("0")?"해당하는 회원이 없습니다.":"";
}




%>
<form action="login_check.jsp" method="post">
 ID<input type="text" name="id"><br>
 PW<input type="text" name="pw" ><br>
 <input type="submit" value="로그인">
 <%=code%>
</form>
</body>
</html>