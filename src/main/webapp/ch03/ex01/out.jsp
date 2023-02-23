<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	for(int i = 0; i < 10; i++)
		out.print(i + "&nbsp;"); //jsp답게 쓰지 못한 예제이다. ()괄호 안에 html코드나 json코드를 넣는다.
%>

<%-- 
JSP 의 body를 보면은 out 객체를 사용하고 있다.

out 객체가 reponse 생성할때 ?? -> write & print 사용
 --%>