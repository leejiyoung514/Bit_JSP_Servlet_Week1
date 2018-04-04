<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>더하는 페이지</title>
</head>

<style type="text/css">
input{
         text-align: center;
          color: gray;
}

#result{
         color: green;
}
</style>



<body>

<% 
String num1="";
String num2="";
String op= "";

String result= request.getParameter("result");

if(result==null){
	result="";   //null값으로 출력되게 하지 않으려면
}else{
	op=request.getParameter("op");
	num1=request.getParameter("num1");
	num2=request.getParameter("num2");
}
%>

<%-- <%
   String n4 = request.getParameter("result");
   if(n4==null){
   n4= "";
   }
   String n1 = request.getParameter("n1");
   if(n1==null){
      n1= "";
      }
   String s = request.getParameter("s");
   if(s==null){
      s= "";
      }
   String n2 = request.getParameter("n2");
   if(n2==null){
      n2= "";
      }

%> --%>

<form action="calcu.jsp" method="post" >   <%-- <% out.print(num1);%> --%>
    <input type="text" name="num1" size="5" value="<%=num1%>">   
    <input type="text" name="op" size="1" value="<%=op%>">  
     <input type="text" name="num2" size="5" value="<%=num2%>">=     
     <input type="text" name="result" size="5" id="result" value="<%=result%>" >  
     <input type="submit" value="계산">
</form>


<!-- <form action="calcu.jsp" method="post">
    <input type="text" name="num1">+                                             
     <input type="text" name="num2">
     <input type="submit" value="계산">
</form>
 -->
</body>
</html>