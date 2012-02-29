// Adds the ability to determine if an element of the DOM is active.
jQuery.extend(jQuery.expr[':'], {
	focus: function(element) {
		return element == document.activeElement;
	}
});

$(document).ready(function() {
	$("input:submit,").button();
	
 	setTimeout('hideFlashNotice()', 10000);

	$('a#eventInAreaAdLink').fancybox( { 
		overlayShow: 0.2,
		transitionIn: 'fade',
		padding: 20
	});
	setTimeout('showEventInAreaAd()', 500);
});

function showEventInAreaAd() {
	$('a#eventInAreaAdLink').trigger('click');
}


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

function populateNeighborhoods(cityId, object_name, show_label) {
	if (object_name) {
		$('#neiborhoodDropdown').load('/helper/neighborhoods?city_id=' + cityId + '&object_name=' + object_name + '&show_label=' + show_label);
	}
	else {
		$('#neiborhoodDropdown').load('/helper/neighborhoods?city_id=' + cityId + '&show_label=' + show_label);
	}
}

function hideFlashNotice() {
	$('.flashNotice').slideUp();
}

function submitUserLeadForm() {
	$.ajax({
			dataType: 'script',
			data: $('#new_user_lead').serialize(),
			url: '/landing_pages/submit_user_lead'
		});
		
		return false;
}
