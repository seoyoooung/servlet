<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import = 'java.util.List, java.util.ArrayList' %>
<%@ page import = 'java.util.StringTokenizer'%>
<a href ='main.jsp'>진열대</a>
<h3>장바구니</h3>
<%
	//장바구니를 준비한다.
	String cart = ""; 
	Cookie[] cookies = request.getCookies(); 
	for(Cookie cookie: cookies) 
		if(cookie.getName().equals("cart"))
			cart = cookie.getValue();
	
	//물건이 채워진 상태에서만 보면 된다.
	if(cart != "") { //물건이 있으면
		StringTokenizer products = new StringTokenizer(cart, "/"); //장바구니는 토큰으로 물건을 쪼갠다.
%>

		<form action ='cartDelProc.jsp' method='post'>
			<ul>
<%
			String product = ""; //물건 하나를 담을 변수를 선언.
			while(products.hasMoreTokens()) { //물건이 있는지 조사한다.
				product = products.nextToken(); 
%>			
				<li><%=product%><input type='checkbox' name='product' value='<%=product%>'/></li>
<%
			}
%>
			</ul>
			<button type='submit'>빼기</button>
			</form>

<%
		String msg = request.getParameter("msg");
		if(msg != null) out.println(msg);
		
		
		} else out.println("장바구니가 없습니다."); 
%>