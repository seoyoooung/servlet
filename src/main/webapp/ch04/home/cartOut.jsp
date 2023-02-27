<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import = 'java.util.List, java.util.ArrayList' %>
<%@ page import = 'java.util.StringTokenizer'%>
<a href ='main.jsp'>진열대</a>
<h3>장바구니</h3>
<%
	//장바구니 내용 살피기
	String cart = ""; //장바구니를 준비한다.
	Cookie[] cookies = request.getCookies(); //cookie를 읽어낸다.
	for(Cookie cookie: cookies) 
		if(cookie.getName().equals("cart")) //cart cookie가 발견되면
			cart = cookie.getValue(); //cart에 담겨있던 것을 담는다.
	
	//물건이 채워진 상태에서만 보면 된다.
	if(cart != "") { //장바구니 안에 물건이 있으면 = 장바구니가 존재했으면.
		StringTokenizer products = new StringTokenizer(cart, "/"); //장바구니는 물건을 토큰(/) 으로 쪼갠다.
%>

		<form action ='cartDelProc.jsp' method='post'>
			<ul>
<%
			String product = ""; //물건 하나를 담을 변수를 선언.
			while(products.hasMoreTokens()) { //물건이 있는지 조사한다.  hasMoreTokens> 토큰이 있으면 true 없으면 false
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