<div class="main-container">
	<div class="card">
		<h2>Edit Profile</h2>
		<hr>
	</div>
	<div class="card">
		<div class="viewcontentlist">
			<h4>Profile Form Elements</h4>
			<form id="myForm">
				<div class="form-control-cms">
					<label for="formGroupExampleInput">First Name</label> <input
						type="text" placeholder="Enter the first name" id="ep_firstname" />
					<small>Error message</small>
				</div>
				<div class="form-control-cms">
					<label for="formGroupExampleInput">Last Name</label> <input
						type="text" placeholder="Enter the last name" id="ep_lastname" />
					<small>Error message</small>
				</div>
				<div class="form-control-cms">
					<label for="exampleFormControlInput1">Email address</label> <input
						type="email" placeholder="E-mail" id="email" /> <small>Error
						message</small>
				</div>
				<div class="form-control-cms">
					<label for="formGroupExampleInput">Phone</label> <input type="text"
						placeholder="Enter your number phone" id="ep_phone" /> <small>Error
						message</small>
				</div>
				<div class="form-control-cms">
					<label for="exampleFormControlTextarea1">Discription</label>
					<textarea id="w3review" name="w3review" rows="4" cols="50"
						id="ep_discription">
                        
                                </textarea>
				</div>

				<button type="button" onclick="checkInputs()"
					class="button-editprofile">Submit Button</button>
				<button type="button" onclick="resetFunction()"
					class="button-editprofile">Reset Button</button>
			</form>
		</div>
	</div>
</div>