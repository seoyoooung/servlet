<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%! //declaration : 아래 문법을 선언이라고 한다. add를 선언한것이다.
	public int add(int num1, int num2) {	
		return num1 + num2;
	}

	int num1 = 1;
%>
<%
	int num2 = 2;
%>
<%= num1 %> + <%= num2 %> = <%= add(num1, num2) %> <%-- //jsp 메소드에서 add라는 메소드를 콜하고 있다. --%>

<%-- 런 시켜보자 // 1 + 2 = 3 이 뜬다. --%>