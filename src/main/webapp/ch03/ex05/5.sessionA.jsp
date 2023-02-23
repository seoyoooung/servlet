<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %> 
<a href='5.main.jsp'>main</a>
<%
	session.setAttribute("user", new User("최한석", 12));
%> <%--현재 페이지에서 준비한것을 session scope로 만든다/.--%>
<p><%= session.getAttribute("user") %></p> <%--session 불러옴--%>