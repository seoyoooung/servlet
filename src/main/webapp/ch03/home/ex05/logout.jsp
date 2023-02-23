<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<jsp:forward page = 'main.jsp'/>
<%
	session.invalidate();
%>
<%-- 로그아웃시 들리지말고 메인으로 바로 가기. --%>