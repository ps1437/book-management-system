function switchTab(tabName) {
	if ("register" == tabName) {
		document.getElementById('login').style.display = 'none';
		document.getElementById('regis').style.display = '';

	} else {
		document.getElementById('login').style.display = '';
		document.getElementById('regis').style.display = 'none';

	}

}

function checkPwd() {
	if (document.getElementById('lpassword').value != document
			.getElementById('cpassword').value) {

		alert("Password and Confirm password are not same");
		return false;
	}
}

function searchCaterogy() {
	document.getElementById('method').value = 'search';
}
function tab(tabName) {
	if ("admin" === tabName) {
		document.getElementById('adminView').style.display = '';
		document.getElementById('booksContainer').style.display = 'none';

	} else {
		document.getElementById('adminView').style.display = 'none';
		document.getElementById('booksContainer').style.display = '';

	}

}

function addToCart() {
	document.getElementById('method').value = 'addToCart';
	document.form[0].submit();
}