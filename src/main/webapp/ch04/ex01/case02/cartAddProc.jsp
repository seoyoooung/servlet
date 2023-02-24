<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	String[] products = request.getParameterValues("product");//진열대에서 고른 물건을 꺼낸다.
	
	if(products != null) { //물건이 있으면
		String cart ="";
		for(String product: products) cart += product + "/";//물건을 카트에 담는다. 물건은 / 로 구분
		//Cookie는 text 타입이라서 product + "/" 텍스트 타입으로 표현.
		
		Cookie cookie = new Cookie("cart", cart);
		cookie.setMaxAge(60 * 60 * 24 * 7); //60초 60분 24시간 7일
		response.addCookie(cookie);
	}
%>
<c:redirect url='cartOut.jsp'/>