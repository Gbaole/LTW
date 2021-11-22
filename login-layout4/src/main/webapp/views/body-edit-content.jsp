
<div class="main-container">
	<div class="card">
		<h2>Edit Content</h2>
		<hr>
	</div>
	<div class="card">
		<div class="viewcontentlist">
			<h4>Content Form Elements</h4>
			<form id="myForm">
				<div class="form-control-cms">
					<label for="formGroupExampleInput">Title</label> <input type="text"
						placeholder="Enter the title" id="ec_title" /> <small>Error
						message</small>
				</div>
				<div class="form-control-cms">
					<label for="exampleFormControlTextarea1">Brief</label>
					<textarea name="w3review" rows="4" cols="50" id="ec_brief"></textarea>
					<small>Error message</small>
				</div>
				<div class="form-c 	ontrol-cms">
					<label for="exampleFormControlTextarea1">Content</label>
					<textarea name="w3review" rows="4" cols="50" id="ec_content"></textarea>
					<small>Error message</small>
				</div>
				<button type="button" onclick="checkInputs()"
					class="button-editprofile">Submit Button</button>
				<button type="button" onclick="resetFunction()"
					class="button-editprofile">Reset Button</button>
			</form>
		</div>
	</div>
</div>