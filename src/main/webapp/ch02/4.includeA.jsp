<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
본문
<hr>
<jsp:include page='4.footer.jsp'/>
<%-- action --%>

<%-- 
액션 태그 앞에는 jsp라는 접두사가 붙는다.

디렉티브에서는 file을 사용했고
액션에서는 page사용 : 클래스 파일에서는 결합하지 않고 페이지를 만드는 과정에서 결합하겠다. 
				= reponse를 만드는 과정에서 결합을 하겠다.

★★ 전 예제와 페이지는 같다. 하지만 과정이 다르다.
workspace -> DEV 가서 보자
includeA 코드는 includeA에 있고, footer 코드는 footer코드에 있다.
따로 있다.
out으로 출력한 것은 response에 들어가게 되어 있다.


response에다가 includeA의 내용을 먼저 쏟아내고, 4.footer 서블릿에다가 넘긴다. 
include A의 request와 response는 순수한- // 자신이 썻던 것을 그대로 footer에게 넘기고 있다. 

include를 하는 목적은 무엇인가??  중복코드를 제거하기 위해서이다.
footer에 있는 회사 정보가 여러 페이지에서 중복이 된다 . 그것을 제거 하기 위해서 footer로 모듈화시킨것이다.


a include b  Directive -> class상에서 결합
a과 b 가 갖고 있던 소스로 a클래스를 만든다. a클래스 안에는 b소스도 다 포함되어 있다. class 하나로 서블릿 객체 2개


a include b  Action-> response에서 결합
a class. b class 2개가 만들어졌다. 서블릿도 각각 생긴다. a 서블릿 request와 response를 b에게 넘긴다.
공유하는 리스펀스에다가 a와 b가 채워넣는다. 
response상에서 결합한다.
동적으로 만든다.


reponse는 논리적, request는 논리적
논리적인 request와 response을  (4.includeA_jsp.java파일)79번째 줄에서는 
request와 response을 물리적이라고 표현 -> 얘네는 객체니까 메모리를 차지하고 있어서.
 --%> 
 
 
 <%-- 
 chatGPT가 혁명인 이유는 무엇일까? 본인의 답을 생각해보기. 면접!
  --%>