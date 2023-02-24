<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	//장바구니가 클라이언트에 있어서 매번 장바구니를 준비해야하는 번거로움이 있다.
	String cart = ""; 
	Cookie[] cookies = request.getCookies(); 
	for(Cookie cookie: cookies) 
		if(cookie.getName().equals("cart"))
			cart = cookie.getValue();

	//빼겠다고 선택한 물건을 보자.
	String[] products = request.getParameterValues("product");
	if(products != null && products.length > 0) {
		for(String product : products)
			cart = cart.replaceFirst(product, ""); //empty string으로 바꾸는게 삭제이다.
			
		//갱신된 카트를 쿠키에 붙여쓰기한다.
		Cookie cookie = new Cookie("cart", cart);
		response.addCookie(cookie);
	} else { //물건이 없는 경우
%>

	<c:redirect url='cartOut.jsp'>
		<c:param name='msg' value='장바구니에서 뺄 물건을 선택하세요.'/>
	</c:redirect>
	
<%
	}
%>
<c:redirect url ='cartOut.jsp'/>