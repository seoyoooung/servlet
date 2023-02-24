<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import = 'java.util.List, java.util.ArrayList' %>
<%@ page import = 'java.util.StringTokenizer'%>
<a href ='main.html'>진열대</a>
<%
	List<String> cart = new ArrayList<>(); //cart의 scope은 page이다.

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
	<ul>
<%
		for(String product:cart) { //iteating 해서 출력.
%>
			<li><%= product %> </li>
<%
		}
%>
	</ul>
<%
	} else out.println("물건이 없습니다.");
%>