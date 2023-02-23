<%-- page directive : 아래에 있는 것 // 주석은 머리부분이나 오른쪽에 넣는다.--%>
<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%> 
<% //scriptlet: 자바언어로 된 스크립트 조각이란 뜻, 이 안에는 자바 코드를 사용
	int num1 = 1;
	int num2 = 2;
%>
<h2>더하기</h2> <%-- toncat이 알아서 response 코드를 넣는다. --%>
<%= num1 %> + <%=num2 %> = <%= num1 + num2 %> <%-- expression --%>


<%--  
jsp파일은 첫번째 줄이 있어야한다. 그래야 jsp가 될 수 있다 -> tomcat이 읽을수 있다.

pageEncoding='utf-8' -> tomcat이 읽는다. (class를 만들어낸다는 말이다.)

jsp -> servlet -> 객체 생성 -> url 생성 (폴더명과 파일명을 활용)
-->

<!--  C:\DEV\deploy\work\Catalina\localhost\servlet\org\apache\jsp\ch02 안에 생성되었다.
class 파일이 만들어지고, 그 객체가 만들어진것이다.
 -->
 
<!-- 내가 원하는대로 안만들어졌으면 class 파일을 확인해보자 ** tomcat이 자동으로 만들 파일을 확인하라는 뜻!! --%>