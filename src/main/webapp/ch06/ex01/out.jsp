<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
expression: <%= "hello" %> <br>
scriptlet: <% out.println("hello"); %>  <br><%-- out을 직접 사용 --%> 
EL(Expression Language): ${"hello"} 

<%-- 브라우저에 출력하는 3가지 방법 --%>