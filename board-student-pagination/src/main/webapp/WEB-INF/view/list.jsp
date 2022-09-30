<%@page import="cs.dit.board.BoardDto"%>
<%@page import="cs.dit.board.BoardDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<style>
	.now-page{
		background-color: #c4c4c4;
	}
</style>
<body>
	<div class="container"><br>	
	<h2 class="text-center font-weight-bold">게시판 목록 ${nowPage}</h2>
	<br>
	<form action="list.do" method="post">
		<table class="table table-hover">
			<tr>
				<th>num</th>
				<th>subject</th>
				<th>writer</th>
				<th>regDate</th>
			</tr>
	
			<c:forEach var='dto' items='${dtos}'>
				<tr>
					<td>${dto.bcode }</td>
					<td><a href="updateForm.do?bcode=${dto.bcode}">${dto.subject}</a></td>
					<td>${dto.writer}</td>
					<td><fmt:formatDate value="${dto.regDate}"/></td>
				</tr>
			</c:forEach>
		</table>
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item">
				<c:if test="${(nowPage-1)/10 < 1 }">
					<input type="hidden" name="nowPage" value="${nowPage}">
					<button type="submit" class="page-link"aria-label="Previous" onclick="alert('처음')">
						<span aria-hidden="true">&laquo;</span>
					</button>
				</c:if>
				<c:if test="${(nowPage-1)/10 >= 1 }">
					<input type="hidden" name="nowPage" value="${nowPage}">
						<button type="submit" class="page-link"aria-label="Previous" value="prev" name="loc">
							<span aria-hidden="true">&laquo;</span>
						</button>
				</c:if>
		    </li>
		    
			<c:forEach var='page' items='${pageNumbers}'>
				<c:if test="${page == nowPage }">
			    	<li class="page-item"><button type="submit" value="${page}" name="pageNumber" class="page-link now-page">${page}</button></li>
				</c:if>
				<c:if test="${page != nowPage }">
			    	<li class="page-item"><button type="submit" value="${page}" name="pageNumber" class="page-link">${page}</button></li>
				</c:if>
			</c:forEach>
			
		    <li class="page-item">
				<c:if test="${(nowPage+10) > maxPage }">
		      		<button class="page-link" aria-label="Next" onclick="alert('마지막 페이지 입니다.')">
		        		<span aria-hidden="true">&raquo;</span>
		      		</button>
				</c:if>
				<c:if test="${(nowPage+10) <=maxPage }">
					<input type="hidden" name="nowPage" value="${nowPage}">
			      <button type="submit" class="page-link"aria-label="Next" value="next" name="loc">
			        <span aria-hidden="true">&raquo;</span>
			      </button>
				</c:if>
		    </li>
		  </ul>
		</nav>
	</form>
	<br>
	<input type="button" value ="홈으로" onclick ="location.href='index.do'">
	<input type="button" value ="게시글 등록" onclick ="location.href='insertForm.do'">
	</div>
</body>
</html>