$(function () {
	$('.userDetail').hover(function() {
		var id = this.id.substring(10);
		
		$('#userDetailPopup').load('/admin/users/show_popup/' + id)
		$('#userDetailPopup').show();
	},
	function() {
		$('#userDetailPopup').hide();
	});
	
	$('.userDetail').click(function() {
		var id = this.id.substring(10);
		window.location = '/admin/users/show/' + id;
	});
});