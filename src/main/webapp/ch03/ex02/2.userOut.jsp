<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String userName = request.getParameter("userName"); //유저가 입력한 데이터를 '리턴'하게 되어있다.
	String age = request.getParameter("age");
	String birthday = request.getParameter("birthday");
	//파라미터를 자바에는 다 String으로 다루고 있다.
%>
<h3>사용자</h3>
<ul>
	<li>이름 : <%= userName %></li>
	<li>나이 : <%= age %></li>
	<li>생일 : <%= birthday %></li>
</ul>

<%-- servlet은 리퀘스트를 받아야 실행된다. html도.  
폼을 제출하면 필드 데이터도 들어간다. (userIn) 

userIn에서 실행시켜야한다.
폼을 제출하고 나면
http://localhost/servlet/ch03/ex02/2.userOut.jsp?userName=%EC%B5%9C%EC%84%9C%EC%98%81&age=28&birthday=2023-02-01
jsp? 다음에 파라미터가 들어가있다.
사이는 &로 구분해준다.
한글은 incoding해서 브라우저에서는 decoding해서 알아서 해석한다.

userName이후 코드는 queryString 이다.
query String 부분에서 파라미터 벨류를 읽어낸 것이다.
--%> 
