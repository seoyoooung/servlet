<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List , java.util.ArrayList'%> <%-- n개이면 , 사용한다. --%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	String[] products = request.getParameterValues("product");

	if(products != null && products.length > 0) {
		List<String> cart = new ArrayList<>(); //장바구니를 하나 든다를 new arrayList로 표현
		
		for(String product: products)
			cart.add(product); //장바구니에 물건을 담는다.
			
		session.setAttribute("cart" , cart);//장바구니를 session에 집어넣는다.장바구니 하나를 가지고 여기저기 다닌다.
	}
%> <%-- 실행 배열로 받는다. --%>
<c:redirect url ='cartOut.jsp'/>