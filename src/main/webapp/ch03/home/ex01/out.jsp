<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<% 
	for(int i = 0; i < 10; i++) {
%>
 	<%= i %> &nbsp;
<%
	}
%>
<%-- 과제 :  /ch03/ex01/out.jsp 를 refactoring 하라.
			out 객체를 쓰지 마라.  
			 
			(refactoring하는데 out을 사용하지 말라는 뜻)
			jsp코드만 보지말고 sevlet 코드를 봐야지 과제를 풀 수 있다.--%>
			
<%-- 
servlet 코드 중 119번째 줄

for(int i = 0; i < 10; i++) {

      out.write("\r\n");
      out.write("\r\n");
      out.write(" 	");
      out.print( i );
      out.write(" &nbsp;\r\n");
      out.write("\r\n");

	}
에 집착해라.--%>