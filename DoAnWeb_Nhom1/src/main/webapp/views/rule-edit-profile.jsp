<script>
	const ep_firstname = document.getElementById('ep_firstname')
	const ep_lastname = document.getElementById('ep_lastname')
	const ep_phone = document.getElementById('ep_phone')
	const ep_discription = document.getElementById('ep_discription')

	function checkInputs() {
		// trim to remove the whitespaces
		const ep_firstnameValue = ep_firstname.value.trim()
		const ep_lastnameValue = ep_lastname.value.trim()
		const ep_phoneValue = ep_phone.value.trim()
		const ep_discriptionValue = ep_phone.value.trim()

		var check = 0

		if (ep_firstnameValue === '') {
			setErrorFor(ep_firstname, 'First Name cannot be blank');
			status_fn = 0;
		} else if (ep_firstnameValue.length < 3) {
			setErrorFor(ep_firstname, 'More than 3 characters');
			status_fn = 0;
		} else if (ep_firstnameValue.length > 30) {
			setErrorFor(ep_firstname, 'No more than 30 characters');
			status_fn = 0;
		} else {
			setSuccessFor(ep_firstname);
			check++;
		}

		if (ep_lastnameValue === '') {
			setErrorFor(ep_lastname, 'Last Name cannot be blank');
			status_ls = 0;
		} else if (ep_lastnameValue.length < 3) {
			setErrorFor(ep_lastname, 'More than 3 characters');
			status_ls = 0;
		} else if (ep_lastnameValue.length > 30) {
			setErrorFor(ep_lastname, 'No more than 30 characters');
			status_ls = 0;
		} else {
			setSuccessFor(ep_lastname);
			check++;
		}

		if (ep_phoneValue === '') {
			setErrorFor(ep_phone, 'Phone cannot be blank');
			status_phone = 0;
		} else if (ep_phoneValue.length < 9) {
			setErrorFor(ep_phone, 'More than 9 characters');
			status_phone = 0;
		} else if (ep_phoneValue.length > 13) {
			setErrorFor(ep_phone, 'No more than 13 characters');
			status_phone = 0;
		} else {
			setSuccessFor(ep_phone);
			check++;
		}

		if (ep_discriptionValue.length > 200) {
			setErrorFor(ep_discription, 'No more than 200 characters');
			status_ds = 0;
		} else {
			setSuccessFor(ep_discription);
			if(check === 3) 
				document.getElementById('submit-btn').type = "submit";
		}
	}
	function resetFunction() {
		document.getElementById("myForm").reset();
		setNormalFor(ep_firstname);
		setNormalFor(ep_lastname);
		setNormalFor(ep_phone);
		setNormalFor(ep_discription);
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