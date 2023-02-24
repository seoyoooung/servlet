<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List , java.util.ArrayList'%> 
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	String[] products = request.getParameterValues("product"); //이 product는 cartOut의 18번째 줄 product이다.
	Object cartObj = session.getAttribute("cart");
	
	if(cartObj != null) {
		List<String> cart = (List<String>)cartObj;//장바구니가 있다. 본래의 타입으로 장바구니를 casting한다.
		
		if(products != null && products.length > 0) {//뺄 물건이 있는 경우
			for(String product : products)
				cart.remove(product); //장바구니에서 뺄 물건을 선택하고 삭제한다.
		} else { //장바구니에서 뺄 물건을 선택하지 않았다.
%>
	<c:set var='msg' value='장바구니에서 뺄 물건을 선택하세요.'/> <%-- set attruibute 대신 사용가능. --%>	
<%	
		}
	} else { //장바구니에 물건이 없다.
%>
	<c:set var ='msg' value='장바구니가 없습니다.'/>
<%
	}
%>
	<c:redirect url='cartOut.jsp'>
		<c:param name ='msg' value='${msg}'/> <%-- el ? 안에 attribute name을 쓰면 불러낸다. --%>
	</c:redirect>
	
<%-- 종점이 하나인게 좋은 코드이다. --%>