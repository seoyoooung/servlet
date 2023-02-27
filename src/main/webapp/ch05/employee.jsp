<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch05.service.EmployeeService, ch05.service.EmployeeServiceImpl' %>
<%
	EmployeeService employeeService = new EmployeeServiceImpl();
%>

<%= employeeService.getEmployee(100) %> 

<!-- hr과제할때 jsp 파일은 깨끗하게 만든다 -->

<%-- 생성 순서 (시현 순서)
mapper > dao.map EmployeeMap.xml > mapper 문서를 sqlMapConfig.xml 에 추가
>dao 생성 daoImpl 생성 >service 생성 servicedaoImpl 생성
> 
--%>