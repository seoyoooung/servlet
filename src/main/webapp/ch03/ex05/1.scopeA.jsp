<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	pageContext.setAttribute("one","페이지");
	request.setAttribute("two","리퀘스트");
	session.setAttribute("three","세션");
	application.setAttribute("four","애플리케이션");
%>

<c:redirect url='1.scopeB.jsp'/>

<%--
웹앱에서 업무상 사용하는 데이터는 파라미터라고 한다.
업무상 사용하는 데이터로써 attribute를 다뤄보자
set attribute 메소드 사용

attribute를 각각 page request session application에 넣는다.


출력해보면 one과 two는 null값이다.
b로 이동 될때 scope가 끝나서 데이터가 사라져서 null값이다.

pageContext : scope이 현재 페이지가 실행되는 동안 존재한다.
request : response를 클라이언트가 보내기 직전까지 존재한다.(불편함 없이 사용가능하여 많이 사용)
session : 세션 객체를 tomcat이 없애든 누가 없애든 누군가가 없애기 전까지 존재한다.
application : 앱이 시작하면 존재하고 앱이 종료되면 사라진다.

연결 끊은거를 논리적으로 지칭하는 용어는?????????  session
session 객체는 항상 tomcat내부에 위치한다.
클라이언트 서버에 계속 연결되는 것처럼 알고리즘이 생성
연결 끊으면 연결 끊겠다고 tomcat한테 전달
그러고 나면 tomcat이 session 삭제

request는 1차원적인 생각으로 많이 사용한다. 유저의 사고방식이 1차원이기 때문에.

리퀘스트별로 사용 -> request , 유저별로 사용 -> session
--%>