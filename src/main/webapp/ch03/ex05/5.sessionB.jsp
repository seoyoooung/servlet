<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href = '5.main.jsp'>main</a> 
<p><%= session.getAttribute("user")%> </p> <%--A에서 만든거를 B에서도 읽을수ㅜ있다. --%>
