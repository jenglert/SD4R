// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
	$("input:submit,").button();
})

function selectACity() {
	var city = $('#city').val();
	window.location.href='/users/new?city_id=' + city
}

function hideShowEmailFocus(element, expectedValue) {
	if(element.value.indexOf(expectedValue) != -1) {
	 element.value = '';
	}
}

function hideShowEmailBlur(element, expectedValue) {
	if(element.value == '') { 
		element.value = expectedValue; 
	}	
}



