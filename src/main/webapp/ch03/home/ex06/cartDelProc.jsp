<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%-- 선택한 물건을 꺼낸다. = session에 있는 물건을 삭제한다. 일부러 꺼내야한다.
	삭제하려면 선택할 것이 필요,,,, 체크박스 만들기.
	삭제 버튼 만들기
--%>
<form action = 'cartOut.jsp' method='post'>
	<ul>
		<li>노트북<input type='checkbox' name='product' value='노트북'></li>
		<li>모니터<input type='checkbox' name='product' value='모니터'></li>
		<li>마우스<input type='checkbox' name='product' value='마우스'></li>
	</ul>
	<button type = 'submit'>삭제</button>
</form>

<%
	session.removeAttribute("");
%>
	<c:redirect url ='cartOut.jsp'/>
	
