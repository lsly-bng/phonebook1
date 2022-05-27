<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>


<%
//PhoneDao 객체만들기
PhoneDao phoneDao = new PhoneDao();

//파라미터에서 값 꺼내오기
int personId = Integer.parseInt(request.getParameter("id"));
//System.out.println(personId);

// PhoneDao의 personDelete()를 이용해서 삭제하기
int count = phoneDao.personDelete(personId);
//System.out.println(count);

//응답은 리스트로 리다이렉트 시킨다.
//list.jsp 로 다시 요청한다.
response.sendRedirect("./list.jsp");
%>