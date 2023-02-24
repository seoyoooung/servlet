<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a><br>
<%
	Cookie[] cookies = request.getCookies(); //리퀘스트에 있는 cookie는 배열로 읽는다.
	
	//cookie 골라내는 작업
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("userName") || cookie.getName().equals("age")) {
%> 
		<%-- value를 읽는다. cookie에 저장되어있는 name과 value를 가져온다.--%>
		<%= cookie.getName() %> : <%= cookie.getValue() %> <br> 
<%
		}
	}
%>

