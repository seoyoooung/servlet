<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import = 'java.util.List, java.util.ArrayList' %>
<%@ page import = 'java.util.StringTokenizer'%>
<a href ='main.jsp'>진열대</a>
<h3>장바구니</h3>
<%--
<%
	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies(); //쿠키준비
	
	for(Cookie cookie: cookies) { //cookie를 iterating한다.
		if(cookie.getName().equals("cart")) {
			String tmp = cookie.getValue(); //쿠키 벨류 읽는다.
			st = new StringTokenizer(tmp, "/"); //사용한 구분자로 나눈다.
			while(st.hasMoreTokens()) 
				cart.add(st.nextToken()); //토큰이 있으면 토큰에 담는다.
		}
	}
	
	if(cart.size() > 0) { //카트에 물건이 있는지 조사
%>
	<form action = 'cartDelProc.jsp' method='post'>
	<ul>
<%
		for(String product:cart) { //iteating 해서 출력.
%>
			<li><%= product %><nput type='checkbox' name='product' value='<%=product%>'/></li>
<%
		}
%>
	</ul>
	<button type ='submit'>빼기</button>
	</form>
<%
		String msg = request.getParameter("msg");
		if(msg != null) out.println(msg);
	} else out.println("물건이 없습니다.");
%>

--%>