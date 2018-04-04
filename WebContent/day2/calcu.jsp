<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계산</title>
</head>
<body>

<%

/* int temp1=Integer.parseInt(request.getParameter("num1")); */
/* String sign=request.getParameter("op"); */
/* int temp2=Integer.parseInt(request.getParameter("num2")); */

String temp1=request.getParameter("num1");
String temp2=request.getParameter("num2");
String op=request.getParameter("op");
double num1=Double.parseDouble(temp1);
double num2=Double.parseDouble(temp2);
double result=0;

/* int num1=Integer.parseInt(temp1);
int num2=Integer.parseInt(temp2);
int result=0; */

if(op.equals("+")){
    result=num1+num2;
}else if(op.equals("-")){
	  result=num1-num2;
}else if(op.equals("*")){
	  result=num1*num2;
}else if(op.equals("/")){
	result=num1/num2;
	 /*  result=Math.round(num1/num2); */
	  
}
/* if(op.equals("+")){
    result=num1+num2;
}else if(op.equals("-")){
	  result=num1-num2;
}else if(op.equals("*")){
	  result=num1*num2;
}else if(op.equals("/")){
	  result=num1/num2;
} */
String r2= String.format("%.2f",result);
String data=String.format("&%s=%s&%s=%s&%s=%s", "op",op,"num1",temp1,"num2",temp2);
//System.out.println(data);

response.sendRedirect("input_number.jsp?result="+r2+data);
/* response.sendRedirect("input_number.jsp?result="+result+data); */
// result가 변수로 들어가면 문자열을 연결
//-----------------------------------------------------------------//
//response.sendRedirect("test.jsp?result="+result+"&num1="+num1+"&num2="+num2+"&op="+op);//

/*덧셈만 
String temp1=request.getParameter("num1");
String temp2=request.getParameter("num2");
int result=Integer.parseInt(temp1)+Integer.parseInt(temp2);
out.print(result); */

%>
</body>
</html>