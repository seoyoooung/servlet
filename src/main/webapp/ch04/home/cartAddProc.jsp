<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	//장바구니 준비한다.
	String cart = ""; //카트를 하나 준비한다.
	Cookie[] cookies = request.getCookies(); //장바구니 담기를 최초로 하는 경우에는 없다. 2회차 이상은 cart cookie가 있다/
	for(Cookie cookie: cookies) 
		if(cookie.getName().equals("cart"))
			cart = cookie.getValue(); //기존들 물건들로 채워진 경우
	
			
	//장바구니에 물건을 담는다.
	String[] products = request.getParameterValues("product"); //진열대에서 가져온 물건등 중 살펴보자.
	if(products != null && products.length > 0) { //물건이 있으면
		for(String product: products)
			cart += product + "/"; //물건을 담아야지.
			
		Cookie cookie = new Cookie("cart", cart); //쿠키의 내용을 새로 수정해야된다.
		cookie.setMaxAge(60 * 60 * 24 * 7);
		response.addCookie(cookie);
	} else { //진열대에서 물건을 고르지 않았다면
%>
		<c:redirect url='main.jsp'>
			<c:param name = 'msg' value='장바구니에 담을 물건을 선택하세요.'/>
		</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/>