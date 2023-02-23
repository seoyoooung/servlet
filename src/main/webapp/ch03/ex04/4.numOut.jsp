<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	String numStr = request.getParameter("num");

	try {
		int num = Integer.parseInt(numStr); 
		//위 명령문을 하나로 묶은 이유는 유저가 폼에 값을 입력하지 않고 넘어가도
		//앱이 죽지 않게 하기위해
%> 

<%-- 정상 흐름 --%>
	<%= num * 2 %>
	<a href = '4.numIn.jsp'>back</a>
	
<%-- 예외 흐름 --%>
<%
	} catch(NumberFormatException e) {
%>
	<%-- 과제 : numIn.jsp form에 에러메세지(영어)를 출력하라. --%>	
	<c:redirect url='4.numIn.jsp?msg=input number.'/>
<%
	} 
%>

<%-- 웹앱에서는 예외 처리를 에러메세지를 출력한다. --%>
