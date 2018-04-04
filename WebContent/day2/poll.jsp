<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문조사</title>
</head>


<body>
<!--
   아이돌 그룹 투표
   1.레드벨벳, 2.트와이스 3.빅뱅 4.워너원 5.BTS

 -->
<form action="../day2/process_poll.jsp" method="post">
    Q1. 좋아하는 아이돌 그룹 투표해주세요.<br>
    <input type="radio" name="idol" value="0">레드벨벳
    <input type="radio" name="idol" value="1">트와이스
    <input type="radio" name="idol" value="2">빅뱅
    <input type="radio" name="idol" value="3">워너원
    <input type="radio" name="idol" value="4">BTS<br>
    
    <input type="submit" value="투표">

<!-- <input type="radio" name="r1" value="레드벨벳">레드벨벳
    <input type="radio" name="r1" value="트와이스">트와이스
    <input type="radio" name="r1" value="빅뱅">빅뱅
    <input type="radio" name="r1" value="워너원">워너원
    <input type="radio" name="r1" value="BTS">BTS<br>
    <input type="submit" value="투표"> -->

</form>

</body>

</html>