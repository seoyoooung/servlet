<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<jsp:include page = '4.header.jsp' />  
<hr>
본문
<hr>
<%@ include file = '4.footer.jsp' %>

<%--header는 컨텐츠가 계속 달라진다

header와 footer의 차이점: header는 dynamic하다. footer는 static하다.

include할 대상이 있는데, 다이나믹하면 include action/ static하면은 include directive --%>