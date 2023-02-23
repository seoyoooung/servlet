<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>

<form action = 'loginProc.jsp' method='post'>
	Id : <input type= 'text' name= 'userId'/>
	Password : <input type= 'text' name= 'password'/>
	<input type = 'submit' value='로그인'/>
</form>
<jsp:forward page = 'logProc.jsp'/>
<%
	session.setAttribute("userId", "java" );
	
%>
