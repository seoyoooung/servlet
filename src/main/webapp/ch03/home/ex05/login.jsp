<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action = 'loginProc.jsp' method='post'> 
<%-- post method 쓰는 이유는 비밀번호(password를 노출시키지 않기 위해)가 리퀘스트 바디 안에 넣어야하기 때문이다. --%>
		ID : <input type ='text' name ='userId'/><br>
		PW : <input type ='password' name ='pw'/><br>
		<button type ='submit'>로그인</button>
</form> <%-- 로그인 성공 했을 때는 이 폼이 보이지 않는다. --%>
<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
%> 



<%-- 내 답안
<form action = 'loginProc.jsp' method='post'>
	Id : <input type= 'text' name= 'userId'/>
	Password : <input type= 'text' name= 'password'/>
	<input type = 'submit' value='로그인'/>
</form>
--%>
