<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
 .per{
 text-align: right;
 }
 .color{
  color:red;
 }
 

/* #td1{
         
          
}
#td2{
         text-align: right;
          
}
#td3{
         text-align: right;
          
}
#td4{
         text-align: right;
          
}
#td5{
         text-align: right;
          
} */
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>투표처리</title>
</head>



<body>
<%!
/*  int[] votes=new int[5];  */ //바로 전역변수선언해서 하는건 좋지 않은 방법( 배열은 반드시 초기화해서 생성자에서 해야함)  
                          //어플리케이션 서버에서 생성자자에서 초기화를 하는 작업을 함 컨테이서
                          //인스턴스작업은 클래스에서 함 JSP가 어떻게 클래스화하는지?
    int[] votes=null;
    int total=0;      		  
    public void jspInit(){
    	votes=new int[5];
    	System.out.println("jsp instance create");
 }
    public void jspDestroy(){
    	System.out.println("jsp instance destroy");
    	System.out.println("resource free");
    	votes=null;
 }
%>

<%
   String value =request.getParameter("idol");
   if(value.equals("0")) {
	   votes[0]++;
   }else if(value.equals("1")){
	   votes[1]++;
   }else if(value.equals("2")){
	   votes[2]++;
   }else if(value.equals("3")){
	   votes[3]++;
   }else if(value.equals("4")){
	   votes[4]++;
   }
   
   total=votes[0]+votes[1]+votes[2]+votes[3]+votes[4];
   String[] percentages = {"0","0","0","0","0"};
 
   for(int i=0; i<5; i++){
	   float f=0;
	   if(votes[i]!=0){
	   f=(votes[i]/(float)total)*100;
       percentages[i]=String.format("%.2f",f);
	   }
	   //percentages[i]=String.format("%10.2f %%", Float.iInfinite(f)?"":f);
   }   
%>

<table>
   <tr><td>Q1.</td><td>아이돌 그룹 득표수</td><td></td><td></td><td></td></tr>
   <tr><td>1.</td><td>레드벨벳</td><td class="color"><%=votes[0]%></td><td class="per"><%=percentages[0]%>%</td><td></td></tr>
   <tr><td>2.</td><td>트와이스</td><td class="color"><%=votes[1]%></td><td class="per"><%=percentages[1]%>%</td><td></td></tr>
   <tr><td>3.</td><td>빅뱅</td><td class="color"><%=votes[2]%></td><td class="per"><%=percentages[2]%>%</td><td></td></tr>
   <tr><td>4.</td><td>워너원</td><td class="color"><%=votes[3]%></td><td class="per"><%=percentages[3]%>%</td><td></td></tr>
   <tr><td>5.</td><td>BTS</td><td class="color"><%=votes[4]%></td><td class="per"><%=percentages[4]%>%</td><td></td></tr>
   
  <%--  <tr><td>Q1.</td><td>아이돌 그룹 득표수</td><td></td><td></td><td></td></tr>
   <tr><td>1.</td><td>레드벨벳</td><td><%=votes[0]%></td><td></td><td></td></tr>
   <tr><td>2.</td><td>트와이스</td><td><%=votes[1]%></td><td></td><td></td></tr>
   <tr><td>3.</td><td>빅뱅</td><td><%=votes[2]%></td><td></td><td></td></tr>
   <tr><td>4.</td><td>워너원</td><td><%=votes[3]%></td><td></td><td></td></tr>
   <tr><td>5.</td><td>BTS</td><td><%=votes[4]%></td><td></td><td></td></tr> --%>

</table>
<a href="../day3/logout.jsp">로그아웃</a>

</body>
</html>