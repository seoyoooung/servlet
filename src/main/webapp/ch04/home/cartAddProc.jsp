<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<% //script 
	//장바구니 준비한다.
	String cart = ""; //카트를 하나 준비한다.
	//장바구니 담기를 최초로 하는 경우에는 cart cookie가 없다. 2회차 이상 부터는 cart cookie가 있다.
	Cookie[] cookies = request.getCookies(); //cart cookie를 읽어낸다.
	for(Cookie cookie: cookies) //cart cookie가 있는지 조사한다.
		if(cookie.getName().equals("cart")) // cart cookie가 발견되면
			cart = cookie.getValue(); //cart에 담겨있던 것을 담는다. String 형태로 있기 때문에 iterating 하기는 불편하다.
	
			
	//장바구니에 물건을 담는다.
	String[] products = request.getParameterValues("product"); //진열대에서 가져온 물건들을 살펴보자. 
	
	if(products != null && products.length > 0) { //진열대에서 물건을 꺼낸 경우
		for(String product: products)
			cart += product + "/"; //물건이 있으면 물건을 카트에 담아야지. 비어있었던 ? 원래 있었던? 카트는 갱신되었다. 물건은 구분자 /로 나눈다.
			
		Cookie cookie = new Cookie("cart", cart); //쿠키의 내용을 새로 수정해야된다.
		cookie.setMaxAge(60 * 60 * 24 * 7);
		response.addCookie(cookie);
	} else { //진열대에서 물건을 고르지 않은 경우 -> 진열대로 다시 보낸 후 에러메세지 출력한다.
%>
		<c:redirect url='main.jsp'> 
			<c:param name = 'msg' value='장바구니에 담을 물건을 선택하세요.'/>
		</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/> 