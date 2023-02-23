<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	response.sendRedirect("1.b.jsp");
%> 

<%-- http://localhost/servlet/ch03/ex04/1.b.jsp   url을 1.a.jsp로 바꿔봐도 다시 b로간다.

A도 집어넣고 "1.b.jsp"도 넣는다.

A와 B로 이동할때 클라이언트가 끼어드는 것이 forward와 다른점이다. --%>