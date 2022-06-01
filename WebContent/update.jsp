<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
//PhoneDao 객체만들기
PhoneDao phoneDao = new PhoneDao();

//파라미터에서 값 꺼내오기
int personId = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");

//Person 객체만들기
PersonVo personVo = new PersonVo(personId, name, hp, company);
System.out.println(personVo);

//PhoneDao의 personUpdate()를 이용해서 수정
int count = phoneDao.personUpdate(personVo);
System.out.println(count);

//응답은 리스트로 리다이렉트 시킨다.
//list.jsp 로 다시 요청한다.
response.sendRedirect("./list.jsp");
%>
