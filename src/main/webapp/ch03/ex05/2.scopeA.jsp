<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	pageContext.setAttribute("one", "페이지");
	request.setAttribute("two", "리퀘스트");
	session.setAttribute("three", "세션2");
	application.setAttribute("four", "애플리케이션2");
%>

<c:redirect url='1.scopeB.jsp'/>

<%--
attribute name이 중복이 되면 덮어쓰기한다. three, four
1.scope.jsp의 three, four를 덮어쓴다.
--%>