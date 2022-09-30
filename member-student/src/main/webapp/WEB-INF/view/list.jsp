<%@page import="cs.dit.MemberDto"%>
<%@page import="cs.dit.MemberDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container"><br>	
	<h2 class="text-center font-weight-bold">사용자 목록</h2>
	<br>
	<table class="table table-hover">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>email</th>
			<th>joinDate</th>
		</tr>

		<c:forEach var='dto' items='${dtos}'>
			<tr>
			
				<!-- 5. updateForm.jsp로 id를 get 방식으로 전송하고 화면에 id를 출력할 것 -->
				<td><a href="updateForm.do?id=${dto.id}">${dto.id}</a></td>
				
				<td>${dto.name}</td>
				<td>${dto.email}</td>
				<td><fmt:formatDate value="${dto.joinDate}"/></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<input type="button" value ="홈으로" onclick ="location.href='index.do'">
	<input type="button" value ="멤버 등록" onclick ="location.href='insertForm.do'">
	<div class="d-flex justify-content-center">
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item">
		    	<c:if test="${startNum <= 1}">
			    	<a class="page-link" href="#" aria-label="Previous" onclick="alert('이전페이지가 없습니다')" style="color: gray; background-color: lightgray;">   	
		        		<span aria-hidden="true">&laquo;</span>
			    	</a>
		    	</c:if>
		    	<c:if test="${startNum > 1}">
			    	<a class="page-link" href="list.do?page=${startNum-1}" aria-label="Previous">   	
		        		<span aria-hidden="true">&laquo;</span>
			    	</a>
		    	</c:if>
		    </li>
				<c:forEach var="i" begin="0" end="${numOfRecords-1}" step="1">
					<c:if test="${startNum+i <= lastNum}">
						<c:if test="${startNum+i == page}">
						    <li class="page-item active"><a class="page-link" href="list.do?page=${startNum+i}">${startNum+i}</a></li>
						</c:if>
						<c:if test="${startNum+i != page}">
						    <li class="page-item"><a class="page-link" href="list.do?page=${startNum+i}">${startNum+i}</a></li>
						</c:if>					
					</c:if>
				</c:forEach>
		    <li class="page-item">
		    	<c:if test="${startNum+numOfRecords > lastNum}">
			      <a class="page-link" href="#" aria-label="Next" onclick="alert('다음페이지가 없습니다')" style="color: gray; background-color: lightgray;">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
		    	</c:if>
		    	<c:if test="${startNum+numOfRecords <= lastNum}">
			      <a class="page-link" href="list.do?page=${startNum+numOfRecords}" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
		    	</c:if>
		    </li>
		  </ul>
		</nav>
	</div>
	</div>	
</body>
</html>