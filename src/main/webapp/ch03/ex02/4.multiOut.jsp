<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<% //checkbox와 select는 다수 선택 가능해서 배열로 나타낸다.
//배열은 getParameterValues를 사용한다. 
	String[] letters = request.getParameterValues("letter");
	String gender = request.getParameter("gender");
	String[] jobs = request.getParameterValues("job");
%>
<%-- 과제 : letters를 iteration해서 출력해라. --%>
<% 
	if(letters != null)
		for(String letter: letters) {
%>
		<%= letter%> &nbsp;
<%
	}
%> <br>
<%-- n개의 벨류는 배열 형태로 //letter 파라미터의 벨류를 읽어서 그 벨류를 담아서 리턴한다
"letter"라는 파라미터 값이 없으면 letters에는 무엇이 들어갈까? null이 들어간다. --%>

<%= gender %>

<% 
	if(jobs != null)
		for(String job : jobs) {
%>
		<%= job%> &nbsp;
<%
	}
%>
