<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="main-container">
	<div class="card">
		<h2>Edit Profile</h2>
		<hr>
	</div>
	<div class="card">
		<div class="viewcontentlist">
			<h4>Profile Form Elements</h4>
			<form id="myForm" action="editProfileController" method="post">
				<div class="form-control-cms">
					<label for="formGroupExampleInput">First Name</label> <input
						type="text" placeholder="Enter the first name" id="ep_firstname"
						name="ep_firstname"
						value="${fn}" /> <small>Error message</small>
				</div>
				<div class="form-control-cms">
					<label for="formGroupExampleInput">Last Name</label> <input
						type="text" placeholder="Enter the last name" id="ep_lastname"
						name="ep_lastname"
						value="${ln}" /> <small>Error message</small>
				</div>
				<div class="form-control-cms">
					<label for="exampleFormControlInput1">Email address</label> <br>
					<span id="ep_email" name="ep_email"> <c:out value="${email}" />
					</span> <small>Error message</small>
				</div>
				<div class="form-control-cms">
					<label for="formGroupExampleInput">Phone</label> <input type="text"
						placeholder="Enter your number phone" id="ep_phone" name="ep_phone"
						value="${ph}" /> <small>Error message</small>
				</div>
				<div class="form-control-cms">
					<label for="exampleFormControlTextarea1">Discription</label>
					<textarea name="ep_discription" rows="4" cols="50"
						id="ep_discription"><c:out value="${ds}" /></textarea>
				</div>
				<input id="ep_id" name="ep_id" value="${id}" hidden>
				<button id="submit-btn" type="button" onclick="checkInputs()" class="button-editprofile">Submit
					Button</button>
				<button type="reset" onclick="resetFunction()"
					class="button-editprofile">Reset Button</button>
			</form>
		</div>
	</div>
</div>