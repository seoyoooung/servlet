<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import ='java.util.List, java.util.ArrayList' %>
<a href='main.jsp'>진열대</a>
<h3>장바구니</h3>
<%
	Object cartObj = session.getAttribute("cart"); //cartAddProc의 13번째 줄 cart이다.

	if(cartObj != null) { //장바구니가 있는 경우
		List<String> cart = (List<String>)cartObj; //object이니까 본래의 타입으로 casting한다.
		if(cart.size() > 0 ) { //장바구니 안에 물건이 담겨 있다.
%>
		<form action = 'cartDelProc.jsp' method='post'>  
		<ul>
<%
			for (String product:cart) { //카트에서 물건을 꺼낸다.
%>
		
			<li><%=product%><input type='checkbox' name='product' value='<%= product %>'/></li>
<%
 			}
%>			
		</ul>
		<button type='submit'>빼기</button> <!-- 뺄 물건을 선택했으면 delProc로 간다. -->
		</form>
<%
			//에러 메세지 출력하기 위해 필요.
			String msg = request.getParameter("msg");
			if(msg != null) out.println(msg);
			
		} else out.println("장바구니에 물건이 없습니다."); 
	} else out.println("장바구니가 없습니다."); //서버를 새로고침 후에 장바구니 객체 자체가 만들어지지 않았을때 에러메세지 발생
%> 
