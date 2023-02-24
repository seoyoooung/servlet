<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%-- 덮어쓰기 . 현재값에 expire값을 0을 준다 = 태어나자마자 사라진다.--%>
<a href='main.html'>메인</a>
<%
	Cookie cookie = new Cookie("age", ""); //어차피 삭제될거니까 cookie value주지 않는다. 
	
	//cookie value가 없다고 age가 완전히 사라진것이 아니다. 없애보자.
	//유효기간 expire값 정하기 => cookie의 최대 수명을 초 단위로 반환합니다. 0일 경우 생성되자마자 죽는다.
	//기본 expire 값은 session이다. session이 끝날때까지 저장된다.
	cookie.setMaxAge(0);
	
	//0살짜리 cookie를 집어넣는다.
	response.addCookie(cookie);
%>

