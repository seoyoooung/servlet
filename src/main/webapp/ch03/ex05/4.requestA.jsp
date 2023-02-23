<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import = 'ch03.ex05.User' %>
<%
	request.setAttribute("user", new User("최한석", 12));
%>
<jsp:forward page='4.requestB.jsp'/>

<%-- 
A에서 유저 데이터를 만든게 B->C로 건너서 출력된다.

여러 페이지를 건너서 출력해야 한다면 request scope로 attribute를 준비하면 된다.
--%>