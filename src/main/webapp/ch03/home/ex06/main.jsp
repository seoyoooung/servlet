<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<h3>상품</h3>
<form action = 'cartAddProc.jsp' method='post'>
	<ul>
		<li>노트북<input type='checkbox' name='product' value='노트북'></li>
		<li>모니터<input type='checkbox' name='product' value='모니터'></li>
		<li>마우스<input type='checkbox' name='product' value='마우스'></li>
	</ul>
	<button type = 'submit' >담기</button>
	<button type = 'submit' formaction='cartOut.jsp'>보기</button>
</form>

<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
%>


<!-- 
고도화 내용..main을 jsp로 변경해야한다

과제 : 장바구니에 물건을 담을 때, 기존 물건을 버리지 않는다.(기존 장바구니 리스트에 추가한다....)
장바구니에서 물건을 꺼낸다.(물리적으로 표현하면 삭제한다.) (물건을 꺼낸다는 cartDelProc.jsp로 표현)

상품 목록에서 물건을 선택하지 않고, 담기 버튼을 누르면 에러메세지를  
상품 목록 아래에 출력한다.
 -->