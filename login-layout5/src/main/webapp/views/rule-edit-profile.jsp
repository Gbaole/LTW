<script>
			
			const ep_firstname = document.getElementById('ep_firstname')
			const ep_lastname = document.getElementById('ep_lastname')
			const ep_phone = document.getElementById('ep_phone')

			function checkInputs() {
				// trim to remove the whitespaces
				const ep_firstnameValue = ep_firstname.value.trim()
				const ep_lastnameValue = ep_lastname.value.trim()
				const ep_phoneValue = ep_phone.value.trim()

				if(ep_firstnameValue === '') {
					setErrorFor(ep_firstname, 'First Name cannot be blank');
				} else if (ep_firstnameValue.length < 3) {
                	setErrorFor(ep_firstname, 'More than 3 characters');
            	} else if (ep_firstnameValue.length > 30) {
                	setErrorFor(ep_firstname, 'No more than 30 characters');
				} else {
					setSuccessFor(ep_firstname);
				}

				if(ep_lastnameValue === '') {
					setErrorFor(ep_lastname, 'Last Name cannot be blank');
				} else if (ep_lastnameValue.length < 3) {
                	setErrorFor(ep_lastname, 'More than 3 characters');
            	} else if (ep_lastnameValue.length > 30) {
                	setErrorFor(ep_lastname, 'No more than 30 characters');
				} else {
					setSuccessFor(ep_lastname);
				}

				if(ep_phoneValue === '') {
					setErrorFor(ep_phone, 'Phone cannot be blank');
				} else if (ep_phoneValue.length < 9) {
                	setErrorFor(ep_phone, 'More than 9 characters');
            	} else if (ep_phoneValue.length > 30) {
                	setErrorFor(ep_phone, 'No more than 30 characters');
				} else {
					setSuccessFor(ep_phone);
				}
			}
			function resetFunction() {
  				document.getElementById("myForm").reset();
				setNormalFor(ep_firstname);
				setNormalFor(ep_lastname);
				setNormalFor(ep_phone);
			}
			function setErrorFor(input, message) {
				const formControl = input.parentElement;
				const small = formControl.querySelector('small');
				formControl.className = 'form-control-cms error';
				small.innerText = message;
			}
	
			function setSuccessFor(input) {
				const formControl = input.parentElement;
				formControl.className = 'form-control-cms success';
			}
			
			function setNormalFor(input) {
				const formControl = input.parentElement;
				formControl.className = 'form-control-cms';
			}
		</script>