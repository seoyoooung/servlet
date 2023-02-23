<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href = '5.main.jsp'>main</a>
<%
	session.invalidate(); 
%> <%--  invalidate => 무효화하다.session 객체가 없어진다.(로그아웃 처리) --%>