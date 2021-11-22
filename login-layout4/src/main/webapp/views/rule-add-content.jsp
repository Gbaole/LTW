<script>
			const ec_title = document.getElementById('ec_title');
			const ec_brief = document.getElementById('ec_brief');
			const ec_content = document.getElementById('ec_content');
			function checkInputs() {
				const ec_titleValue = ec_title.value.trim();
				const ec_briefValue = ec_brief.value;
				const ec_contentValue = ec_content.value;
				// trim to remove the whitespaces

				if(ec_titleValue === '') {
					setErrorFor(ec_title, 'Title cannot be blank');
				} else if (ec_titleValue.length < 10) {
					setErrorFor(ec_title, 'More than 10 characters');
				} else if (ec_titleValue.length > 200) {
					setErrorFor(ec_title, 'No more than 200 characters');
				} else {
					setSuccessFor(ec_title);
				}
				
				if(ec_briefValue === '') {
					setErrorFor_TA("ec_brief", 'Brief cannot be blank');
				} else if (ec_briefValue.length <30) {
					setErrorFor_TA("ec_brief",'More than 30 characters');
				} else if (ec_briefValue.length > 150) {
					setErrorFor_TA("ec_brief",'No more than 150 characters');
				} else {
					setSuccessFor_TA("ec_brief");
				}

				if(ec_contentValue === '') {
					setErrorFor_TA("ec_content", 'Content cannot be blank');
				} else if (ec_contentValue.length <50) {
					setErrorFor_TA("ec_content",'More than 50 characters');
				} else if (ec_contentValue.length > 1000) {
					setErrorFor_TA("ec_content",'No more than 1000 characters');
				} else {
					setSuccessFor_TA("ec_content");
				}
			}
			function resetFunction() {
  				document.getElementById("myForm").reset();
				setNormalFor(ec_title);
				setNormalFor_TA("ec_brief");
				setNormalFor_TA("ec_content");
			}
			function setErrorFor(input, message) {
				const formControl = input.parentElement;
				const small = formControl.querySelector('small');
				formControl.className = 'form-control-cms error';
				small.innerText = message;
			}
			function setErrorFor_TA(ID, message) {
				const formControl = document.getElementById(ID).parentElement;
				const small = formControl.querySelector('small');
				formControl.className = 'form-control-cms error';
				small.innerText = message;
			}
			function setSuccessFor_TA(ID) {
				const formControl = document.getElementById(ID).parentElement;
				formControl.className = 'form-control-cms success';
			}
			function setSuccessFor(input) {
				const formControl = input.parentElement;
				formControl.className = 'form-control-cms success';
			}
			
			function setNormalFor(input) {
				const formControl = input.parentElement;
				formControl.className = 'form-control-cms';
			}
			function setNormalFor_TA(ID) {
				const formControl = document.getElementById(ID).parentElement;
				formControl.className = 'form-control-cms';
			}
		</script>