<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%--잘 담긴것을 user에게 확인 시켜주기 위해 cartOut 사용 --%>
<%@ page import ='java.util.List, java.util.ArrayList' %>
<a href='main.html'>메인</a> <%-- 링크는 user가 직접 선택하는 것이다. --%>
<h3>장바구니</h3>
<%
	Object cartObj = session.getAttribute("cart");

	if(cartObj != null) { //장바구니가 있는 경우. 정상 흐름
		List<String> cart = (List<String>)cartObj;
		if(cart.size() > 0) { //장바구니 안에 물건이 담겨있어야한다.
%>
	<ul>
<%
			for(String product: cart) { //카트에서 물건을 꺼낸다
%>
		<li><%= product %></li> <%-- 물건을 꺼내는 족족 li를 만든다. --%>
<%
			}
%>
	</ul>
<%
		} else out.println("장바구니에 물건이 없습니다."); //장바구니는 있는데 물건이 없다.
	} else out.println("장바구니가 없습니다."); //장바구니가 아예 없다.
%>