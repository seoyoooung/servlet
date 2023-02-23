<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	String userId = request.getParameter("userId");
	String pw = request.getParameter("pw");
	
	if(userId.equals("java") && pw.equals("java")) {
		session.setAttribute("userId", userId); //로그인이 성공하면 유저아이디를 저장한다.
%> <%-- 리퀘스트에 있는 파라미터를 읽어들인다. 아이디랑 비번은 클라이언트가 생성했기 때문에 파라미터이다. --%>
	<c:redirect url = 'main.jsp'/>
<%
	} else {
%>
	<c:redirect url = 'login.jsp'>
		<c:param name = 'msg' value= 'ID와 PW를 확인해주세요.'/>
	</c:redirect>
<%
	}
%>



<%-- 내 답안
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	
	if(userId.equals("java") && password.equals("java") {
%>
	
	<h><%= id %>님, 환영합니다.</h>
<%
	}
%>
<%
	else {
%>
	<c:redirect url = 'login.jsp?msg=id password가 올바르지 않습니다.'/>
<%
	}
%>
--%>