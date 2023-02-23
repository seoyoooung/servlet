<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
본문
<hr>
<%@ include file = '4.footer.jsp' %> <!-- 포함 시킬 파일 명을 쓴다.-->
<%-- directive --%>

<%--
현재 include 화면과 포함시킨 파일이 합쳐져서 출력된다.


방금 실행해서  본 페이지는 '논리적'인것이다.
우리끼리 머리속에서 페이지라는게 있다고 약속한 것이다
'물리적'으로는 페이지 하나당 파일 하나가 있었다. 
지금은 페이지 하나에 물리적인 파일이 2개가 있는 것이다. 물리적인 파일 2개가 결합해서 화면에 보이는 페이지 1개를 만들고 잇다.
관념의 전환 ★★

오늘 이후로는 물리적인 파일 n개로 논리적인 페이지 1개를 만들수 있다.

include 디렉티브 서블릿 클래스는 하나가 만들어진다.
서블릿 객체가 페이지 하나를 만들고 있는 것이다.
어제도 지금도 서블릿 객체 하나가 페이지 하나를 만들고 있는 것이다.
그것은 DEV 가서 확인할 수 있다.
난 footer로 만들었지만 footer로 만들어진 클래스는 없다 (foote r먼저 run시키지 않는다.)
footer.jsp에 쓴 코드가 include_jsp.java에 포함되어 있는 것을 볼수 있다
a include b => a 소스코드와 b소스코드를 합쳐서 새로운 물리적인 class를 만든것이다.
파일을 보지말고 클래스를 봐라.

방금 배운것을 기억했다가 다음 예제랑 비교해라 

include directive는 a의 파일에다가 b의 소스를 넣은것.
★

d= directive
a= action
--%>