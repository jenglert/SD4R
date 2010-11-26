
Admin = {};

Admin.removeLandingPage = function(id) {
	$.getScript("/admin/landing_pages/delete_json/" + id);
}

$(function () {
	$('.userDetail').hover(function() {
		var id = this.id.substring(10);
		$('#userDetailPopup').html("Loading");
		$('#userDetailPopup').load('/admin/users/show_popup/' + id);
		$('#userDetailPopup').show();
	},
	function() {
		$('#userDetailPopup').hide();
	});
	
	$('.userDetail').click(function() {
		var id = this.id.substring(10);
		window.location = '/admin/users/show/' + id;
	});
	
	$('.ui-icon').hover(function() {
		$(this).addClass("ui-state-hover");
	}, 
	function() {
		$(this).removeClass("ui-state-hover");		
	});
});

function populateNeighborhoods(cityId, object_name) {
	$('#neiborhoodDropdown').load('/helper/neighborhoods?city_id=' + cityId + '&object_name=' + object_name + '&show_title=true');
}