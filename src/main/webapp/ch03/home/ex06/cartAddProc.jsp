<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List , java.util.ArrayList'%> <%-- n개이면 , 사용한다. --%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	String[] products = request.getParameterValues("product"); //n개의 product 파라미터를 읽어낸다.

	if(products != null && products.length > 0) { //1) 진열대에 고른 물건이 있는 경우
		List<String> cart = null; //기존 장바구니에 넣거나 새로운 장바구니에 넣거나.
		
		Object cartObj = session.getAttribute("cart"); //장바구니 객체는 session scope로 사용
		
			if(cartObj == null) { //① 장바구니가 비었을 경우 = 장바구니가 없을 경우 . 새 장바구니 사용.
				cart = new ArrayList<>(); //새 장바구니를 만든다.
				session.setAttribute("cart", cart); //향후에 위 코드 새 장바구니를 사용하기 위해서 session scope로 장바구니 사용
			
			} else cart = (List<String>)cartObj; //② 장바구니에 물건이 있어서 cartAdd 하는 경우. 기존 장바구니 사용.
	
				for(String product: products)//장바구니에 물건을 담는다.
					cart.add(product);
		
	} else { //2) 진열대 고른 물건이 없는 경우
%> 
	<c:redirect url = 'main.jsp'>
		<c:param name='msg' value='장바구니에 담을 물건을 선택하세요.'/>
	</c:redirect>
<%
	} //else 블럭 마무리.
%>

<c:redirect url ='cartOut.jsp'/> <%-- 18~25번째 줄이나 27번째 줄이 종료하는 2가지 코드이다. --%>

<%-- 
List<String> cart = new ArrayList<>(); 
		ㄴ 기존 코드에서 내가 담아놓은 기존 물건이 사라진이유 . 담을때마다 새로운 장바구니를 불러왔기 때문이다. --%>