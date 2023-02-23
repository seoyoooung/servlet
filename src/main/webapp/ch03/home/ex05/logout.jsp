<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%-- 메인에서 로그아웃 눌렀을때를 작업하자. --%>
<%
	session.invalidate();
%>
	<c:redirect url = 'main.jsp'/>


<%-- 내 답안
<jsp:forward page = 'main.jsp'/>
<%
	session.invalidate();
%>
--%>