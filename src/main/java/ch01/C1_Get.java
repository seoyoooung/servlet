package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/get/add")// @WebServlet을 활용해서 url 수동으로 구현 
public class C1_Get extends HttpServlet{ //request 메소드의 기본값은 get이다.
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) 
		throws ServletException, IOException { //tomcat이 doGet을 콜했기때문에 throw 후에서 문제가 발생하면 tomcat한테 미룬다.
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8"); //html에서 head(meta)에 넣었던것이다: text/html; charset='utf-8'
		PrintWriter out = res.getWriter(); 
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>" , num1, num2, num1+num2);
	}
}
//http: hypertext transfer protocol
/*
특정 리소스가 지금부터는 servlet이 되는것이다. 
머신>서버>웹앱>앱을 구성하는 많은 리소스 중에 하나인 servlet이 리퀘스트를 받는다.

tomcat의 가장 핵심인 모듈은 VM이다.

에러코드 404의 뜻이 뭔가요? -> 리퀘스트에 해당하는 자원이 없다는 뜻이다. (tomcat이 url을 찾을수 없다는 뜻.)

*/

/*
http://localhost/servlet/servlet/ch01.C1_Get        -> 특정 리소스의 url이다.
리소스를 찾을때 사용하는 url이 뭔가요? -> /servlet/servlet/ch01.C1_Get 를 가지고 url을 찾는다.
/localhost 는 pc의 url이다.
/servlet 은 웹앱의 url이다. 이 부분을 context path? 

context path가 포함되어있으면 상대주소, 포함되지 않으면 절대주소

http가 필요한 response는 tomcat이 알아서 한다,,,,

response 객체를 채워주기만 하면 tomcat이 알아서 보내준다. 


servlet은 자바랑 html 코드가 섞여있다.
jdbc는 자바랑 sql 코드가 섞여있엇다.,,.,.
*/
