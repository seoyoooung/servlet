<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	
	
	if(userId.equals("java") && password.equals("java") {
		
	}
%>
<%
	else {
%>
	<c:redirect url = 'login.jsp?msg=id password가 올바르지 않습니다.'/>
<%
	}
%>