<%@page import="dao.ConnectDB"%>
<%@page import="model.NoiDung"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="main-container">
	<div class="card">
		<h2>Edit Content</h2>
		<hr>
	</div>
	<div class="card">
		<div class="viewcontentlist">
			<h4>Content Form Elements</h4>
			<% NoiDung nd = new ConnectDB().getContentByID(Integer.parseInt(request.getParameter("id")));%>
			<form action="updateServlet" method="post">
			
			<div class="form-control-cms">
					 
				<td><input  type="hidden" name="id" value="<%=nd.getId()%>" readonly="readonly"></td>
		
				<div class="form-control-cms">
					<label for="formGroupExampleInput">Title</label> 
					<td><input type="text" name="Title" pattern=".{10,200}" title="10 to 200 characters" maxlength="50" required value="<%=nd.getTitle()%>"></td>		
				</div>
				
				<div class="form-control-cms">
					<label for="exampleFormControlTextarea1">Brief</label>
					<textarea name="Brief" minlength="30" maxlength="150" required class="form-control-cms" id="exampleFormControlTextarea1" rows="2"><%=nd.getBrief()%></textarea>
					
				</div>
				
				<div class="form-control-cms">
					<label for="exampleFormControlTextarea1">Content</label>
					<textarea name="Content" minlength="50" maxlength="1000" required class="form-control-cms" id="exampleFormControlTextarea1" rows="4"><%=nd.getContent()%></textarea>
				</div>
				
				<button type="submit"
					class="button-editprofile">Submit Button</button>
				<button type="reset" onclick="resetFunction()"
					class="button-editprofile">Reset Button</button>
			</form>
		</div>
	</div>
</div>