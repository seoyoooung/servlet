<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li><%= request.getRequestURL() %>
	<li><%= request.getProtocol() %>
	<li><%= request.getServerName() %> 
	<li><%= request.getContextPath() %>
	<li><%= request.getRequestURI() %>
	<li><%= request.getQueryString() %>
	<li><%= request.getMethod() %>
</ul> 
<%-- 
리퀘스트 안에 있는것을 보자.

http://localhost/servlet/ch03/ex02/1.request.jsp  ->리퀘스트 주소중에 페이지에 뜬 주소가 있다.라는 뜻이다,
HTTP/1.1
localhost
/servlet
/servlet/ch03/ex02/1.request.jsp
null
GET
 --%>