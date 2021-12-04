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
    