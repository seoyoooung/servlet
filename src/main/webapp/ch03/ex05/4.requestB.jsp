<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import ='ch03.ex05.User' %> 
<%
	User user = (User)request.getAttribute("user");
%>
<jsp:forward page='4.requestC.jsp'/> 
<%-- forward C 는 계속 살아있다. 아직 response를 안보냈기 때문에  --%>