<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	Object user = session.getAttribute("userId");

	if(user == null) { //유저가 null이면 로그인 전이다.
		String userId = "";
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) { //유저 아이디를 뽑아낸다.
			for(Cookie cookie: cookies)
				if(cookie.getName().equals("userId"))
					userId = cookie.getValue();
		} //userId 쿠키를 어디다가 쓰느냐? 폼에다가 userId 값을 자동 생성할 것이다.
%>
	
		<%--어느땐가 아이디를 저장했다. 그 이후에는 쿠기값을 읽어서 아이디를 읽어온다. --%>
		<form action='loginProc.jsp' method='post'>
			ID : <input type='text' name='userId' value='<%=userId%>'/><br> 
			<%--expression이나 el을 사용해서 파라미터value를 부른다. attribute이면 el사용. 아니면 expression사용 --%>
			PW : <input type='password' name='pw'/><br><br> <%-- PW는 위험하니까 쿠키 사용X --%>
			<input type='checkbox' name='isStoreId' value='true'> ID 저장
			<input type='submit' value='로그인'/>
		</form>
	
<%
	} else { //로그인 후이면
%>
		<%-- 화면 메세지를 보여준다. 이미 로그인 한 적이 있다.--%>
		<%=user%>님, 환영합니다. &nbsp;
		<a href='logout.jsp'>로그아웃</a>
<%
	}
%>

<%-- 처음 로그인하면 로그인 쿠키가 없다.
한번이라도 로그인 한 적이 있으면 로그인쿠키가 존재한다.
--%>