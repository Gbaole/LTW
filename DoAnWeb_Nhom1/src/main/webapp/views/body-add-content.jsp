<div class="main-container">
	<div class="card">
		<h2>Add Content</h2>
		<hr>
	</div>
	<div class="card">
		<div class="viewcontentlist">
			<h4>Content Form Elements</h4>
			<form id="myForm" action="add-content" method="post" onsubmit="return checkInputs()">
				<div class="form-control-cms">
					<label for="formGroupExampleInput">Title</label> <input type="text" name="Title"
						placeholder="Enter the title" id="ec_title" /> <small>Error
						message</small>
				</div>
				<div class="form-control-cms">
					<label for="exampleFormControlTextarea1">Brief</label>
					<textarea name="Brief" rows="4" cols="50" id="ec_brief" ></textarea>
					<small>Error message</small>
				</div>
				<div class="form-control-cms">
					<label for="exampleFormControlTextarea1">Content</label>
					<textarea name="Content" rows="4" cols="50" id="ec_content"></textarea>
					<small>Error message</small>
				</div>
				<button type="submit"
					class="button-editprofile">Submit Button</button>
				<button type="reset" onclick="resetFunction()"
					class="button-editprofile">Reset Button</button>
			</form>
		</div>
	</div>
</div>