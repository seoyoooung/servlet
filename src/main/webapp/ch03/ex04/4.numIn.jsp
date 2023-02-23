<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='4.numOut.jsp' method='post'>
	<input type ='number' name='num'/>
	<input type = 'submit'/>
</form>

<%
	String msg = request.getParameter("msg");
%>
<%= msg != null ? msg : "" %>

<%--
forward랑 redirect 차이점이 뭘까?

forward -> a와 b가 하나의 서버에 있어야한다.
redirect -> a와 b가 다른 서버에 있어도 된다.

다른 서버간의 이동이 가능한 이유는? a페이지 리퀘스트랑 b페이지 리퀘스트가 다르기때문에 가능했다.
--%>