<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a><br>
<%
	Cookie[] cookies = request.getCookies(); //페이지 안에 있는 쿠키를 읽어낸다.
	
	//cookie 중 에서 userName을 찾아낸다.
	for(Cookie cookie : cookies)
		if(cookie.getName().equals("userName")) {	
%>
		<%= cookie.getName() %> : <%= cookie.getValue() %> 
<%
		}
%>

<%-- case02 / cookieOut.jsp에는 request cookie가 담기지 않는다. userName이 출력되지 않는다.
cookie의 path가 다르다.--%>