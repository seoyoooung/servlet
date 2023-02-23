<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import = 'java.time.LocalDate' %> <%-- class의 import를 사용한다. page import--%>
<%@ page import = 'java.util.Date' %>

<% //import한 로컬 데이트를 사용하고 있다.
	LocalDate today = LocalDate.now();
	Date today2 = new Date();
%>
<%= today %> <br>
<%= today2 %>
 