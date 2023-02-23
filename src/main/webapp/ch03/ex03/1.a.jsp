<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
	dispatcher.forward(request, response);
%> 
<%-- 위 코드는 지저분하다 => action tag 사용 2번예제. --%>

<%-- forward가 시작되면서 b.jsp한테 다 던졌다.
a에서 b로 보냈다
a에도 response도 있고 b에도 response가 있다 . 두 response는 같다. a가 쓰던 response를 넘긴것.
b가 다루고 있던 response를 tomcat에게 넘겨서 출력.
덮어쓰기 한 것.

덮어쓰기 말고 추가를 하고싶다 = include action

지금은 forward와 include action을 비교할줄 알아야한다.
a forward b 는 덮어쓰기하는 것이고 (a페이지에서 b페이지로 이동)
a include action b 는 더해주는것이다. (2개를 합쳐서 새로운 페이지를 만들었다.

forward => tomcat은 a가 실행됐었는지 신경 안쓴다.
--%>
