<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a> 
<%-- cookie 생성은 생성자를 사용한다. --%>
<%	//쿠키 객체를 만들고 그것을 리스펀스에 담으면 끝.
	Cookie cookie1 = new Cookie("userName", "john"); //쿠키 value의 타입은 (text)string이다.
	Cookie cookie2 = new Cookie("age","32");
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>
<%-- 기본 쿠키의 ID = JSESSIONID  

생성 누르면 response안에 있던 cookie는 개발자도구>application>cookies 가면 생성된다.
path는 url에서 context path 이하의 path를 저장하고 있다.
기본 expire 값은 session이다. session이 끝날때까지 저장된다.
--%>