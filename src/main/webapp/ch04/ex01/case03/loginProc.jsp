<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix ='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%	//앞에서 전달하는 파라미터는 userId, pW , isStoreId
	//아이디만 신경쓰자. PW는 버린다.
	String userId = request.getParameter("userId");
	String isStoreId = request.getParameter("isStoreId");
	
	if(!userId.equals("")){ //유저가 값을 입력했으면.
		session.setAttribute("userId", userId);//로그인했다 = 세션에 유저 아이디 값이 있다.	
		
		if(isStoreId != null && isStoreId.equals("true")) { //
			Cookie cookie = new Cookie("userId", userId);
			cookie.setMaxAge(10); //테스트 해보기 위해 짧게 해보자.
			response.addCookie(cookie);
		}
	}
%>
<c:redirect url='main.jsp'/> <%--이때 메인으로 가면 환영 메세지가 뜬다. --%>