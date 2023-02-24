<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>

<%
	String[] products = request.getParameterValues("product");
	
	if(products != null) { 
		String cart = null; //기존장바구니 사용 or 새 장바구니 사용
		
		Object cartObj = session.getAttribute("cart");
		
		Cookie cookie = new Cookie("cart", "");
		cookie.setMaxAge(60 * 60 * 24 * 7); 
		response.addCookie(cookie);
		
			if(cartObj == null) {
				cart = ""; // 새 장바구니를 만든다
				session.setAttribute("cart", cart);
				
			} else cart = (String)cartObj;
				for(String product: products) cart += product + "/";
					
				
				//Cookie cookie = new cookie("cart", cart);
				//cookie.setMaxAge(60 * 60 * 24 * 7); 
				//response.addCookie(cookie);
		
	} else {
%>
	<c:redirect url ='main.jsp'>
		<c:param name='msg' value='장바구니에 담을 물건을 선택하세요.'/>
	</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/>