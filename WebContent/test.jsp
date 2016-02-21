<%@page import="com.tony.spring.struts2.beans.Person"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//1. Gain IOC container instance from application 
	ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(application);
	
	
	//2. Gain bean from IOC container
	Person person = ctx.getBean(Person.class);
	
	person.hello();
	
%>
</body>
</html>