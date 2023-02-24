<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<h3>진열대</h3>
<%
	Cookie cookie1 = new Cookie("product" , "노트북");
	Cookie cookie2 = new Cookie("product" , "모니터");
	Cookie cookie3 = new Cookie("product" , "마우스");
	
	cookie1.setMaxAge(60 * 60 * 24 * 7);
	cookie2.setMaxAge(60 * 60 * 24 * 7);
	cookie3.setMaxAge(60 * 60 * 24 * 7);
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
	
	Cookie[] cookies = request.getCookies();
	
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("product")) {
%>
<form action='cartAddProc.jsp' method = 'post'>
	<ul>
		<li>노트북<input type ='checkbox' name='product' value='노트북' ></li>
	</ul>
	<button type='submit'>담기</button>
	<button type='submit' formaction='cartOut.jsp'>보기</button>
</form>

<%
		}
	}
%>


<%--
<%
	Cookie cookie1 = new Cookie("product1" , "노트북");
	Cookie cookie2 = new Cookie("product2" , "모니터");
	Cookie cookie3 = new Cookie("product3" , "마우스");
	
	cookie1.setMaxAge(60 * 60 * 24 * 7);
	cookie2.setMaxAge(60 * 60 * 24 * 7);
	cookie3.setMaxAge(60 * 60 * 24 * 7);
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
%>
<form action='cartAddProc.jsp' method ='post'>
	<ul>
		<li>노트북<input type='checkbox' name='product1' value='노트북'></li>
		<li>모니터<input type='checkbox' name='product2' value='모니터'></li>
		<li>마우스<input type='checkbox' name='product3' value='마우스'></li>
	</ul>
	<button type='submit'>담기</button>
	<button type='submit' formaction='cartOut.jsp'>보기</button>
</form>
 --%>
<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
%>