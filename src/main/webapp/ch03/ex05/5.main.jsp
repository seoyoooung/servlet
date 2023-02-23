<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<nav>
	<a href = '5.sessionA.jsp'>A</a> &nbsp;
	<a href = '5.sessionB.jsp'>B</a> &nbsp;
	<a href = '5.logout.jsp'>logout</a>
</nav> 
<%--
최초로 메인으로 리퀘스트를 보낸다
a페이지에서 출력한 데이터를 보여준다 -> 메인가기
b페이지에서 출력한 데이터를 보여준다. -> 메인 가기
로그아웃 가면 데이터가 없다 (session객체가 없다.)
b로 다시 가보면 null값이 나온다. (session 객체가 사라진다.)

--%>