<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%-- 수정 api가 준비되어 있지 않다 -> 수정 : 지우고 다시 만든다.(머리속에서 기억을 이어서) = 덮어쓰기 --%>
<a href='main.html'>메인</a>
<%
	Cookie cookie = new Cookie("age", "34");
	response.addCookie(cookie);
%>