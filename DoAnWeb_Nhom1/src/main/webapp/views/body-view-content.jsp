<%@page import="model.Content"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="main-container" id="loader">
	<h2>LOADING...</h2>
</div>
<div class="main-container" id="myDiv">
	<div class="card">
		<h2>View Content</h2>
		<hr>
	</div>
	<div class="card">
		<div class="viewcontentlist">
			<h4>View Content List</h4>
			<table>
				<tr>
					<th>#</th>
					<th>Title</th>
					<th>Brief</th>
					<th>Created Date</th>
					<th>Actions</th>
				</tr>
				<c:forEach var="content" items="${PageView}">

					<tr>
						<td><c:out value="${content.getId()}" /></td>
						<td><c:out value="${content.getTitle()}" /></td>
						<td><c:out value="${content.getBrief()}" /></td>
						<td><c:out value="${content.getCreatedtime()}" /></td>
						<td><a
							href="edit-content.tiles?id=<c:out value='${content.getId()}' />">Edit</a>
							<a href="deleteservlet?id=<c:out value='${content.getId()}' />">Delete</a></td>
					</tr>
				</c:forEach>


			</table>
		</div>
		<div class="pagination">
			<c:forEach var="i" begin="1" end="${nPage}">
				<a href="page-view?page=<c:out value='${i}' />"><c:out
						value="${i}" ></c:out></a>
			</c:forEach>
		</div>
	</div>
		<p style="text-align: center;">Current Page:<c:out value="${CPage}"></c:out></p>
</div>
<script>
	var myVar;

	function myFunction() {
		myVar = setTimeout(showPage, 0);
	}

	function showPage() {
		document.getElementById("loader").style.display = "none";
		document.getElementById("menu").style.display = "block";
		document.getElementById("myDiv").style.display = "block";
	}
	
</script>