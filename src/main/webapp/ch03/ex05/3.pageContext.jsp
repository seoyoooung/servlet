<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import = 'ch03.ex05.User' %>
<%
	pageContext.setAttribute("user", new User("최한석",12));
	User user = new User("한아름", 42);
%> 
<%= pageContext.getAttribute("user") %>
<%= user %>

<%-- 
4.5줄 공통점은 : 유저 정보를 출력한다.
차이점은 attribute로써 출력하고, 유저로써 출력한다는 차이점이 있다.
--%>